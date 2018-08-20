package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Address;

public interface AddressBiz {
	
	/**
	 * 新增地址
	 * @param address	收货人电话、地址、收货人姓名、用户id
	 * @return	成功返回1，否则为失败
	 */
	int addAddress(Address address);
	
	/**
	 * 修改地址信息
	 * @param address	地址id
	 * @return	成功返回1，否则为失败
	 */
	int updateAddress(Address address);
	
	/**
	 * 删除地址信息
	 * @param address	地址id
	 * @return	成功返回1，否则为失败
	 */
	int removeAddress(Address address);
	
	/**
	 * 查看账户的所有地址
	 * @param hid	查看hid用户下的地址
	 * @return	地址集合
	 */
	List<Address> findAllAddress(int hid);
	
}
