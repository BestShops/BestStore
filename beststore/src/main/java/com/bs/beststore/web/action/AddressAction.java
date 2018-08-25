package com.bs.beststore.web.action;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.AddressBiz;
import com.bs.beststore.vo.Address;
import com.bs.beststore.vo.Human;

@Controller
public class AddressAction {
	
	@Resource
	private AddressBiz addressBiz;
	
	@RequestMapping("addAddress.do")
	// 添加地址
	public void addAddress(Address address, PrintWriter out, HttpSession session) {
		Human human = (Human) session.getAttribute("loginHuman");
		address.setHid(human.getHid());
		int index = addressBiz.addAddress(address);
		if (index == 1) {
			out.print("OK");
		} else {
			out.print("信息填写错误，请验证后重新输入");
		}
	}
	
	@RequestMapping("addressDefault.do")
	// 设为默认地址
	public void addressDefault(Address address, HttpSession session, PrintWriter out, Model model) {
		int index = addressBiz.upDafault(address);
		if (index == 1) {
			// 修改成功后，更新addresslist
			Human human = (Human) session.getAttribute("loginHuman");
			model.addAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
			out.print("OK");
		} else {
			out.print("信息填写错误，请验证后重新输入");
		}
	}

	@RequestMapping("addressPage.do")
	//	查看所有的地址，同时跳转到我的地址页面
	public String addressPage(HttpSession session, Model model) {
		Human human = (Human) session.getAttribute("loginHuman");
		System.out.println(human.getHid());
		model.addAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
		return "address";
	}
}
