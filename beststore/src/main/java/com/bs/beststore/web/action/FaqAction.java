package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaqAction {

	@RequestMapping(value="faqPage.do")
	public String faqPage(){
		return "faq";
	}
}
