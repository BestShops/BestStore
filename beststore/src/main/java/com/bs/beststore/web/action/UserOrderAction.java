package com.bs.beststore.web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.OrdersBiz;
import com.bs.beststore.vo.Human;

@Controller
public class UserOrderAction {
	
	@Resource
	private OrdersBiz ordersBiz;

	// 展示当前用户所有的订单 type=10为所有
	@RequestMapping(value="userOrderPage.do")
	public String userOrderPage(int pageNo, int type, HttpSession session, Model model) {
		// 从session中获取用户id
		Human human = (Human) session.getAttribute("loginHuman");
		int[] counts = new int[5];
		for (int i = 0; i < 5; i++) {
			counts[i] = ordersBiz.getCount(human.getHid(), i);
		}
		model.addAttribute("counts", counts);
		model.addAttribute("orderlist", ordersBiz.findOrderByHid(human.getHid(), pageNo, type));
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("type", type);
		model.addAttribute("count", ordersBiz.getCount(human.getHid(), type));
		return "userOrder";
	}
	
	@RequestMapping(path = "userOrderDetailPage.do")
	public String userOrderDetailPage() {
		return "userOrderDetail";
	}
	
	@RequestMapping(path = "userOrderEvaluatePage.do")
	public String userOrderEvaluatePage() {
		return "userOrderEvaluate";
	}
	
	@RequestMapping(path = "userOrderReceiptedPage.do")
	public String userOrderReceiptedPage() {
		return "userOrderReceipted";
	}
	
	@RequestMapping(path = "userOrderRefundPage.do")
	public String userOrderRefundPage() {
		return "userOrderRefund";
	}
	
	@RequestMapping(path = "userOrderReturnPage.do")
	public String userOrderReturnPage() {
		return "userOrderReturn";
	}
	
	
	
	
}
