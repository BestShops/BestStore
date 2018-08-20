package com.bs.beststore.biz;

import com.bs.beststore.vo.Ordersdetail;

public interface OrdersdetailBiz {

	/**
	 * 新增订单详情表
	 * @param ordersdetail	订单id、商品id、图片id、数量
	 * @return	成功返回1，否则为失败
	 */
	int addOrdersDetail(Ordersdetail ordersdetail);
	
	
	/**
	 * 删除订单详情表
	 * @param ordersdetail	订单id
	 * @return	成功返回1，否则为失败
	 */
	int removeOrdersDetail(Ordersdetail ordersdetail);
}
