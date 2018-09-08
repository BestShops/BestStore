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
	 * 清空购物车
	 * @param oid	订单id
	 * @return	成功返回1，否则为失败
	 */
	int removeCartGoods(int oid);
	
	/**
	 * 清空购物车
	 * @param hid
	 * @return
	 */
	int removeAll(int hid);
	
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
	List<Map<String, Object>> findByhid(int hid,long page, int rows);
	
	/**
	 * 根据用户id去查询购物车的所有商品信息
	 * @param cart	根据购物车信息去查找商品信息及商品图片信息
	 * @return	商品信息和商品图片信息的集合
	 */
	List<Map<String, Object>> findGoodsByCids(String cids,long page, int rows,int hid);
	
	
	/**
	 * 根据主键查找
	 * @param cid
	 * @return
	 */
	Cart findByCid(int cid);

	/**
	 * 根据Hid统计数据条数
	 * @param hid
	 * @return
	 */
	Long countByHid(Integer hid);

	/**
	 * 根据Hid和Gid查询商品是否已经存在购物车
	 * @param cart
	 * @return 返回查询列表结果
	 */
	List<Cart> findByGidAndHid(Cart cart);
	
	
}
