package com.bs.beststore.biz.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

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
	
	public List<Map<String,Object>> findAll(Store store,int page,int rows) {
		List<Map<String, Object>> list;
		if(store.getSstatus()!=null) {
			list = storeMapper.findAllByStatus(store.getSstatus(),(page-1)*rows,rows);
		}else {
			list=storeMapper.findAllStoreInfo((page-1)*rows,rows);
		}
		if (list == null || list.size() == 0) {
			return null;
		}else {
			return list;
		}
	}

	@Override
	public long findAllTotal(Store store) {
		long count=0;
		if(store!=null) {
			if(store.getSstatus()!=null) {
				count= storeMapper.findAllByStatusTotal(store);
			}
		}else {
			count= storeMapper.findAllStoreInfoTotal();
		}
		return count;
	}
	

	@Override
	public int register(Store store) {
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		try {
			store.setStime(dateFormat.parse(dateFormat.format(new Date())));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		store.setSstatus(1);
		return storeMapper.insertSelective(store);
	}

	@Override
	public Store findByHid(int hid) {
		// 根据hid获取到店铺的详细信息
		StoreExample storeExample = new StoreExample();
		Criteria criteria = storeExample.createCriteria();
		criteria.andHidEqualTo(hid);
		List<Store> list = storeMapper.selectByExample(storeExample);
		if (list == null || list.size() == 0) {
			return null;
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

	@Override
	public List<Store> findByName(Store store) {
		StoreExample storeExample = new StoreExample();
		Criteria criteria = storeExample.createCriteria();
		criteria.andSnameEqualTo(store.getSname());
		return storeMapper.selectByExample(storeExample);
	}

	@Override
	public int updateStoreStatus(Store store) {
		return storeMapper.updateStoreSstatus(store);
	}


	
}
