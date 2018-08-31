package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import com.bs.beststore.vo.Blog;

/**
 * 对博客进行操作的接口
 *
 */
public interface BlogBiz {
	
	/**
	 * 添加一篇博客，添加博客状态0（审核中）
	 * @param blog	博客中的内容（使用js在前台中做限定）
	 * @return	返回修改的结果，1代表成功
	 */
	int addBlog(Blog blog);
	
	/**
	 * 修改bid博客的内容，包括状态
	 * @param bstatus 博客状态 0审核中、1发布、2审核为通过、3移除
	 * @return	返回修改的结果，1代表成功
	 */
	int modifyBlog(Blog blog);
	
	/**
	 * 根据bid移除博客（修改状态为3）
	 * @param blog
	 * @return 返回修改的结果，1代表成功
	 */
	int removeBlog(Blog blog);
	
	/**
	 * 根据博客中的信息查找博客
	 * @param blog	标题、描述、发布时间、状态、商铺 前两个为模糊查询，
	 * （时间精确到天，注意数据库中时间是精确到秒的，状态：商铺管理员查看不到移除状态下的博客，超级管理员可以，用户不提供这一选择，只能查看到发布状态的博客）
	 * @return 返回一个Blog类型的集合
	 */
	List<Blog> findByBlog(Blog blog);
	
	/**
	 * 超级管理员访问所有博客，按博客的状态递增排序
	 * @return 返回一个Blog类型的集合
	 */
	List<Map<String,Object>> findAllBlog(Blog blog);
	
	/**
	 * 根据主键查找
	 * @param bid
	 * @return
	 */
	Blog findByBid(int bid);
	
	List<Blog> findAllBySid(Blog blog,int page,int rows);
	
	long findAllTotal(Blog blog);
	
	int updateBstatus(Blog blog);
	
	List<Map<String,Object>> selectExamineBlog(Blog blog,int page,int rows);
	

}
