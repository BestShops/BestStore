package com.bs.beststore.web.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.util.CodeUtil;
import com.bs.beststore.vo.Human;

@Controller
public class HumanAction {

	@Resource
	private HumanBiz humanBiz;

	/**
	 * 从页面获取到用户名、密码、验证码，验证三个信息的完整性（js或java均可） 先验证验证码是否正确，然后再开始验证用户名和密码是否正确
	 * 
	 * @param human   用户名和密码
	 * @param code    验证码
	 * @param out     返回给ajax的数据
	 * @param session 将登录成功的登陆者信息存入到session中的loginHuman(可读取完整数据)
	 */
	@RequestMapping(value = "login.do")
	public void login(Human human, PrintWriter out, HttpSession session) {
		// 进行登录操作
		Human loginHuman;
		try {
			loginHuman = humanBiz.login(human);
			session.setAttribute("loginHuman", loginHuman);// 将登录成功的用户信息存入到session中
			out.print("OK");
		} catch (BizException e) {
			out.print(e.getMessage());
		}
		
	}
	
	
	/**
	 * 从页面获取到用户名、密码、性别等，验证码，用户等级 验证信息的完整性，必需包含用户名、密码、性别，其他的可以没有（js或java均可）
	 * 先验证验证码是否正确，然后再开始注册，注意，记得手动添加等级
	 * 
	 * @param human   用户名、密码、性别等
	 * @param code    验证码
	 * @param out     返回给ajax的数据
	 * @param session 将登录成功的登陆者的用户名存入session中hname
	 */
	@RequestMapping("register.do")
	public void register(Human human, String code, PrintWriter out, HttpSession session) {
		human.setHlimit(0);
		ArrayList<String> list = CodeUtil.VerificationCode;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).substring(0, 4).equals(code) 
					|| list.get(i).endsWith(human.getHemail())) {
				humanBiz.register(human);
				session.setAttribute("hname", human.getHname());// 将登录成功的用户信息存入到session中
				out.print("OK");
			} else {
				out.print("验证码错误，请重新输入");
			}
		}
	}

	/**
	 * 找回密码，用户通过邮箱或手机得到验证码后，输入用户名和新的密码后根据用户名修改密码
	 * 
	 * @param human   用户名和新的密码
	 * @param code    这个验证码是通过邮箱或者手机获取到的(建议邮箱)
	 * @param out     返回给ajax的数据
	 * @param session 将登录成功的登陆者的用户名存入session中hname
	 */
	@RequestMapping(value = "findPwd.do")
	public void findPwd(Human human, String code, PrintWriter out, HttpSession session) {
		// 判断验证码是否正确
		boolean result = false;
		for (String s : CodeUtil.VerificationCode) {
			if (s.equals(code)) {// 验证码正确
				result = true;
			}
		}
		// 进行登录操作
		if (result) {
			int ret = humanBiz.findPwd(human);
			if (ret <= 0) {
				out.print("用户名错误");
			} else {
				session.setAttribute("hname", human.getHname());// 将用户名存入到session中
				out.println("OK");
			}
		} else {
			out.print("验证码错误，请重新输入");
		}
	}

}
