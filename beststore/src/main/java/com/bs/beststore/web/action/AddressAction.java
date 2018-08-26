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
		address.setAid(null);
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
		addressBiz.upDafault(address);
		// 修改成功后，更新addresslist
		Human human = (Human) session.getAttribute("loginHuman");
		model.addAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
		out.print("OK");
	}
	
	@RequestMapping("delAddress.do")
	// 删除地址	直接刷新addresslist失败
	public void delAddress(Address address, HttpSession session, PrintWriter out, Model model) {
		Human human = (Human) session.getAttribute("loginHuman");
		addressBiz.removeAddress(address, human.getHid());
		out.print("OK");
	}

	@RequestMapping("addressPage.do")
	//	查看所有的地址，同时跳转到我的地址页面
	public String addressPage(HttpSession session, Model model) {
		Human human = (Human) session.getAttribute("loginHuman");
		System.out.println(human.getHid());
		model.addAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
		return "address";
	}
	
	@RequestMapping("modifyAddress.do")
	//	查看所有的地址，同时跳转到我的地址页面
	public void modifyAddress(Address address, PrintWriter out) {
		int index = addressBiz.updateAddress(address);
		if (index == 1) {
			out.print("OK");
		} else {
			out.print("信息填写错误，请验证后重新输入");
		}
	}
	
	@RequestMapping("addressById.do")
	// 返回具体的地址信息
	public String addressById(int aid, Model model, HttpSession session, PrintWriter out) {
		model.addAttribute("address", addressBiz.findByAid(aid));
		Human human = (Human) session.getAttribute("loginHuman");
		System.out.println(human.getHid());
		model.addAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
		return "address";
	}
}
