package com.bs.beststore.biz.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.OrdersdetailBiz;
import com.bs.beststore.dao.GoodsMapper;
import com.bs.beststore.dao.OrdersMapper;
import com.bs.beststore.dao.OrdersdetailMapper;
import com.bs.beststore.dao.PhotoMapper;
import com.bs.beststore.vo.Ordersdetail;
import com.bs.beststore.vo.OrdersdetailExample;
import com.bs.beststore.vo.OrdersdetailExample.Criteria;

@Service
public class OrdersdetailBizImpl implements OrdersdetailBiz{

	@Autowired
	private OrdersdetailMapper odm;
	
	@Autowired
	private OrdersMapper om;
	
	@Autowired
	private GoodsMapper gm;
	
	@Autowired
	private PhotoMapper pm;
	
	@Override
	public int addOrdersDetail(Ordersdetail ordersdetail) {
		return odm.insert(ordersdetail);
	}

	@Override
	public List<Map<String, Object>> findOrdersDetail(Ordersdetail ordersdetail) {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		Ordersdetail od = odm.selectByPrimaryKey(ordersdetail.getOdid());
		Map<String, Object> map = new HashMap<String, Object>();
		
		// TODO: 完成把每个表遍历出来，去有用的值，等确定用那些值再完善
		
		return null;
	}

}
