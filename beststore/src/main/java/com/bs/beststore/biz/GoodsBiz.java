package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

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
	 * 查询所有的商品或者某个商品(具体查询)
	 * @param goods  可以根据商品id、商品类型、店铺id、商品状态
	 * @return
	 */
	List<Map<String,Object>> findAll(Goods goods,int page,int rows);
	
	long findAllTotal(Goods goods);
	
	/**
	 * 通过关键字查找商品 
	 * @param key 关键字 包括：商品名，商品描述
	 * @return 返回商品信息
	 */
	List<Map<String,Object>> findByKeyWord(String key);
	
	/**
	 * 按价格区间查找商品信息
	 * @param likeName 商品名包括的字段，模糊查找
	 * @param minPrice 最低价格
	 * @param maxPrice 最高价格
	 * @return
	 */
	List<Map<String,Object>> findByPrice(String likeName, Double minPrice, Double maxPrice);
	
}
