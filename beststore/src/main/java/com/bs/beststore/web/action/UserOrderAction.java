package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserOrderAction {

	@RequestMapping(value="userOrderPage.do")
	public String userOrderPage() {
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
