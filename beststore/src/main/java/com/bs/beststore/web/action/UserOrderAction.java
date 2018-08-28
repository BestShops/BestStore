package com.bs.beststore.web.action;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.OrdersBiz;
import com.bs.beststore.biz.OrdersdetailBiz;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.Orders;

@Controller
public class UserOrderAction {
	
	@Resource
	private OrdersBiz ordersBiz;
	
	@Resource
	private OrdersdetailBiz ordersdetailBiz;
	
	// 确认收货按钮
	@RequestMapping("confirm.do")
	public void confirm(int oid, PrintWriter out) {
		Orders orders = new Orders();
		orders.setOid(oid);
		orders.setOstatus(3);// 3代表待评价
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		try {
			date = format.parse(format.format(new Date()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		orders.setOdealtime(date);// 修改交易完成时间
		int index = ordersBiz.updateOrders(orders);
		if (index == 1) {
			out.print("订单完成");
		} else {
			out.print("订单修改失败");
		}
	}
	
	// 确认收货页面
	@RequestMapping("receiptedOrder.do")
	public String receiptedOrder(int oid, Model model) {
		// 订单信息
		List<Map<String, Object>> list = ordersdetailBiz.findOrderByOid(oid);
		model.addAttribute("info", list.get(0));
		// 订单中商品的信息
		List<Map<String, Object>> list1 = ordersdetailBiz.findDetailByOid(oid);
		model.addAttribute("odlist", list1);
		// 添加当前时间作为完成交易时间
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(new Date());
		model.addAttribute("time", time);
		return "userOrderReceipted";
	}
	
	// 删除未支付或者已完成的订单
	@RequestMapping("delOrder.do")
	public void delOrder(int oid, PrintWriter out) {
		Orders orders = new Orders();
		orders.setOid(oid);
		ordersBiz.deleteOrders(orders);
		out.print("订单已删除");
	}

	// 展示当前用户所有的订单 type=10为所有
	@RequestMapping(value="userOrderPage.do")
	public String userOrderPage(int pageNo, int type, HttpSession session, Model model) {
		// 从session中获取用户id
		Human human = (Human) session.getAttribute("loginHuman");
		int count = ordersBiz.getCount(human.getHid(), type);
		// 如果最大的页面数
		if (count < pageNo) {
			pageNo --;
		}
		int[] counts = new int[5];
		for (int i = 0; i < 5; i++) {
			counts[i] = ordersBiz.getCount(human.getHid(), i);
		}
		model.addAttribute("counts", counts);
		model.addAttribute("orderlist", ordersBiz.findOrderByHid(human.getHid(), pageNo, type));
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("type", type);
		model.addAttribute("count", count);
		return "userOrder";
	}
	
	// 展示订单的详情
	@RequestMapping(path = "userOrderDetailPage.do")
	public String userOrderDetailPage(int oid, Model model) {
		// 订单信息
		List<Map<String, Object>> list = ordersdetailBiz.findOrderByOid(oid);
		model.addAttribute("info", list.get(0));
		// 订单中商品的信息
		List<Map<String, Object>> list1 = ordersdetailBiz.findDetailByOid(oid);
		model.addAttribute("odlist", list1);
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
