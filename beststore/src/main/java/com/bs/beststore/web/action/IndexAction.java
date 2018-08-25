package com.bs.beststore.web.action;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.util.AccountValidatorUtil;
import com.bs.beststore.util.CodeUtil;
import com.bs.beststore.util.MD5Util;
import com.bs.beststore.util.MailUtil;
import com.bs.beststore.util.SmsUtil;
import com.bs.beststore.vo.Human;

/**
 * jsp页面的静态跳转
 */
@Controller
public class IndexAction {
	
	@Resource
	private HumanBiz humanBiz;

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
	public String welcomePage(HttpSession session) {
		if(session.getAttribute("loginHuman") == null) {
			return "login";
		}
		return "welcome";
	}
	
	@RequestMapping("userModifyPwdPage.do")
	// 修改密码页面
	public String userModifyPwdPage(HttpSession session) {
		if(session.getAttribute("loginHuman") == null) {
			return "login";
		}
		return "userModifyPwd";
	}
		
	
	@RequestMapping("userModifyPwdStep.do")
	// 修改密码页面
	public String userModifyPwdStep1() {
		return "userModifyPwdStep1";
	}
	
	@RequestMapping("checkPwd.do")
	// 检查原密码是否正确
	public void checkPwd(Human human, PrintWriter out, HttpSession session) {
		Human loginHuman = (Human) session.getAttribute("loginHuman");
		if(loginHuman.getHpwd().equals(MD5Util.MD5(loginHuman.getHname() + human.getHpwd()))) {
			out.print("OK");
		} else if(human.getHpwd() == null){
			out.print("密码不能为空");
		} else {
			out.print("密码输入错误");
		}
	}
	
	@RequestMapping("userModifyPwdStep2.do")
	// 修改密码页面
	public String userModifyPwdStep2() {
		return "userModifyPwdStep2";
	}
	
	@RequestMapping("changePwd.do")
	// 修改密码
	public void changePwd(Human human, PrintWriter out, HttpSession session) {
		Human loginHuman = (Human) session.getAttribute("loginHuman");
		try {
			if(humanBiz.changePwd(loginHuman, human.getHpwd()) == 1) {
				out.print("OK");
			} else if(human.getHpwd() == null){
				out.print("密码不能为空");
			} else {
				out.print("密码输入错误");
			}
		} catch (BizException e) {
			out.print(e.getMessage());
		}
		
	}
	
	@RequestMapping("userModifyPwdStep3.do")
	// 修改密码页面
	public String userModifyPwdStep3() {
		return "userModifyPwdStep3";
	}
	
}
