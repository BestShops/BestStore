package com.bs.beststore.web.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(path = { "/", "index.do" })
	// 主页
	public String index() {
		return "index";
	}
	
	@RequestMapping("welcomePage.do")
	// 个人主页
	public String welcomePage() {
		return "welcome";
	}
	
	// 跳转登录
	@RequestMapping("userLogin.do")
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping("userInfoPage.do")
	// 个人信息
	public String userInfoPage() {
		return "userInfo";
	}
	
	@RequestMapping("registerStrore.do")
	// 开店
	public String registerStrore() {
		return "agent_level";
	}

	@RequestMapping(path = "backPage.do")
	// 后台商铺
	public String backPage() {
		return "back/storeManage";
	}
	
	@RequestMapping(value="couponPage.do")
	public String couponPage() {
		return "coupon";
	}
	
	@RequestMapping(value="userLogout.do")
	// 退出
	public String userLogout(HttpSession session) {
		session.removeAttribute("loginHuman");
		return "login";
	}

	@RequestMapping("code.do")
	// 发送邮件
	public void code(String email, PrintWriter out) {
		CodeUtil cu = new CodeUtil(email);
		// 生成激活码
		String code = cu.generateUniqueCode();
		// 通过线程的方式给用户发送一封邮件或短信
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
	public String welcomePage(HttpSession session, Model model) {
		if(session.getAttribute("loginHuman") == null) {
			return "login";
		}
		model.addAttribute("status", 0);
		return "welcome";
	}
	
	@RequestMapping("userModifyPwdPage.do")
	// 修改密码页面1
	public String userModifyPwdPage() {
		return "userModifyPwd";
	}
		
	@RequestMapping("userModifyPwdStep.do")
	// 修改密码页面2
	public String userModifyPwdStep1() {
		return "userModifyPwdStep1";
	}
	
	@RequestMapping("userModifyPwdStep2.do")
	// 修改密码页面3
	public String userModifyPwdStep2() {
		return "userModifyPwdStep2";
	}
	
	@RequestMapping("userModifyPwdStep3.do")
	// 修改密码页面4
	public String userModifyPwdStep3() {
		return "userModifyPwdStep3";
	}
	
}
