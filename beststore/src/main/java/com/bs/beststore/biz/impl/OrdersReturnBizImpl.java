package com.bs.beststore.biz.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.OrdersReturnBiz;
import com.bs.beststore.dao.OrdersreturnMapper;
import com.bs.beststore.vo.Ordersreturn;

@Service
public class OrdersReturnBizImpl implements OrdersReturnBiz {
	
	@Autowired
	private OrdersreturnMapper ordersReturnMapper;

	@Override
	public int addOrderReturn(Ordersreturn ordersturn) throws BizException {
		if (ordersturn.getOrservice() == null) {
			throw new BizException("请选择服务类型");
		} else if (ordersturn.getOrstatus() == null) {
			throw new BizException("请选择货物类型");
		} else if (ordersturn.getOreason() == null || ordersturn.getOreason()==0) {
			throw new BizException("请选择退款原因");
		}
		ordersturn.setOreason(ordersturn.getOreason() - 1);
		ordersturn.setOrtype(0);
		return ordersReturnMapper.insertSelective(ordersturn);
	}

	@Override
	public List<Map<String, Object>> findAll(int pageNo) {
		int pageSize = 5;// 每一页展示的订单条数
		pageNo = (pageNo - 1) * pageSize;
		List<Map<String, Object>>list = ordersReturnMapper.findAllOrdersReturn(pageNo, pageSize);
		for (Map<String, Object> m : list) {
			int ortype = (int) m.get("ortype");
			if (ortype == 0) {
				m.put("ortype", "退款中");
			} else if (ortype == 1) {
				m.put("ortype", "已退款");
			} else if (ortype == 2) {
				m.put("ortype", "退款失败");
			}
			Date time = (Date) m.get("odealtime");
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-ss HH:mm:ss");
			m.put("odealtime",format.format(time));
		}
		return list;
	}

	@Override
	public int getCount() {
		return (int) ordersReturnMapper.countByExample(null);
	}
	
	

}
