package com.bs.beststore.web.action;

import java.io.PrintWriter;
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

	@RequestMapping("email.do")
	public void email(String email, PrintWriter out) {
		CodeUtil cu = new CodeUtil(email);
		// 生成激活码
		String code = cu.generateUniqueCode();
		// 通过线程的方式给用户发送一封邮件
		new Thread(new MailUtil(email, code)).start();
		out.print("OK"); 
	}
	
	@RequestMapping("welcomePage.do")
	// 个人主页
	public String welcomePage() {
		return "welcome";
	}
		
	@RequestMapping("addressPage.do")
	//	添加地址
	public String addressPage() {
		return "address";
	}
	
}
