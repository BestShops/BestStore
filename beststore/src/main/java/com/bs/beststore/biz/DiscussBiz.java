package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Discuss;

public interface DiscussBiz {

	/**
	 * 添加商品评论
	 * @param discuss	评论信息
	 * @return	成功返回1，否则为失败
	 */
	int addDiscuss(Discuss discuss);
	
	/**
	 * 查看某件商品下的所有评论
	 * @param gid	商品id
	 * @return	评论集合
	 */
	List<Discuss> findDiscussByGid(int gid);
}
