package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

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
}
