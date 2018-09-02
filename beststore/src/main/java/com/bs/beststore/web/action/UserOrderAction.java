package com.bs.beststore.web.action;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.DiscussBiz;
import com.bs.beststore.biz.OrdersBiz;
import com.bs.beststore.biz.OrdersReturnBiz;
import com.bs.beststore.biz.OrdersdetailBiz;
import com.bs.beststore.vo.Discuss;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.Orders;
import com.bs.beststore.vo.Ordersreturn;

@Controller
public class UserOrderAction {
	
	@Resource
	private OrdersBiz ordersBiz;
	
	@Resource
	private OrdersdetailBiz ordersdetailBiz;
	
	@Resource
	private OrdersReturnBiz ordersReturnBiz;
	
	@Resource
	private DiscussBiz discussBiz;
	
	// 添加一条退款记录
	@RequestMapping("addOrdersReturn.do")
	public String addOrdersReturn(@RequestParam("file") MultipartFile file, 
			HttpSession session, Ordersreturn ordersreturn) throws IOException {
		// 上传图片
		if (!file.isEmpty()) {
			// 图片路径长度过长就处理
	        String fileName = file.getOriginalFilename();
	        if (fileName.length()>15) {
	        	fileName = fileName.substring(fileName.length()-15, fileName.length());
	        }
	        fileName = (new Date()).getTime() + fileName;// 加上随机数，避免覆盖
			String diskPath = session.getServletContext().getRealPath("/upload");
	        File f = new File(diskPath + File.separator + fileName);
	        if(!f.exists()){  
	            f.mkdirs();  
	        } 
	        file.transferTo(f);
	        ordersreturn.setOrphoto(fileName);
		}
		try {
			// 添加一条退货记录
			int index = ordersReturnBiz.addOrderReturn(ordersreturn);
			// 修改订单的成交时间，设置为退货的时间，同时，将该订单设置为移除状态
			Orders orders = new Orders();
			orders.setOid(ordersreturn.getOid());
			orders.setOstatus(5);
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			orders.setOdealtime(format.parse(format.format(new Date())));
			ordersBiz.updateOrders(orders);
			if (index == 1) {
				// 清空错误信息
				session.setAttribute("errorInfo", new Ordersreturn());
				session.setAttribute("errorOrderReturn", "");
				return "redirect:/userOrderRefundPage.do?pageNo=1";
			} else {
				// 添加失败
				session.setAttribute("errorInfo", ordersreturn);
				session.setAttribute("errorOrderReturn", "申请退款失败，请重试");
				return "redirect:/userOrderReturn.do?oid=" + ordersreturn.getOid();
			}
		} catch (BizException | ParseException e) {
			// 信息不完整
			session.setAttribute("errorInfo", ordersreturn);
			session.setAttribute("errorOrderReturn", e.getMessage());
			return "redirect:/userOrderReturn.do?oid=" + ordersreturn.getOid();
		}
	}
	
	// 申请退货页面
	@RequestMapping("userOrderReturn.do")
	public String userOrderReturn(int oid, Model model) {
		model.addAttribute("order", ordersBiz.findInfoByOid(oid).get(0));
		return "userOrderReturn";
	}
	
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
			out.print("OK");
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
		// 如果最大的页面数小于当前页面数
		if (count < pageNo && count != 0) {
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
	
	// 退货退款
	@RequestMapping(path = "userOrderRefundPage.do")
	public String userOrderRefundPage(int pageNo,int type, Model model, HttpSession session) {
		Human human = (Human) session.getAttribute("loginHuman");
		int count = ordersReturnBiz.getCount(human.getHid(), type);
		
		// 如果最大的页面数小于当前页面数
		if (count < pageNo && count > 0) {
			pageNo --;
		}
		
		int[] counts = new int[2];
		for (int i = 0; i < 2; i++) {
			counts[i] = ordersReturnBiz.getCount(human.getHid(), i);
			System.out.println(counts[i]);
		}
		model.addAttribute("counts", counts);
		model.addAttribute("orderlist", ordersReturnBiz.findAll(pageNo, human.getHid(), type));
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("type", type);
		model.addAttribute("count", count);
		return "userOrderRefund";
	}
	
	// 取消退款
	@RequestMapping("delReturn.do")
	public void delReturn(Ordersreturn ordersreturn, PrintWriter out) {
		// 删除，修改退款进度为2，设为移除
		ordersReturnBiz.delReturn(ordersreturn);
		// 修改订单表付款状态为2待收货
		Orders orders = new Orders();
		orders.setOid(ordersreturn.getOid());
		orders.setOstatus(2);
		ordersBiz.updateOrders(orders);
		out.print("取消退款成功，已经把该订单放回到您的订单中心");
	}
	
	// 商品评价
	@RequestMapping("userOrderEvaluate.do")
	public String  userOrderEvaluate(int gid, int oid, int odid, Model model) {
		model.addAttribute("Info", discussBiz.findInfoByGid(gid).get(0));// 商品信息
		model.addAttribute("count", discussBiz.getCountByGid(gid));// 商品销量
		model.addAttribute("goodNum", discussBiz.getGoodByGid(gid));// 商品好评率
		model.addAttribute("oid", oid);// 商品当前的订单id，用于添加商品评价时，检索订单是否已经全部评价完
		model.addAttribute("odid", odid);// 用于修改订单详情的状态
		return "userOrderEvaluate";
	}
	
	// 添加商品评价
	@RequestMapping("addDiscuss.do")
	public void addDiscuss(@RequestParam("file") MultipartFile[] fileArray, 
			Discuss discuss, int oid, int odid, PrintWriter out, HttpSession session) throws IllegalStateException, IOException {
		String files = "";
		for(int i=0;i<fileArray.length;i++) {
			MultipartFile file = fileArray[i];
			if (!file.isEmpty()) {
				// 图片路径长度过长就处理
		        String fileName = file.getOriginalFilename();
		        if (fileName.length()>6) {
		        	fileName = fileName.substring(fileName.length()-6, fileName.length());
		        }
		        fileName = (new Date()).getTime() + fileName;// 加上随机数，避免覆盖
				String diskPath = session.getServletContext().getRealPath("/upload");
		        File f = new File(diskPath + File.separator + fileName);
		        if(!f.exists()){  
		            f.mkdirs();  
		        } 
		        file.transferTo(f);
		        files +=  "," + fileName;
			}
		}
		Human human = (Human) session.getAttribute("loginHuman");
		discuss.setHid(human.getHid());
		discuss.setDphoto(files);
		int result = discussBiz.addDiscuss(discuss);
		if (result == 1) {
			// TODO：在添加成功后，修改订单详情表的状态，同时判断当前订单下是否所有的商品都已经评价完成，完成后就修改订单状态为评价完成
			ordersdetailBiz.modefiyStatus(odid);
			if (ordersdetailBiz.checkOrderStatus(oid)) {
				// 修改订单状态
				Orders orders = new Orders();
				orders.setOid(oid);
				orders.setOstatus(4);
				ordersBiz.updateOrders(orders);
			}
			out.print(1);
		} else {
			out.print("图片上传失败，请稍后重试");
		}
	}
	
}
