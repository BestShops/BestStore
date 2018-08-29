package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import com.bs.beststore.vo.Type;

public interface TypeBiz {
	
	/**
	 * 添加商品类别
	 * @param type	必填（主类别），选填（次类别）
	 * @return	成功返回1，否则为失败
	 */
	int addType(Type type) throws BizException;
	
	/**
	 * 删除商品类别	类别下存在商品就拒绝删除
	 * @param type	id
	 * @return	成功返回1，否则为失败
	 */
	int removeType(Type type)  throws BizException;
	
	/**
	 * 根据id修改商品类别	类别下存在商品就拒绝修改
	 * @param type	id是必定会有的，类别名（主、次都可能有）
	 * @return	成功返回1，否则为失败
	 */
	int modifyType(Type type)  throws BizException;
	
	/**
	 * 根据主键查找
	 * @param tid
	 * @return
	 */
	Type findByTid(int tid);
	
	/**
	 * 查看所有类别
	 * @return
	 */
	List<Map<String, Object>> findAllType();
	
	/**
	 * 通过父类id找子类信息
	 * @return
	 */
	List<Map<String,Object>> selectSonInfoByParent(Type type);
	
	/**
	 * 查找一级类型名
	 * @return
	 */
	List<Type> selectFirstInfo();
	
	/**
	 * 查找二级类型名
	 * @return
	 */
	List<Map<String,Object>> selectSecondInfo(int tid);
	
	/**
	 * 查找三级类型名
	 * @return
	 */
	List<Map<String,Object>> selectThirdInfo(int tid);
	
	/**
	 * 通过类别名查找id
	 * @param tpriname
	 * @return
	 */
	List<Type> findTidByTname(String name);
	
	
}
