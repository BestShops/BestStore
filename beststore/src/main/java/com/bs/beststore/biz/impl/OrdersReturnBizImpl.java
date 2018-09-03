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
	public List<Map<String, Object>> findAll(int pageNo, int hid, int type) {
		int pageSize = 5;// 每一页展示的订单条数
		pageNo = (pageNo - 1) * pageSize;
		List<Map<String, Object>>list;
		if (type > 1) {
			list = ordersReturnMapper.findAllOrdersReturn(hid, pageNo, pageSize);
		} else {
			list = ordersReturnMapper.findAllOrdersReturnByType(hid, type, pageNo, pageSize);
		}
		// 对获取的数据的优化修改
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
	public int getCount(int hid, int type) {
		String count = "";
		if (type > 1) {
			count += ordersReturnMapper.getCountByHid(hid).get(0).get("count");
		} else {
			count += ordersReturnMapper.getCountByType(hid, type).get(0).get("count");
		}
		int num = Integer.parseInt(count);
		return num%5==0 ? num/5 : num/5 + 1;
	}

	@Override
	public void delReturn(Ordersreturn ordersreturn) {
		ordersreturn.setOrtype(2);
		ordersReturnMapper.updateByPrimaryKeySelective(ordersreturn);
	}
	
	public List<Map<String,Object>> findAllOrdersReturn(int sid,int pageNo,int pageSize,Ordersreturn ordersreturn){
		List<Map<String,Object>> list;
		if(ordersreturn.getOrtype()!=null) {
			list=ordersReturnMapper.findReturnBySidAndOrtype(sid, ordersreturn.getOrtype(), (pageNo-1)*pageSize, pageSize);
		}else {
			list=ordersReturnMapper.findAllReturnBySid(sid, (pageNo-1)*pageSize, pageSize);
		}
		return list;
	}

	@Override
	public long findAllOrdersReturnTotal(int sid) {
		return ordersReturnMapper.findAllReturnBySidTotal(sid);
	}

	@Override
	public int updateReturn(Ordersreturn ordereturn) {
		return ordersReturnMapper.updateByPrimaryKeySelective(ordereturn);
	}

}
