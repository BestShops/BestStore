package com.bs.beststore.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.StoreBiz;
import com.bs.beststore.dao.StoreMapper;
import com.bs.beststore.vo.Store;
import com.bs.beststore.vo.StoreExample;
import com.bs.beststore.vo.StoreExample.Criteria;

@Service
public class StoreBizImpl implements StoreBiz {
	
	@Autowired
	private StoreMapper storeMapper;
	
	@Override
	public List<Store> findAll() {
		return storeMapper.selectByExample(null);
	}

	@Override
	public int register(Store store) {
		if (store.getSname() == null || "".equals(store.getSname())) {
//			throw new BizException("请填写店铺名");
		}
		return storeMapper.insertSelective(store);
	}

	@Override
	public Store findByHid(int hid) throws BizException {
		// 根据hid获取到店铺的详细信息
		StoreExample storeExample = new StoreExample();
		Criteria criteria = storeExample.createCriteria();
		criteria.andHidEqualTo(hid);
		criteria.andSstatusEqualTo(1);// 状态为正常
		List<Store> list = storeMapper.selectByExample(storeExample);
		if (list == null || list.size() == 0) {
			throw new BizException("该商铺不存在或已被下架，请联系超级管理员");
		}
		return list.get(0);
	}

	@Override
	public int changeInfo(Store store) throws BizException {
		Store storeInfo=storeMapper.selectByPrimaryKey(store.getSid());
		if(!store.getSname().equals(storeInfo.getSname())) {
			String sname = store.getSname();
			if (!sname.isEmpty()) {
				StoreExample storeExample = new StoreExample();
				Criteria criteria = storeExample.createCriteria();
				criteria.andSnameEqualTo(sname);
				List<Store> list = storeMapper.selectByExample(storeExample);
				if (list!=null && list.size()>0) {
					throw new BizException("该店铺名已经存在，请重新输入");
				}
			}
		}
		return storeMapper.updateByPrimaryKeySelective(store);
	}

	@Override
	public Store findBySid(int sid) {
		return storeMapper.selectByPrimaryKey(sid);
	}
	
}
