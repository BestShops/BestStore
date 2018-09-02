package com.bs.beststore.biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.CartBiz;
import com.bs.beststore.dao.CartMapper;
import com.bs.beststore.vo.Cart;
import com.bs.beststore.vo.CartExample;
import com.bs.beststore.vo.CartExample.Criteria;

@Service
public class CartBizImpl implements CartBiz{
	
	@Autowired
	private CartMapper cartMapper;

	@Override
	public int addCartGoods(Cart cart) {
		return cartMapper.insertSelective(cart);
	}

	@Override
	public int updateCartGoods(Cart cart) {
		return cartMapper.updateByPrimaryKeySelective(cart);
	}

	@Override
	public List<Map<String, Object>> findByhid(int hid, long page, int rows) {
		return cartMapper.selectByHid(hid, page, rows);
	}

	@Override
	public Cart findByCid(int cid) {
		return cartMapper.selectByPrimaryKey(cid);
	}

	@Override
	public int removeCartGoods(int hid) {
		CartExample cartExample = new CartExample();
		Criteria criteria = cartExample.createCriteria();
		criteria.andHidEqualTo(hid);
		return cartMapper.deleteByExample(cartExample);
	}

	@Override
	public int removeByCid(Cart cart) {
		return cartMapper.deleteByPrimaryKey(cart.getCid());
	}

	@Override
	public long countByHid(Integer hid) {
		CartExample cartExample = new CartExample();
		Criteria criteria = cartExample.createCriteria();
		criteria.andHidEqualTo(hid);
		return cartMapper.countByExample(cartExample);
	}

	@Override
	public List<Cart> findByGidAndHid(Cart cart) {
		CartExample cartExample = new CartExample();
		Criteria criteria = cartExample.createCriteria();
		criteria.andHidEqualTo(cart.getHid());
		criteria.andGidEqualTo(cart.getGid());
		return cartMapper.selectByExample(cartExample);
	}

}
