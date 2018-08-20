package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogAction {

	@RequestMapping(value="blogPage.do")
	public String blogPage(){
		return "blog-page";
	}
	
}
