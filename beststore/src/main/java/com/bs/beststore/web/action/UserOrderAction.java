package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserOrderAction {

	@RequestMapping(value="userOrderPage.do")
	public String userOrderPage() {
		return "userOrder";
	}
}
