package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import com.bs.beststore.vo.Store;

public interface StoreBiz {
	
	/**
	 * 查看所有的店铺信息
	 * 可以根据店铺状态查询
	 * @return	返回一个Store类型的集合
	 */
	List<Map<String,Object>> findAll(Store store,int page,int rows);
	
	/**
	 * 查询店铺个数
	 * @param store	店铺状态
	 * @return
	 */
	public long findAllTotal(Store store);
	
	/**
	 * 根据商铺名查找
	 * @param store
	 * @return
	 */
	List<Store> findByName(Store store);
	
	/**
	 * 注册，用户提供信息进行注册
	 * @param store 	必填信息(店铺名)，选填(店铺说明)
	 * @return	成功返回1，否则为失败
	 */
	int register(Store store);
	
	/**
	 * 根据hid获取到店铺的详细信息
	 * @param hid
	 * @return	成功就返回店铺的具体信息，失败返回为null
	 */
	Store findByHid(int hid);
	
	/**
	 * 修改店铺信息，根据主键sid修改，需要判断店铺名是否冲突
	 * @param store	  店铺名，店铺说明，店铺状态
	 * @return	成功返回1，否则为失败
	 */
	int changeInfo(Store store) throws BizException;
	
	/**
	 * 根据主键查找
	 * @param sid
	 * @return
	 */
	Store findBySid(int sid);
	
	/**
	 * 修改店铺状态
	 * @param store
	 * @return
	 */
	int updateStoreStatus(Store store);
	
}
