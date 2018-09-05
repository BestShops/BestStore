package com.bs.beststore.biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.OrdersdetailBiz;
import com.bs.beststore.dao.CartMapper;
import com.bs.beststore.dao.OrdersdetailMapper;
import com.bs.beststore.vo.Ordersdetail;
import com.bs.beststore.vo.OrdersdetailExample;
import com.bs.beststore.vo.OrdersdetailExample.Criteria;

@Service
public class OrdersdetailBizImpl implements OrdersdetailBiz{

	@Autowired
	private OrdersdetailMapper ordersdetailMapper;
	
	@Autowired
	private CartMapper cartMapper;
	
	@Override
	public int addOrdersDetail(Ordersdetail ordersdetail) {
		return ordersdetailMapper.insert(ordersdetail);
	}

	@Override
	public List<Map<String, Object>> findOrdersDetail(Ordersdetail ordersdetail) {
		return ordersdetailMapper.findOrdersDetail(ordersdetail.getOid());
	}

	@Override
	public List<Map<String, Object>> findOrderByOid(int oid) {
		return ordersdetailMapper.findByOid(oid);
	}

	@Override
	public List<Map<String, Object>> findDetailByOid(int oid) {
		return ordersdetailMapper.findDetailByOid(oid);
	}

	@SuppressWarnings({ "null", "rawtypes" })
	@Override
	public int addOrdersDetailByCart(int hid, int oid) {
		List<Map<String, Object>> list = cartMapper.selectByHid(hid, 0, 1000);
		Ordersdetail ordersdetail = new Ordersdetail();
		for (Map m : list) {
			ordersdetail.setGid((Integer) m.get("GID"));
			ordersdetail.setNum((Integer) m.get("CNUM"));
			ordersdetail.setOdstatus(0);
			ordersdetail.setGprice((Double) m.get("GNOWPRICE"));
			ordersdetail.setOid(oid);
			ordersdetailMapper.insertSelective(ordersdetail);
		}
		return oid;
	}

	@Override
	public boolean checkOrderStatus(int oid) {
		// 查出订单下所有订单详情的信息
		OrdersdetailExample example = new OrdersdetailExample();
		Criteria criteria =  example.createCriteria();
		criteria.andOidEqualTo(oid);
		List<Ordersdetail> list = ordersdetailMapper.selectByExample(example);
		for (Ordersdetail o : list) {
			if (o.getOdstatus() == 0) {
				return false;
			}
		}
		return true;
	}

	@Override
	public void modefiyStatus(int odid) {
		Ordersdetail ordersdetail = new Ordersdetail();
		ordersdetail.setOdid(odid);
		ordersdetail.setOdstatus(1);
		ordersdetailMapper.updateByPrimaryKeySelective(ordersdetail);
	}

	@Override
	public List<Map<String, Object>> findGnameAndNum(int sid) {
		return ordersdetailMapper.findGnameAndNum(sid);
	}

}
