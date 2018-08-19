package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Goods;

public interface GoodsBiz {
	
	/**
	 * 添加商品信息
	 * @param goods	必填(商品名，现价，描述，类别)，选填(原价)
	 * @return	成功返回1，否则为失败
	 */
	int addGoods(Goods goods);
	
	/**
	 * 修改商品信息
	 * @param goods	可修改(商品名，原价，现价，描述，类别，商品状态)
	 * @return 成功返回1，否则为失败
	 */
	int modifyGoods(Goods goods);
	
	/**
	 * 
	 * @param type	type存在根据类别查询，type为null则查询所有
	 * @return	返回商品信息集合
	 */
	/**
	 * 查询所有的商品或者某个商品(具体查询)
	 * @param goods  可以根据商品id、商品类型、店铺id、商品状态
	 * @return
	 */
	List<Goods> findAll(Goods goods);
	
	/**
	 * 通过关键字查找商品(模糊查询)
	 * @param goods	商品名，价格
	 * @return	返回商品信息
	 */
	List<Goods> findByKeyWord(Goods goods);
	
	
}
