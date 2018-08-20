package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutUsAction {

	@RequestMapping(value="aboutUsPage.do")
	public String aboutUsPage(int page){
		return "about-us-"+page;
	}
}
