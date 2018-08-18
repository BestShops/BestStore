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
	 * 从页面获取到用户名、密码、验证码，进行验证
	 * @param human	用户名和密码
	 * @param code	验证码
	 * @param out	返回给ajax的数据
	 * @param session	将登录成功的登陆者信息存入到session中
	 */
	@RequestMapping(value="login")
	public void login(Human human, String code, PrintWriter out, HttpSession session) {
		
	}

}
