package com.bs.beststore.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.PhotoBiz;
import com.bs.beststore.dao.PhotoMapper;
import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.Photo;

@Service
public class PhotoBizImpl implements PhotoBiz{

	@Autowired
	private PhotoMapper pm;
	
	@Override
	public int addPhotoByGoods(Goods goods, Photo photo) {
		// 将goods里的gid传给photo
		photo.setGid(goods.getGid());
		return pm.insert(photo);
	}

}
