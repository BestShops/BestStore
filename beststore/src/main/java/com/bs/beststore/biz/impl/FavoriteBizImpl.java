package com.bs.beststore.biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.FavoriteBiz;
import com.bs.beststore.dao.FavoriteMapper;
import com.bs.beststore.vo.Favorite;

@Service
public class FavoriteBizImpl implements FavoriteBiz {
	
	@Autowired
	private FavoriteMapper favoriteMapper;

	@Override
	public int addFavoriteGoods(Favorite favorite) {
		// 添加状态为1
		favorite.setFstatus(1);
		return favoriteMapper.insertSelective(favorite);
	}

	@Override
	public int removeFavoriteGoods(Favorite favorite) {
		// 设置状态为0
		favorite.setFstatus(0);
		return favoriteMapper.updateByPrimaryKeySelective(favorite);
	}

	@Override
	public List<Map<String, Object>> findAllFavorite(int hid,int page,int rows) {
		return favoriteMapper.findByHid(hid,(page-1)*rows,rows);
	}
	
	public List<Favorite> findFavoriteByHidAndGid(int hid,int gid){
		List<Favorite> list;
		if(favoriteMapper.findByHidAndGid(hid, gid).size()>0) {
			list=favoriteMapper.findByHidAndGid(hid, gid);
		}else {
			list=null;
		}
		return list;
	}
	
	@Override
	public long findAllTotal(int hid) {
		return favoriteMapper.selectAllTotal(hid);
	}

	@Override
	public Favorite findByFid(int fid) {
		return favoriteMapper.selectByPrimaryKey(fid);
	}

	@Override
	public int getCount(int hid) {
		String count = favoriteMapper.getCount(hid).get(0).get("count") + "";
		return Integer.parseInt(count);
	}

	@Override
	public int updateFstatus(Favorite favorite) {
		return favoriteMapper.updateFstatus(favorite);
	}

}
