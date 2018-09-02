package com.bs.beststore.web.action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.CartBiz;
import com.bs.beststore.vo.Cart;
import com.bs.beststore.vo.Human;

@Controller
/**
 * 
 * 因为购物车所关联的至少有用户和商品，
 * 所以没执行增删改购物车商品操作的时候都要关联hid和gid
 * @author Administrator
 *
 */
public class CartAction {

	@Resource
	private CartBiz cartBiz;

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
		// 将页数传入
		model.addAttribute("page", count / 5);
		page = (page - 1) * 5;
		List<Map<String, Object>> list = cartBiz.findByhid(human.getHid(), page, 5);
		model.addAttribute("listCart", list);
		return "shopCart";
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
	public String shopCartPayPage() {
		return "shopCartPay";
	}

}
