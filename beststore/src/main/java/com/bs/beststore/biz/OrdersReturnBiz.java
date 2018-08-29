package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import com.bs.beststore.vo.Ordersreturn;

public interface OrdersReturnBiz {
	
	/**
	 * 添加一条退货订单记录
	 */
	int addOrderReturn(Ordersreturn ordereturn) throws BizException;
	
	/**
	 * 分页查询所有
	 * @param pageNo
	 * @return
	 */
	List<Map<String, Object>> findAll(int pageNo);
	
	/**
	 * 获取总数据行数
	 * @return
	 */
	int getCount();

}
