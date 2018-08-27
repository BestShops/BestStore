package com.bs.beststore.web.action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.Store;

@Controller
public class GoodsAction {
	
	@Resource
	private GoodsBiz goodsBiz;
	
	@RequestMapping(path = "goodsQueryPage.do")
	public String goodsQueryPage() {
		return "goodsQuery";
	}
	
	@RequestMapping(path = "goodsShowPage.do")
	public String goodsShowPage(Goods goods, Model model) {
		List<Map<String, Object>> list = goodsBiz.findAll(goods);
		model.addAttribute("list", list);
		return "goodsShow";
	}
	
	@RequestMapping(value="matchPage.do")
	public String matchPage() {
		return "match";
	}
	
	/**
	 * 添加商品
	 * @param goods	商品信息（包含类别id）
	 * @param session	从会话中获取店铺id
	 */
	@RequestMapping(value="storeAddGoods.do")
	public void addGoods(Goods goods,HttpSession session, PrintWriter out){
		// 从session中获取sid，并设置到goods中
		Store store = (Store) session.getAttribute("loginStore");
		goods.setSid(store.getSid());
		if (goodsBiz.addGoods(goods) == 1) {
			out.print("OK");
		} else {
			out.println("添加失败，请稍后重试");
		}
	}
	
	/**
	 * 商家修改自己的商品信息(包括下架商品)
	 * @param goods	商品信息 商品id
	 * @param session
	 */
	@RequestMapping(value="storeModifyGoods.do")
	public void modifyGoods(Goods goods,HttpSession session){
		goodsBiz.modifyGoods(goods);
	}
	
	/**
	 * 查询店铺所有商品或者某个商品(具体查询)
	 * @param goods	可以根据商品id、商品类型、店铺id、商品状态来查询，若为null则查询本店所有商品
	 * @param session	从会话中获取店铺id
	 */
	@RequestMapping(value="goodsFindAll.do")
	public void findAll(Goods goods,HttpSession session){
		
	}
	
	/**
	 * 通过关键字查找商品(模糊查询)
	 * @param goods	商品名、价格
	 * @param session	从会话中获取店铺id
	 */
	public void findByKeyWord(Goods goods,HttpSession session){
		
	}
	
	
	
	
	
}
