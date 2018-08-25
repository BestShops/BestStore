package com.bs.beststore.biz.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.AddressBiz;
import com.bs.beststore.dao.AddressMapper;
import com.bs.beststore.vo.Address;
import com.bs.beststore.vo.AddressExample;
import com.bs.beststore.vo.AddressExample.Criteria;

@Service
public class AddressBizImpl implements AddressBiz {
	
	@Autowired
	private AddressMapper addressMapper;

	@Override
	public int addAddress(Address address) {
		if (address.getAstatus() == 1) {
			changeStatus();
		}
		return addressMapper.insertSelective(address);
	}

	@Override
	public int updateAddress(Address address) {
		if (address.getAstatus() == 1) {
			changeStatus();
		}
		return addressMapper.updateByPrimaryKeySelective(address);
	}

	@Override
	public void removeAddress(Address address, int hid) {
		address = findByAid(address.getAid());
		// 先删除地址
		addressMapper.deleteByPrimaryKey(address.getAid());
		// 如果要删除的是默认地址，就重新设置一个默认地址地址
		if (address.getAstatus() == 1) {
			Address a = findAllAddress(hid).get(0);
			// 修改默认的地址
			upDafault(a);
		}
	}

	@Override
	public List<Address> findAllAddress(int hid) {
		// 按状态排序，将默认地址排在第一位
		AddressExample addressExample = new AddressExample();
		addressExample.setOrderByClause("astatus desc");
		Criteria criteria = addressExample.createCriteria();
		criteria.andHidEqualTo(hid);
		List<Address> list = addressMapper.selectByExample(addressExample);
		
		// 如果用户存有地址
		if (list == null || list.size() == 0) {
			return new ArrayList<Address>();
		} else {
			return list;
		}
	}

	@Override
	public Address findByAid(int aid) {
		return addressMapper.selectByPrimaryKey(aid);
	}

	/**
	 * 将原来的状态为1的改为状态为0
	 * @return
	 */
	private void changeStatus() {
		AddressExample addressExample = new AddressExample();
		Criteria criteria = addressExample.createCriteria();
		criteria.andAstatusEqualTo(1);
		List<Address> list = addressMapper.selectByExample(addressExample);
		if (list.size() != 0) {
			list.get(0).setAstatus(0);
			addressMapper.updateByPrimaryKeySelective(list.get(0));
		}
	}

	@Override
	public int upDafault(Address address) {
		changeStatus();
		address.setAstatus(1);
		return addressMapper.updateByPrimaryKeySelective(address);
	}

}
