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

	@Override
	public int addOrdersDetailByCart(String cids, int oid,int hid) {
		String[] cidField=cids.split(",");
		int result = 0;
		if(cidField.length>0){
			for(String string:cidField){
				if(string.trim().length()>0){
					List<Map<String, Object>> cart=cartMapper.selectGoodsAndCart(Integer.parseInt(string),hid);
					Ordersdetail ordersdetail = new Ordersdetail();
					ordersdetail.setGid(Integer.valueOf(cart.get(0).get("GID")+""));
					ordersdetail.setNum(Integer.valueOf(cart.get(0).get("CNUM")+""));
					ordersdetail.setOdstatus(0);
					Double price=(Double.parseDouble(cart.get(0).get("GNOWPRICE")+"")*Double.parseDouble(cart.get(0).get("CNUM")+""));
					ordersdetail.setGprice(price);
					ordersdetail.setOid(oid);
					result=ordersdetailMapper.insertSelective(ordersdetail);
				}
			}
		}
		return result;
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
