package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartAction {

	@RequestMapping(value="shopCartPage.do")
	public String shopCartPage(){
		return "shopCart";
	}
	
	@RequestMapping(value="shopCartPayPage.do")
	public String shopCartPayPage(){
		return "shopCartPay";
	}
	
}
