package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddressAction {
	
	@RequestMapping(value="addressPage.do")
	public String addressPage() {
		return "address";
	}
}
