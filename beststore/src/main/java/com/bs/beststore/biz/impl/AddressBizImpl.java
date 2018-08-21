package com.bs.beststore.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.AddressBiz;
import com.bs.beststore.dao.AddressMapper;
import com.bs.beststore.vo.Address;

@Service
public class AddressBizImpl implements AddressBiz {
	
	@Autowired
	private AddressMapper addressMapper;

	@Override
	public int addAddress(Address address) {
		return addressMapper.insertSelective(address);
	}

	@Override
	public int updateAddress(Address address) {
		return addressMapper.updateByPrimaryKeySelective(address);
	}

	@Override
	public int removeAddress(Address address) {
		return addressMapper.deleteByPrimaryKey(address.getAid());
	}

	@Override
	public List<Address> findAllAddress(int hid) {
		return addressMapper.selectByExample(null);
	}

	@Override
	public Address findByAid(int aid) {
		return addressMapper.selectByPrimaryKey(aid);
	}

}
