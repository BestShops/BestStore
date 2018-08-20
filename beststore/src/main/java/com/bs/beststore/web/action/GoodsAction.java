package com.bs.beststore.web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.vo.Goods;

public class GoodsAction {
	
	@Resource
	private GoodsBiz goodsBiz;
	
	/**
	 * 添加商品
	 * @param goods	商品信息
	 * @param session	从会话中获取店铺id
	 */
	@RequestMapping(value="storeAddGoods.do")
	public void addGoods(Goods goods,HttpSession session){
		
	}
	
	/**
	 * 修改商品信息(包括下架商品)
	 * @param goods	商品信息
	 * @param session	从会话中获取店铺id
	 */
	@RequestMapping(value="storeModifyGoods.do")
	public void modifyGoods(Goods goods,HttpSession session){
		
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