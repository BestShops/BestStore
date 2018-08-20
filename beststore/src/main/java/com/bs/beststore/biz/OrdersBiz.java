package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import com.bs.beststore.vo.Orders;

public interface OrdersBiz {

	/**
	 * 新增订单
	 * @param orders 订单提交时间、付款状态、订单状态、地址id、用户id、总原价、总现价
	 * @return	成功返回1，否则为失败
	 */
	int addOrders(Orders orders);
	
	/**
	 * 修改订单信息
	 * @param orders  未支付的订单在十五分钟内支付了修改订单时间、付款状态
	 * @return
	 */
	int updateOrders(Orders orders);
	
	/**
	 * 超过十五分钟未支付的订单进行删除
	 * @param orders	订单状态为0、订单id
	 * @return	成功返回1，否则为失败
	 */
	int removeOrders(Orders orders);
	
	/**
	 * 用户删除自己的订单
	 * @param orders	根据订单id将订单状态设为0
	 * @return	成功返回1，否则为失败
	 */
	int deleteOrders(Orders orders);
	
	/**
	 * 查询用户下的所有订单详情
	 * @param orders	用户id、订单状态、付款发货状态
	 * @return	订单详情集合
	 */
	List<Map<String,Object>> findOrderByHid(Orders orders);
	
	/**
	 * 查询店铺下所有交易的订单详情
	 * @param orders	付款发货状态
	 * @param sid	店铺id
	 * @return	订单详情集合
	 */
	List<Map<String,Object>> findOrderBySid(Orders orders,int sid);
}
