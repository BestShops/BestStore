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
	 * 用户删除自己的订单
	 * @param orders	根据订单id将订单状态设为0
	 * @return	成功返回1，否则为失败
	 */
	int deleteOrders(Orders orders);
	
	/**
	 * 查询用户下的所有订单（不包括详情，只展示订单的第一件商品的信息）,状态为10查询全部，否则按状态查找
	 * @param orders	用户id、订单状态、付款发货状态
	 * @return	订单详情集合
	 */
	List<Map<String,Object>> findOrderByHid(int hid, int pageNo, int status);
	
	/**
	 * 查询店铺下所有交易的订单详情
	 * @param orders	付款发货状态
	 * @param sid	店铺id
	 * @return	订单详情集合
	 */
	List<Map<String,Object>> findOrderBySid(Orders orders,int sid);
	
	/**
	 * 获取信息的总条数
	 * @param hid
	 * @return
	 */
	int getCount(int hid, int type);

	
	/**
	 * 根据oid获取信息
	 * @param oid
	 * @return
	 */
	Orders findByOid(int oid);

	/**
	 * 根据oid查询订单的头信息
	 * @param oid
	 * @return
	 */
	List<Map<String, Object>> findInfoByOid(int oid);
	
	//店铺下的所有交易订单
	List<Map<String,Object>> findAllOrderBySid(int sid,Orders orders, int pageNo, int pageSize);
	
	long findOrderBySidTotal(int sid);
	
}
