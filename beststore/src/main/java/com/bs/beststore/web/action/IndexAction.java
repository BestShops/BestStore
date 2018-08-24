package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * jsp页面的静态跳转
 *
 */
@Controller
public class IndexAction {
	
	@RequestMapping(path = {"/"})
	// 主页
	public String index() {
		return "index";
	}
	
	@RequestMapping("userLogin.do")
	// 跳转登录
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping("welcomePage.do")
	// 个人主页
	public String welcomePage() {
		return "welcome";
	}
		
}
