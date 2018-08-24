package com.bs.beststore.web.action;

import java.io.PrintWriter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.vo.Address;

@Controller
public class AddressAction {
	
	@RequestMapping("addAddress.do")
	// 添加地址
	public void addAddress(Address address, PrintWriter out) {
		
	}
	
	@RequestMapping("addressDefault.do")
	// 设为默认地址
	public void addressDefault() {
		
	}

}
