package com.bs.beststore.biz.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.dao.GoodsMapper;
import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.GoodsExample;
import com.bs.beststore.vo.GoodsExample.Criteria;

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
			return gm.insert(goods);
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
	public List<Goods> findAll(Goods goods) {
		// 可以根据商品id、商品类型、店铺id、商品状态
		// ByExample查询
		GoodsExample ge = new GoodsExample();
		Criteria criteria = ge.createCriteria();

		if (goods != null) {
			// 获取商品id、商品类型、店铺id、商品状态，然后按条件查找，可多条件查找
			if (goods.getTid() != null) {
				int tid = goods.getTid();
				criteria.andTidEqualTo(tid);
			} else if (goods.getTid() != null) {
				int gid = goods.getGid();
				criteria.andTidEqualTo(gid);
			} else if (goods.getSid() != null) {
				int sid = goods.getSid();
				criteria.andTidEqualTo(sid);
			} else if (goods.getGstatus() != null) {
				int gstatus = goods.getGstatus();
				criteria.andTidEqualTo(gstatus);
			}
			/*
			 *  相当于最后的限制条件，
			 *  避免在上述类别都为空，但goods却不为空的情况下查询条件异常而导致查询出错，
			 *  在原本的查询条件中，nowprice本就应当为空
			 *  也就相当于拼接查询中的 where 1 = 1
			 *  当然如果上述条件都不满足，查出的结果理想状态下应该为空
			 */
			criteria.andGnowpriceIsNotNull();
		} else {
			/*
			 * 设置查询的tid不为空， 又因为tid是添加类别时系统自动生成的， 不可能为空，所以则为查询全部
			 */
			criteria.andTidIsNotNull();
		}
		return gm.selectByExample(ge);
	}

	@Override
	public List<Goods> findByKeyWord(String key) {

		List<Goods> list = new ArrayList<Goods>();

		// 按名字模糊查找
		GoodsExample geByName = new GoodsExample();
		Criteria criteriaByName = geByName.createCriteria();
		criteriaByName.andGnameLike("%" + key + "%");
		List<Goods> listByName = gm.selectByExample(geByName);
		// 如果结果不为空，则将其添加进list
		if (listByName != null) {
			list.add((Goods) listByName);
		}

		// 按商品描述模糊查找
		GoodsExample geByDesc = new GoodsExample();
		Criteria criteriaByDesc = geByDesc.createCriteria();
		criteriaByDesc.andGdescLike("%" + key + "%");
		List<Goods> listByDesc = gm.selectByExample(geByDesc);
		// 如果结果不为空，则将其添加进list
		if (listByName != null) {
			list.add((Goods) listByDesc);
		}

		return list;
	}

	@Override
	public List<Goods> findByPrice(String likeName, Double minPrice, Double maxPrice) {
		// 按价格查找
		GoodsExample ge = new GoodsExample();
		Criteria criteria = ge.createCriteria();
		// 查询条件 名字的模糊查找
		criteria.andGnameEqualTo("%" + likeName + "%");
		// 在名字模糊查询的基础上对价格的最高最低进行查找
		criteria.andGnowpriceBetween(minPrice, maxPrice);
		return gm.selectByExample(ge);
	}

}
