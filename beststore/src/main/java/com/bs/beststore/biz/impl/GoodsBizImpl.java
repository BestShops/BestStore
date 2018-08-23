package com.bs.beststore.biz.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.dao.GoodsMapper;
import com.bs.beststore.vo.Goods;

@Service
/**
 * 
 * 功能还没完善好，但大致功能已经实现，还没经过测试
 * 
 * @author pch
 *
 */
public class GoodsBizImpl implements GoodsBiz {

	@Autowired
	private GoodsMapper gm;

	@Override
	public int addGoods(Goods goods) {
		// goods 必填(商品名，现价，描述，类别)，选填(原价)
		if (goods.getGname() != null 
				&& goods.getGnowprice() != null 
				&& goods.getGdesc() != null
				&& goods.getTid() != null) {
			return gm.insertSelective(goods);
		} else {
			return 0;
		}
	}

	@Override
	public int modifyGoods(Goods goods) {
		// 可修改(商品名，原价，现价，描述，类别，商品状态)
		return gm.updateByPrimaryKey(goods);
	}

	@Override
	public List<Map<String,Object>> findAll(Goods goods) {
		// 可以根据商品id、商品类型、店铺id、商品状态
		List<Map<String,Object>> list = new ArrayList<Map<String, Object>>();
		if (goods != null) {
			// 获取商品id、商品类型、店铺id、商品状态，然后按条件查找，可多条件查找
			if (goods.getGid() != null) {
				list = gm.findByGid(goods.getGid());
			} else if (goods.getTid() != null) {
				list = gm.findByTid(goods.getTid());
			} else if (goods.getSid() != null) {
				list = gm.findBySid(goods.getSid());
			} else if (goods.getGstatus() != null) {
				list = gm.findByGstatus(goods.getGstatus());
			}
			return list;
		} else {
			return null;
		}
	}

	@Override
	public List<Map<String,Object>> findByKeyWord(String key) {
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		// 按名字模糊查找
		if(gm.findByGname(key) != null) {
			list.addAll(gm.findByGname(key));
		}
		if(gm.findByGdesc(key) != null) {
			list.addAll(gm.findByGdesc(key));
		}
		return list;
	}

	@Override
	public List<Map<String,Object>> findByPrice(String likeName, Double minPrice, Double maxPrice) {
		return gm.findByPrice(likeName, minPrice, maxPrice);
	}
}