package com.bs.beststore.web.action;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.AddressBiz;
import com.bs.beststore.biz.CartBiz;
import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.biz.OrdersBiz;
import com.bs.beststore.biz.OrdersdetailBiz;
import com.bs.beststore.vo.Cart;
import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.Orders;
import com.bs.beststore.vo.Ordersdetail;
import com.google.gson.Gson;

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
	@Resource
	private GoodsBiz goodsBiz;

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
	public String buyNow(HttpServletRequest request, Ordersdetail ordersdetail,Orders orders,Goods goods) {
		ordersdetail.setNum(Integer.valueOf(request.getParameter("num")));
		Human human = (Human) request.getSession().getAttribute("loginHuman");
		request.setAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
		Goods goodsInfo=goodsBiz.findByGid(goods.getGid());
		orders.setOnowprice(goodsInfo.getGnowprice()*ordersdetail.getNum());
		orders.setOlastprice(goodsInfo.getGlastprice()*ordersdetail.getNum());
		orders.setHid(human.getHid());
		ordersBiz.addOrders(orders);
		ordersdetail.setOid(orders.getOid());
		ordersdetail.setOdstatus(0);
		ordersdetail.setGid(goods.getGid());
		ordersdetail.setGprice(goodsInfo.getGnowprice()*ordersdetail.getNum());
		ordersdetailBiz.addOrdersDetail(ordersdetail);
		List<Map<String, Object>> list = ordersdetailBiz.findOrdersDetail(ordersdetail);
		request.setAttribute("listCart", list);
		// 查找刚刚生成的订单，传入页面
		Orders od = ordersBiz.findByOid(orders.getOid());
		request.setAttribute("order", od);
		return "shopCartPay";
	}

	// 添加商品到购物车
	@RequestMapping(value = "addCart.do")
	public void addCart(Cart cart, HttpSession session, PrintWriter out) {
		Human human = (Human) session.getAttribute("loginHuman");
		HashMap<String, Object> map = new HashMap<String, Object>();
		if(human!=null) {
			cart.setHid(human.getHid());
			List<Cart> list = cartBiz.findByGidAndHid(cart);
			if (list.size() == 1) {// 购物车中已有该商品
				cart.setCid(list.get(0).getCid());
				cart.setCnum(list.get(0).getCnum() + cart.getCnum());
				if (cartBiz.updateCartGoods(cart) == 1) {
					map.put("info", "添加购物车成功!");
				}
			} else {// 购物车还没有添加该商品
				if (cartBiz.addCartGoods(cart) == 1) {
					map.put("info", "添加购物车成功!");
				}
			}
			// 修改购物车数量信息
			Long cartCount = cartBiz.countByHid(human.getHid());
			session.setAttribute("cartCount", cartCount);
			map.put("count", cartCount);
			map.put("code", 1);
		}else{
			map.put("info", "立即去登录!");
			map.put("code", 0);
		}
		Gson gson = new Gson();
		String data = gson.toJson(map);
		out.print(data);
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
		
		// 查找商品的库存
		Goods goods = new Goods();
		goods.setGid(cart.getGid());
		List<Map<String, Object>> goodlist = goodsBiz.findAll(goods, 0, 1000);
		System.out.println("----------------" + goodlist.size() + "---------------"  +goodlist.get(0).get("GNUMBER")   );
		if (list.size() == 1 && (Integer)goodlist.get(0).get("GNUMBER") >= cart.getCnum()) {
			cart.setCid(list.get(0).getCid());
			if (cartBiz.updateCartGoods(cart) == 1) {
				out.print("OK");
				return;
			}
		} else {
			out.print("所购数量超过库存！");
			return;
		}
		out.print("修改数量失败！");
	}

	// 跳转到付款界面
	@RequestMapping(value = "shopCartPayPage.do")
	public String shopCartPayPage(Orders orders,Goods goods,HttpSession session, Model model,String cids) throws ParseException {
		Human human = (Human) session.getAttribute("loginHuman");
		model.addAttribute("addresslist", addressBiz.findAllAddress(human.getHid()));
		orders.setHid(human.getHid());
		//生成订单表，未付款状态
		if(ordersBiz.addOrders(orders)>0) {
			//商品按订单号列入订单详情
			if(ordersdetailBiz.addOrdersDetailByCart(cids,orders.getOid(),human.getHid())>0) {
				List<Map<String, Object>> list = cartBiz.findGoodsByCids(cids, 0, 100,human.getHid());
				model.addAttribute("listCart", list);
				// 查找刚刚生成的订单，传入页面
				Orders od = ordersBiz.findByOid(orders.getOid());
				model.addAttribute("order", od);
			}
		}
		return "shopCartPay";
	}

	@RequestMapping("pay.do")
	public String payPage(Orders orders, Integer paymode, Model model) throws ParseException {
		cartBiz.removeCartGoods(orders.getOid());
		orders.setOstatus(1);
		if(ordersBiz.updateOrders(orders)>0) {
			orders = ordersBiz.findByOid(orders.getOid());
			model.addAttribute("orders", orders);
			if (paymode == 1) {
				model.addAttribute("payPic", "aliPay.jpg");
			} else {
				model.addAttribute("payPic", "wePay.jpg");
			}
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
