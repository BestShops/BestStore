package com.bs.beststore.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.util.AccountValidatorUtil;
import com.bs.beststore.util.CodeUtil;
import com.bs.beststore.util.MailUtil;
import com.bs.beststore.util.SmsUtil;
import com.bs.beststore.util.VerifyCodeUtil;

/**
 * jsp页面的静态跳转
 */
@Controller
public class IndexAction {

	// 超级管理员登录界面
	@RequestMapping(path = "superLoginPage.todo")
	public String superLoginPage() {
		return "superback/backIndex";
	}

	// 超级管理员主界面
	@RequestMapping(path = "superManagePage.todo")
	public String superManagePage(HttpSession session) {
		if(session.getAttribute("superHuman")==null) {
			return "redirect:/superLoginPage.todo";
		}
		return "superback/superManage";
	}

	// 超级管理员管理所有店铺信息页面 
	@RequestMapping(path = "manageStorePage.do")
	public String manageStorePage() {
		return "superback/manageStore";
	}

	// 超级管理员管理所有商品分类
	@RequestMapping(path = "goodsTypeManagePage.do")
	public String goodsTypeManagePage() {
		return "superback/goodsTypeManage";
	}

	// 超级管理员审核商品
	@RequestMapping(path = "blogExaminePage.do")
	public String blogExaminePage() {
		return "superback/blogExamine";
	}

	// 超级管理员审核博客
	@RequestMapping(path = "goodsExaminePage.do")
	public String goodsExaminePage() {
		return "superback/goodsExamine";
	}


	@RequestMapping(path = { "/", "index" })
	// 主页
	public String index() {
		return "index";
	}

	// 登录界面
	@RequestMapping(value = "userLoginPage.do")
	public String userLoginPage() {
		return "login";
	}

	// 注册界面
	@RequestMapping(value = "userRegisterPage.do")
	public String userRegisterPage() {
		return "login";
	}

	// 忘记密码界面
	@RequestMapping(value = "resetpwdPage.do")
	public String resetpwdPage() {
		return "login";
	}

	@RequestMapping(value = "aboutUsPage.do")
	public String aboutUsPage() {
		return "aboutUs";
	}

	// u袋学堂界面
	@RequestMapping(path = "classRoomPage.do")
	public String classRoomPage() {
		return "classRoom";
	}

	@RequestMapping("userInfoPage.do")
	// 个人信息
	public String userInfoPage() {
		return "userInfo";
	}

	// 后台店铺管理主界面
	@RequestMapping(path = "backPage.todo")
	public String backPage() {
		return "back/backIndex";
	}

	//优惠券
	@RequestMapping(value = "couponPage.do")
	public String couponPage() {
		return "coupon";
	}

	//用户退出
	@RequestMapping(value = "userLogout.do")
	public String userLogout(HttpSession session) {
		session.removeAttribute("loginHuman");
		return "login";
	}

	//超级管理员退出
	@RequestMapping(value = "superLogout.do")
	public String superLogout(HttpSession session) {
		session.removeAttribute("superHuman");
		return "redirect:/superLoginPage.todo";
	}

	//后台店铺管理主界面
	@RequestMapping(path = "backStoreManagePage.todo")
	public String backStoreManagePage(HttpSession session) {
		if(session.getAttribute("storeHuman")==null) {
			return "redirect:/backPage.todo";
		}
		return "back/backStoreManage";
	}

	// 后台店铺信息管理界面
	@RequestMapping(value = "storeInfoPage.do")
	public String storeInfoPage() {
		return "back/storeInfo";
	}

	// 后台店铺商品管理界面
	@RequestMapping(value = "goodsManagePage.do")
	public String goodsManagePage() {
		return "back/goodsManage";
	}

	// 后台店铺商品核实情况界面
	@RequestMapping(value = "goodsVerifyPage.do")
	public String goodsVerifyPage() {
		return "back/goodsVerify";
	}

	// 后台店铺商品核实情况界面
	@RequestMapping(value = "blogManagePage.do")
	public String blogManagePage() {
		return "back/blogManage";
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
	// 修改密码成功页面
	public String userModifyPwdStep3(HttpSession session) {
		session.removeAttribute("loginHuman");
		return "userModifyPwdStep3";
	}

	// 开店页
	@RequestMapping("openStorePage.do")
	public String openStorePage() {
		return "openStore";
	}

	// 开店信息
	@RequestMapping(value = "openStoreStep2Page.do")
	public String openStoreStep2Page() {
		return "openStoreStep2";
	}

	@RequestMapping(value = "storeManagePage.do")
	public String storeManagePage() {
		return "storeManage";
	}

	@RequestMapping(value = "storeLogout.do")
	public String storeLogout(HttpSession session) {
		session.removeAttribute("storeHuman");
		return "back/backIndex";
	}

	// 验证码
	@RequestMapping(value = "verifyCode.todo")
	public void verifyCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 定义图片大小
		int w = 200, h = 80;
		// 随机生成验证码
		String verifyCode = VerifyCodeUtil.generateVerifyCode(4);
		// 将验证码添加到会话中，注意：在会话中保存的验证码的名称 vscode
		request.getSession().setAttribute("vscode", verifyCode);
		// 图形写给浏览器
		response.setContentType("image/jpeg");
		// 发头控制浏览器不要缓存
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		// 输出图片
		VerifyCodeUtil.outputImage(w, h, response.getOutputStream(), verifyCode);
	}

	@RequestMapping("code.todo")
	// 发送邮件
	public void code(String email, PrintWriter out) {
		CodeUtil cu = new CodeUtil(email);
		// 生成激活码
		String code = cu.generateUniqueCode();
		// 通过线程的方式给用户发送一封邮件或短信
		if (AccountValidatorUtil.isEmail(email)) {
			new Thread(new MailUtil(email, code)).start();
		} else if (AccountValidatorUtil.isMobile(email)) {
			new Thread(new SmsUtil(email, code)).start();
		} else {
			out.print("手机/邮箱输入错误，请重新输入！");
		}
		out.print("OK");
	}

}
