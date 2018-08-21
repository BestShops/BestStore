package com.bs.beststore.biz.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.OrdersBiz;
import com.bs.beststore.dao.OrdersMapper;
import com.bs.beststore.dao.StoreMapper;
import com.bs.beststore.vo.Orders;
import com.bs.beststore.vo.OrdersExample;
import com.bs.beststore.vo.OrdersExample.Criteria;
import com.bs.beststore.vo.Store;

@Service
public class OrdersBizImpl implements OrdersBiz{

	@Autowired
	private OrdersMapper om;
	
	@Autowired
	private StoreMapper sm;
	
	@Override
	public int addOrders(Orders orders) {
		return om.insert(orders);
	}

	@Override
	/**
	 * 建议能够有两个时间，一个是下单时间，一个是付款时间，
	 * 如果只是单纯的改订单时间，以状态判断是否付款，会造成一定程度上的误解，
	 * 而且，一般的购物网站都提供两个时间，一个是下单时间，一个是付款时间
	 */
	public int updateOrders(Orders orders) {
		/**
		 *  格式化时间
		 *  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 *  df.format(new Date())
		 */
		orders.setOstatus(1);
		orders.setOtime(new Date());
		return om.updateByPrimaryKeySelective(orders);
	}

	@Override
	public int removeOrders(Orders orders) {
		orders.setOstatus(4);
		return om.updateByPrimaryKeySelective(orders);
	}

	@Override
	public int deleteOrders(Orders orders) {
		// 状态为5的时候是删除
		orders.setOstatus(5);
		return om.updateByPrimaryKeySelective(orders);
	}

	@Override
	public List<Map<String, Object>> findOrderByHid(Orders orders) {
		OrdersExample example = new OrdersExample();
		Criteria criteria = example.createCriteria();
		criteria.andHidEqualTo(orders.getHid());
		om.selectByExample(example);
		return null;
		// TODO: 商量了之后再改
	}

	@Override
	public List<Map<String, Object>> findOrderBySid(Orders orders, int sid) {
		Store store = sm.selectByPrimaryKey(sid);
		OrdersExample example = new OrdersExample();
		Criteria criteria = example.createCriteria();
		criteria.andHidEqualTo(store.getHid());
		om.selectByExample(example);
		return null;
		// TODO: 商量了之后再改
	}

}
