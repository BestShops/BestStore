package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Store;

public interface StoreBiz {
	
	/**
	 * 查看所有的店铺信息
	 * @return	返回一个Store类型的集合
	 */
	List<Store> findAll();
	
	/**
	 * 注册，用户提供信息进行注册
	 * @param store 	必填信息(店铺名)，选填(店铺说明)
	 * @return	成功返回1，否则为失败
	 */
	int register(Store store);
	
	/**
	 * 登录，根据店铺名(或店铺号)和密码进行登录
	 * @param store
	 * @return	成功就返回店铺的具体信息，失败返回为null
	 */
	Store login(Store store);
	
	/**
	 * 修改店铺信息
	 * @param store	  店铺名，店铺说明，店铺状态
	 * @return	成功返回1，否则为失败
	 */
	int changeInfo(Store store);
	
	
	
}
