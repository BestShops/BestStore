package com.bs.beststore.biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.OrdersdetailBiz;
import com.bs.beststore.dao.OrdersdetailMapper;
import com.bs.beststore.vo.Ordersdetail;

@Service
public class OrdersdetailBizImpl implements OrdersdetailBiz{

	@Autowired
	private OrdersdetailMapper odm;
	
	@Override
	public int addOrdersDetail(Ordersdetail ordersdetail) {
		return odm.insert(ordersdetail);
	}

	@Override
	public List<Map<String, Object>> findOrdersDetail(Ordersdetail ordersdetail) {
		return odm.findOrdersDetail(ordersdetail.getOid());
	}

}
