package com.bs.beststore.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.OrdersReturnBiz;
import com.bs.beststore.dao.OrdersreturnMapper;

@Service
public class OrdersReturnBizImpl implements OrdersReturnBiz {
	
	@Autowired
	private OrdersreturnMapper ordersReturnMapper;
	
	

}
