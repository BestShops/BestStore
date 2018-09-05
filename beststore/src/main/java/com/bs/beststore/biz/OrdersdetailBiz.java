package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bs.beststore.vo.Ordersdetail;

public interface OrdersdetailBiz {

	/**
	 * 新增订单详情表
	 * @param ordersdetail	订单id、商品id、图片id、数量
	 * @return	成功返回1，否则为失败
	 */
	int addOrdersDetail(Ordersdetail ordersdetail);
	
	
	/**
	 * 查看订单详情表
	 * @param ordersdetail	订单id
	 * @return	成功返回1，否则为失败
	 */
	List<Map<String, Object>> findOrdersDetail(Ordersdetail ordersdetail);
	
	/**
	 * 根据oid查询订单详情
	 * @param orders	用户id、订单状态、付款发货状态
	 * @return	订单详情集合
	 */
	List<Map<String,Object>> findOrderByOid(int oid);
	
	/**
	 * 根据oid查找订单下的商品详情
	 * @param oid
	 * @return
	 */
	List<Map<String, Object>> findDetailByOid(int oid);

	/**
	 * 添加订单详情，将购物车里所有商品复制到订单详情
	 * @param oid
	 * @param oid 
	 * @return
	 */
	int addOrdersDetailByCart(String cids, int oid);
	
	/**
	 * 判别订单下所有的商品是否都已经评价过了
	 * @param oid
	 * @return 
	 */
	boolean checkOrderStatus(int oid);
	
	/**
	 * 修改订单详情的状态，设为已评价1
	 * @param odid
	 */
	void modefiyStatus(int odid);
}
