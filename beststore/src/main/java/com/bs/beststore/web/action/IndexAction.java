package com.bs.beststore.web.action;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.util.CodeUtil;
import com.bs.beststore.util.MailUtil;
import com.bs.beststore.vo.Human;

/**
 * jsp页面的静态跳转
 *
 */
@Controller
public class IndexAction {

	@Resource
	private HumanBiz hb;

	@RequestMapping(path = { "/", "index" })
	// 主页
	public String index() {
		return "index";
	}

	
	@RequestMapping("userLogin.do")
	// 跳转登录
	public String loginPage() {
		return "login";
	}

	@PostMapping("register.do")
	public String register(Human human, String code) {
		ArrayList<String> list = CodeUtil.VerificationCode;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).substring(0, 4).equals(code) 
					|| list.get(i).endsWith(human.getHemail())) {
				hb.register(human);
				return "OK";
			}
		}
		return "验证码输入错误！";
	}

	@PostMapping("email.do")
	public String email(@RequestParam("email") String email) {
		CodeUtil cu = new CodeUtil(email);
		// 生成激活码
		String code = cu.generateUniqueCode();
		// 通过线程的方式给用户发送一封邮件
		new Thread(new MailUtil(email, code)).start();
		return "OK";
	}
}
