package com.bs.beststore.web.action;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.vo.Human;

@Controller
public class HumanAction {
	
	@Resource
	private HumanBiz humanBiz;
	
	/**
	 * 从页面获取到用户名、密码、验证码，验证三个信息的完整性（js或java均可）
	 * 先验证验证码是否正确，然后再开始验证用户名和密码是否正确
	 * @param human	用户名和密码
	 * @param code	验证码
	 * @param out	返回给ajax的数据
	 * @param session	将登录成功的登陆者信息存入到session中的loginHuman(可读取完整数据)
	 */
	@RequestMapping(value="login.do")
	public String login(Human human, String code, PrintWriter out, HttpSession session) {
		return "index";
	}
	
	/**
	 * 从页面获取到用户名、密码、性别等，验证码，用户等级
	 * 验证信息的完整性，必需包含用户名、密码、性别，其他的可以没有（js或java均可）
	 * 先验证验证码是否正确，然后再开始注册，注意，记得手动添加等级
	 * @param human	用户名、密码、性别等
	 * @param code	验证码
	 * @param out	返回给ajax的数据
	 * @param session	将登录成功的登陆者的用户名存入session中hname
	 */
	@RequestMapping(value="register.do")
	public String regist(Human human, String code, PrintWriter out, HttpSession session) {
		return "register";
	}
	
	/**
	 * 找回密码，用户通过邮箱或手机得到验证码后，输入用户名和新的密码后根据用户名修改密码
	 * @param human	用户名和新的密码
	 * @param code	这个验证码是通过邮箱或者手机获取到的(建议邮箱)
	 * @param out	返回给ajax的数据
	 * @param session 将登录成功的登陆者的用户名存入session中hname
	 */
	@RequestMapping(value="findPwd.do")
	public void findPwd(Human human, String code, PrintWriter out, HttpSession session) {
		
	}

}
