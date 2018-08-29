package com.bs.beststore.biz.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.OrdersBiz;
import com.bs.beststore.dao.OrdersMapper;
import com.bs.beststore.vo.Orders;

@Service
public class OrdersBizImpl implements OrdersBiz{

	@Autowired
	private OrdersMapper OrdersMapper;
	
	@Override
	public int addOrders(Orders orders) {
		orders.setOstatus(0);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			orders.setOtime(df.parse(df.format(new Date())));
		} catch (ParseException e) {
			orders.setOtime(new Date());
		}
		return OrdersMapper.insert(orders);
	}

	@Override
	/**
	 * 建议能够有两个时间，一个是下单时间，一个是付款时间，
	 * 如果只是单纯的改订单时间，以状态判断是否付款，会造成一定程度上的误解，
	 * 而且，一般的购物网站都提供两个时间，一个是下单时间，一个是付款时间
	 */
	public int updateOrders(Orders orders) {
		return OrdersMapper.updateByPrimaryKeySelective(orders);
	}

	@Override
	public int deleteOrders(Orders orders) {
		// 状态为5的时候是删除
		orders.setOstatus(5);
		return OrdersMapper.updateByPrimaryKeySelective(orders);
	}

	@Override
	public List<Map<String, Object>> findOrderByHid(int hid, int pageNo, int status) {
		int pageSize = 3;// 每一页展示的订单条数
		pageNo = (pageNo - 1) * pageSize;
		if (status == 10) {
			return OrdersMapper.findByHid(hid, pageNo, pageSize);
		} else {
			return OrdersMapper.findByStatus(hid, status, pageNo, pageSize);
		}
	}
	
	@Override
	public List<Map<String, Object>> findOrderBySid(Orders orders, int sid) {
		return OrdersMapper.findBySid(orders.getOstatus(), sid);	
	}
	
	@Override
	public int getCount(int hid, int type) {
		String count = "";
		if (type == 10) {// 统计总行数
			count += OrdersMapper.getCountByHid(hid).get(0).get("count");
		} else {
			count += OrdersMapper.getCountByStatus(hid, type).get(0).get("count");
		}
		int pageCount = Integer.parseInt(count);
		return pageCount % 3 == 0 ? pageCount / 3 : (pageCount / 3) + 1;
	}

	@Override
	public Orders findByOid(int oid) {
		return OrdersMapper.selectByPrimaryKey(oid);
	}

	@Override
	public List<Map<String, Object>> findInfoByOid(int oid) {
		return OrdersMapper.findInfoByOid(oid);
	}

}
