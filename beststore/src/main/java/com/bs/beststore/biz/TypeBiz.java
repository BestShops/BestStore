package com.bs.beststore.biz;

import java.util.List;

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
	 * 查看商品类别
	 */
	List<Type> findAllType();
	
	/**
	 * 根据主键查找
	 * @param tid
	 * @return
	 */
	Type findByTid(int tid);
	
}
