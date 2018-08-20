package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Blog;

public interface BlogBiz {

	/**
	 * 添加博客
	 * @param blog	博客信息
	 * @return	成功返回1，否则为失败
	 */
	int addBlog(Blog blog);
	
	/**
	 * 修改博客信息
	 * @param blog	博客信息
	 * @return	成功返回1，否则为失败
	 */
	int updateBlog(Blog blog);
	
	/**
	 * 删除博客信息
	 * @param blog	博客信息
	 * @return	成功返回1，否则为失败
	 */
	int removeBlog(Blog blog);
	
	/**
	 * 查看所有博客或者某个店铺下的博客
	 * @param sid	若存在查找该店铺下的博客，不存在查找所有的博客
	 * @return	博客集合
	 */
	List<Blog> findAll(int sid);
	
	
	
}
