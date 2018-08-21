package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Cart;

public interface CartBiz {

	/**
	 * 添加商品到购物车
	 * @param cart	账户id、商品id、图片id、数量
	 * @return	成功返回1，否则为失败
	 */
	int addCartGoods(Cart cart);
	
	/**
	 * 清空购物车
	 * @param hid	用户id
	 * @return	成功返回1，否则为失败
	 */
	int removeCartGoods(int hid);
	
	/**
	 * 根据cid删除购物车商品
	 * @param cart
	 * @return
	 */
	int removeByCid(Cart cart);
	
	/**
	 * 修改购物车数量
	 * @param cart	购物车id
	 * @return	成功返回1，否则为失败
	 */
	int updateCartGoods(Cart cart);
	
	/**
	 * 根据用户id去查询购物车的所有商品信息
	 * @param cart	根据购物车信息去查找商品信息及商品图片信息
	 * @return	商品信息和商品图片信息的集合
	 */
	List<Cart> findByhid(int hid);
	
	
	/**
	 * 根据主键查找
	 * @param cid
	 * @return
	 */
	Cart findByCid(int cid);
	
	
}
