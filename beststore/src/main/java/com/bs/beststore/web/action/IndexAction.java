package com.bs.beststore.web.action;

import java.io.PrintWriter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.util.AccountValidatorUtil;
import com.bs.beststore.util.CodeUtil;
import com.bs.beststore.util.MailUtil;
import com.bs.beststore.util.SmsUtil;

/**
 * jsp页面的静态跳转
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
	

	@RequestMapping("code.do")
	public void code(String email, PrintWriter out) {
		CodeUtil cu = new CodeUtil(email);
		// 生成激活码
		String code = cu.generateUniqueCode();
		// 通过线程的方式给用户发送一封邮件
		if(AccountValidatorUtil.isEmail(email)) {
			new Thread(new MailUtil(email, code)).start();
		} else if(AccountValidatorUtil.isMobile(email)){
			new Thread(new SmsUtil(email, code)).start();
		} else {
			out.print("手机/邮箱输入错误，请重新输入！");
		}
		out.print("OK"); 
	}
	
	@RequestMapping("welcomePage.do")
	// 个人主页
	public String welcomePage() {
		return "welcome";
	}
		
}
