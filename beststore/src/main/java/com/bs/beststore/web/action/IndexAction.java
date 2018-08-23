package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * jsp页面的静态跳转
 */
@Controller
public class IndexAction {
	
	@RequestMapping(path = {"/","/index"})
	public String index() {
		return "index";
	}
	
	@RequestMapping(path = "classRoomPage.do")
	public String classRoomPage() {
		return "classRoom";
	}
	

}
