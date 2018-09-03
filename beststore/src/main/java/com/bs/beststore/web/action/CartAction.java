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

import com.bs.beststore.biz.AddressBiz;
import com.bs.beststore.biz.CartBiz;
import com.bs.beststore.biz.OrdersBiz;
import com.bs.beststore.biz.OrdersdetailBiz;
import com.bs.beststore.vo.Cart;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.Orders;
import com.bs.beststore.vo.Ordersdetail;

@Controller
/**
 * 
 * 因为购物车所关联的至少有用户和商品， 所以没执行增删改购物车商品操作的时候都要关联hid和gid
 * 
 * @author Administrator
 *
 */
public class CartAction {

	@Resource
	private CartBiz cartBiz;

	@Resource
	private AddressBiz addressBiz;

	@Resource
	private OrdersBiz ordersBiz;

	@Resource
	private OrdersdetailBiz ordersdetailBiz;

	// 跳转到购物车
	@RequestMapping(value = "shopCartPage.do")
	public String shopCartPage(HttpSession session, Integer page, Model model) {
		// 因为int和long型不能为null，Integer可以，所以进入前先判断是否为空
		// 如果为空，则默认他传入的页码为1，显示购物车第一页
		if (page == null) {
			page = 1;
		}
		Human human = (Human) session.getAttribute("loginHuman");
		// 根据Hid统计购物车条数
		long count = cartBiz.countByHid(human.getHid());
		session.setAttribute("cartCount", count); // 将购物车条数添加至session中，用于显示在页面中
		// 将页数传入
		model.addAttribute("page", count / 5);
		page = (page - 1) * 5;
		List<Map<String, Object>> list = cartBiz.findByhid(human.getHid(), page, 5);
		model.addAttribute("listCart", list);
		return "shopCart";
	}
	
	
	// 立即购买
	@RequestMapping(value = "buyNow.do")
	public String buyNow(HttpSession session, PrintWriter out, Orders orders, Ordersdetail ordersdetail, Model model) {
		Human human = (Human) session.getAttribute("loginHuman");
		// 传入收货地址列表
		model.addAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
		System.out.println("-----------" + ordersdetail.getNum() + "-----------" + ordersdetail.getGprice());
		orders.setOnowprice(ordersdetail.getNum() * ordersdetail.getGprice());
		orders.setHid(human.getHid());
		ordersBiz.addOrders(orders);
		// 查找订单号
		List<Map<String, Object>> newOrder = ordersBiz.findOrderByHid(human.getHid(), 1, -1);
		int oid = (int) newOrder.get(0).get("OID");
		System.out.println("---------------" + oid);
		// 将商品加入订单详情表
		ordersdetail.setOid(oid);
		ordersdetail.setOdstatus(0);
		ordersdetailBiz.addOrdersDetail(ordersdetail);
		List<Map<String, Object>> list = ordersdetailBiz.findOrdersDetail(ordersdetail);
		model.addAttribute("listCart", list);
		// 查找刚刚生成的订单，传入页面
		Orders od = ordersBiz.findByOid(oid);
		model.addAttribute("order", od);
		return "shopCartPay";
	}
	

	// 添加商品到购物车
	@RequestMapping(value = "addCart.do")
	public void addCart(Cart cart, HttpSession session, PrintWriter out) {
		Human human = (Human) session.getAttribute("loginHuman");
		// 根据session查找loginHuman中hid，将其设入cart里
		// 然后再对cart表进行insert，从而完成添加购物车功能
		cart.setHid(human.getHid());
		// 按照Gid和hid查找用户购物车是否已经存在该商品，如果不存在则添加，如果存在则加上相应的数量
		List<Cart> list = cartBiz.findByGidAndHid(cart);
		if (list.size() == 1) {
			cart.setCid(list.get(0).getCid());
			cart.setCnum(list.get(0).getCnum() + cart.getCnum());
			if (cartBiz.updateCartGoods(cart) == 1) {
				out.print("OK");
				return;
			}
		} else {
			if (cartBiz.addCartGoods(cart) == 1) {
				out.print("OK");
				return;
			}
		}
		out.print("添加购物车失败！");
	}

	// 删除购物车商品
	@RequestMapping(value = "delete.do")
	public void delect(Cart cart, HttpSession session, PrintWriter out) {
		Human human = (Human) session.getAttribute("loginHuman");
		cart.setHid(human.getHid());
		// 按照Gid和hid查找用户购物车是否已经存在该商品，如果不存在则添加，如果存在则加上相应的数量
		List<Cart> list = cartBiz.findByGidAndHid(cart);
		if (list.size() == 1) {
			cart.setCid(list.get(0).getCid());
			if (cartBiz.removeByCid(cart) == 1) {
				out.print("OK");
				return;
			}
		}
		out.print("删除商品失败！");
	}

	// 改变购物车数量
	@RequestMapping(value = "changeCartNum.do")
	public void changeCartNum(Cart cart, HttpSession session, PrintWriter out) {
		Human human = (Human) session.getAttribute("loginHuman");
		cart.setHid(human.getHid()); // cnum gid hid
		// 按照Gid和hid查找用户购物车是否已经存在该商品，则修改为相应的数量
		List<Cart> list = cartBiz.findByGidAndHid(cart);
		if (list.size() == 1) {
			cart.setCid(list.get(0).getCid());
			if (cartBiz.updateCartGoods(cart) == 1) {
				out.print("OK");
				return;
			}
		}
		out.print("修改数量失败！");
	}

	// 跳转到付款界面
	@RequestMapping(value = "shopCartPayPage.do")
	public String shopCartPayPage(Orders orders, HttpSession session, Model model) throws ParseException {
		// 传入收货地址列表
		Human human = (Human) session.getAttribute("loginHuman");
		model.addAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
		// 将购物车表添加到订单表，对表进行复制
		orders.setHid(human.getHid());
		ordersBiz.addOrders(orders);
		// 查找订单号
		List<Map<String, Object>> newOrder = ordersBiz.findOrderByHid(human.getHid(), 1, -1);
		int oid = (int) newOrder.get(0).get("OID");
		System.out.println("--------------" + oid);
		// 将购物车商品按订单号列入订单详情
		ordersdetailBiz.addOrdersDetailByCart(human.getHid(), oid);
		// 查找购物车，将购物车列表传入页面
		List<Map<String, Object>> list = cartBiz.findByhid(human.getHid(), 0, 100);
		model.addAttribute("listCart", list);
		// 查找刚刚生成的订单，传入页面
		Orders od = ordersBiz.findByOid(oid);
		model.addAttribute("order", od);
		return "shopCartPay";
	}

	@RequestMapping("pay.do")
	public String payPage(HttpSession session, Orders orders, Integer paymode, Model model, String ordertime) throws ParseException {
		Human human = (Human) session.getAttribute("loginHuman");
		// 删除购物车
		cartBiz.removeCartGoods(human.getHid());
		// 添加地址、订单状态
		orders.setOstatus(0);
		ordersBiz.updateOrders(orders);
		orders = ordersBiz.findByOid(orders.getOid());
		model.addAttribute("orders", orders);
		if(paymode == null ) {
			paymode = 1;
		}
		if (paymode == 1) {
			model.addAttribute("payPic", "aliPay.jpg");
		} else {
			model.addAttribute("payPic", "wePay.jpg");
		}
		return "pay";
	}

	@RequestMapping("payDone.do")
	public String payDonePage(Orders orders) throws ParseException {
		// 添加付款时间
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		orders.setOpaytime(df.parse(df.format(new Date())));
		orders.setOstatus(1);
		ordersBiz.updateOrders(orders);
		return "payDone";
	}
}
