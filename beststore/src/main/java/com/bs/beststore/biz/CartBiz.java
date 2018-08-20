package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import com.bs.beststore.vo.Cart;

public interface CartBiz {

	/**
	 * 添加商品到购物车
	 * @param cart	账户id、商品id、图片id、数量
	 * @return	成功返回1，否则为失败
	 */
	int addCartGoods(Cart cart);
	
	/**
	 * 删除购物车商品或清空购物车
	 * @param cart	购物车id
	 * @return	成功返回1，否则为失败
	 */
	int removeCartGoods(Cart cart);
	
	/**
	 * 修改购物车数量
	 * @param cart	购物车id
	 * @return	成功返回1，否则为失败
	 */
	int updateCartGoods(Cart cart);
	
	/**
	 * 查询购物车的所有商品信息
	 * @param cart	根据购物车信息去查找商品信息及商品图片信息
	 * @return	商品信息和商品图片信息的集合
	 */
	List<Map<String,Object>> findCartGoods(Cart cart);
	
	
	
	
	
}
