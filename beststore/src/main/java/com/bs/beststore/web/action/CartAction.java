package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartAction {

	@RequestMapping(value="shopcartPage.do")
	public String shopcartPage(){
		return "shopcart";
	}
}
