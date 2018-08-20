package com.bs.beststore.biz;

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
	
	
	
}
