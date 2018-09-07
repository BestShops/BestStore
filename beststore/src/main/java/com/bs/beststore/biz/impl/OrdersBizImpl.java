package com.bs.beststore.biz.impl;

import java.text.SimpleDateFormat;
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
		return OrdersMapper.insertOrders(orders);
	}

	@Override
	/**
	 * 建议能够有两个时间，一个是下单时间，一个是付款时间，
	 * 如果只是单纯的改订单时间，以状态判断是否付款，会造成一定程度上的误解，
	 * 而且，一般的购物网站都提供两个时间，一个是下单时间，一个是付款时间
	 */
	public int updateOrders(Orders orders) {
		return OrdersMapper.updateOrders(orders);
	}

	@Override
	public int deleteOrders(Orders orders) {
		// 状态为6的时候是删除
		orders.setOstatus(6);
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
	public List<Map<String, Object>> findOrderBySid(Orders orders, int sid) {
		return null;
	}

	@Override
	public Orders findByOid(int oid) {
		return OrdersMapper.selectByPrimaryKey(oid);
	}

	@Override
	public List<Map<String, Object>> findInfoByOid(int oid) {
		return null;
	}

	@Override
	public List<Map<String, Object>> findAllOrderBySid(int sid,Orders orders, int pageNo, int pageSize) {
		List<Map<String, Object>> list;
		if(orders.getOstatus()!=null) {
			list=OrdersMapper.findBySidAndOstatus(sid, orders.getOstatus(), pageNo, pageSize);
		}else {
			list=OrdersMapper.findAllBySid(sid, (pageNo-1)*pageSize, pageSize);
		}
		return list;
	}

	@Override
	public long findOrderBySidTotal(int sid) {
		return OrdersMapper.findBySidTotal(sid);
	}

	@Override
	public List<Map<String, Object>> findGoodsSale(int oid) {
		return OrdersMapper.findGoodsSale(oid);
	}

	@Override
	public List<Map<String, Object>> findAddressAndOrders(int oid) {
		return OrdersMapper.findAddressAndOrders(oid);
	}

}
