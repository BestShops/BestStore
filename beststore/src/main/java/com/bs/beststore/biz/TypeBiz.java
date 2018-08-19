package com.bs.beststore.biz;

import com.bs.beststore.vo.Type;

public interface TypeBiz {
	
	/**
	 * 添加商品类别
	 * @param type	必填（主类别），选填（次类别）
	 * @return	成功返回1，否则为失败
	 */
	int addType(Type type);
	
	
	/**
	 * 删除商品类别	
	 * @param type	类别id
	 * @return	成功返回1，否则为失败
	 */
	int removeType(Type type);
	
	/**
	 * 修改商品类别
	 * @param type	类别id
	 * @return	成功返回1，否则为失败
	 */
	int modifyType(Type type);
	
}
