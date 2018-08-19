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
import com.bs.beststore.vo.Type;

@Service
/**
 * 
 * 功能还没完善好，但大致功能已经实现，还没经过测试
 * @author pch
 *
 */
public class GoodsBizImpl implements GoodsBiz {

	@Autowired
	private GoodsMapper gm;

	@Override
	public int addGoods(Goods goods) {
		// goods 必填(商品名，现价，描述，类别)，选填(原价)
		if (goods.getGname() != null && goods.getGnowprice() != null && goods.getGdesc() != null
				&& goods.getTid() != null) {
			// 用异常抛出判断是否写入成功，写入成功则返回1，写入失败则返回0
			try {
				gm.insert(goods);
			} catch (Exception e) {
				return 0;
			}
			return 1;
		} else {
			return 0;
		}
	}

	@Override
	public int modifyGoods(Goods goods) {
		// 可修改(商品名，原价，现价，描述，类别，商品状态)
		try {
			gm.updateByPrimaryKey(goods);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	@Override
	public List<Goods> findAll(Type type) {

		// ByExample查询
		GoodsExample ge = new GoodsExample();
		Criteria criteria = ge.createCriteria();

		if (type != null) {
			// 获取type.tid，传入类别，但是是以类别的tid进行查询
			int tid = type.getTid();
			criteria.andTidEqualTo(tid);
			return gm.selectByExample(ge);
		} else {
			/*
			 * 设置查询的tid不为空， 又因为tid是添加类别时系统自动生成的， 不可能为空，所以则为查询全部
			 */
			criteria.andTidIsNotNull();
			return gm.selectByExample(ge);
		}

	}

	@Override
	public Goods findByGid(int gid) {
		return gm.selectByPrimaryKey(gid);
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
