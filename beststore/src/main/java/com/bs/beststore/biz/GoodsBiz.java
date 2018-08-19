package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.Type;

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
	 * 查询所有的商品
	 * @param type	type存在根据类别查询，type为null则查询所有
	 * @return	返回商品信息集合
	 */
	List<Goods> findAll(Type type);
	
	/**
	 * 根据商品id查询商品信息
	 * @param gid	商品号
	 * @return	返回商品信息
	 */
	Goods findByGid(int gid);
	
	/**
	 * 通过关键字查找商品 
	 * @param key 关键字 包括：商品名，价格，上架时间，*商品描述
	 * @return 返回商品信息
	 */
	List<Goods> findByKeyWord(String key);
	
	/**
	 * 按价格区间查找商品信息
	 * @param likeName 商品名包括的字段，模糊查找
	 * @param minPrice 最低价格
	 * @param maxPrice 最高价格
	 * @return
	 */
	List<Goods> findByPrice(String likeName, Double minPrice, Double maxPrice);
	
}
