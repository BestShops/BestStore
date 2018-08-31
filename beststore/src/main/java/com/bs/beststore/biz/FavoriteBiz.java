package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import com.bs.beststore.vo.Favorite;

public interface FavoriteBiz {

	/**
	 * 添加商品到收藏夹
	 * @param favorite	商品id、用户id
	 * @return	成功返回1，否则为失败
	 */
	int addFavoriteGoods(Favorite favorite);
	
	/**
	 * 删除收藏夹商品或清空收藏夹
	 * @param favorite	收藏夹id
	 * @return	成功返回1，否则为失败
	 */
	int removeFavoriteGoods(Favorite favorite);
	
	/**
	 * 根据用户id查看收藏夹内的所有商品信息
	 * @param hid
	 * @return
	 */
	List<Map<String, Object>> findAllFavorite(int hid,int page,int rows);
	
	long findAllTotal(int hid);
	
	/**
	 * 根据主键查找
	 * @param fid
	 * @return
	 */
	Favorite findByFid(int fid);
	
}
