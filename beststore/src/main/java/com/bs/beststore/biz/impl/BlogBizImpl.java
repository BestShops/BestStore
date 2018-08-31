package com.bs.beststore.biz.impl;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.BlogBiz;
import com.bs.beststore.dao.BlogMapper;
import com.bs.beststore.vo.Blog;
import com.bs.beststore.vo.BlogExample;
import com.bs.beststore.vo.BlogExample.Criteria;

@Service
public class BlogBizImpl implements BlogBiz {

	@Autowired
	private BlogMapper blogMapper;

	@Override
	public int addBlog(Blog blog) {
		return blogMapper.insertBlog(blog);
	}

	@Override
	public int modifyBlog(Blog blog) {
		blog.setBstatus(0);
		return blogMapper.updateByPrimaryKeySelective(blog);
	}

	@Override
	public int removeBlog(Blog blog) {
		blog.setBstatus(3);
		return blogMapper.updateByPrimaryKeySelective(blog);
	}

	@Override
	public List<Blog> findByBlog(Blog blog) {
		BlogExample blogExample = new BlogExample();
		Criteria criteria = blogExample.createCriteria();
		// 添加查询条件
		if (blog.getBtitle() != null && !"".equals(blog.getBtitle())) {// 添加博客主题的模糊查询条件
			criteria.andBtitleLike("%" + blog.getBtitle() + "%");
		} else if (blog.getBdesc() != null && !"".equals(blog.getBdesc())) {// 添加博客描述的模糊查询条件
			criteria.andBdescLike("%" + blog.getBdesc() + "%");
		} else if (blog.getBtime() != null) {// 添加博客发布时间的查询（这一天当中的）
			Date today = blog.getBtime();
			// 实现天数+1
			Calendar c = Calendar.getInstance();
			c.setTime(today);
			c.add(Calendar.DAY_OF_MONTH, 1);
			Date tomorrow = c.getTime();
			criteria.andBtimeBetween(today, tomorrow);
		} else if (blog.getBstatus() != null) {// 添加博客状态的查询
			criteria.andBstatusEqualTo(blog.getBstatus());
		} else if (blog.getSid() != null && blog.getSid() != 0) {// 添加发布博客的商铺的查询
			criteria.andSidEqualTo(blog.getSid());
		} 
		return blogMapper.selectByExample(blogExample);
	}

	@Override
	public List<Blog> findAllBlog() {
		BlogExample blogExample = new BlogExample();
		blogExample.setOrderByClause("bstatus asc");
		return blogMapper.selectByExample(blogExample);
	}

	@Override
	public Blog findByBid(int bid) {
		return blogMapper.selectByPrimaryKey(bid);
	}

	@Override
	public List<Blog> findAllBySid(Blog blog,int page,int rows) {
		List<Blog> list;
		if(blog.getBstatus()!=null) {
			list=blogMapper.selectBlogByBstatus(blog.getSid(), blog.getBstatus(), (page-1)*rows, rows);
		}else {
			list=blogMapper.selectAllBlog(blog.getSid(),(page-1)*rows,rows);
		}
		return list;
	}

	@Override
	public long findAllTotal(Blog blog) {
		long count=0;
		if(blog.getBstatus()!=null && blog.getSid()!=null) {
			count=blogMapper.selectByBstatusCount(blog.getSid(), blog.getBstatus());
		}else if(blog.getSid()!=null) {
			count=blogMapper.selectBlogCount(blog.getSid());
		}
		return count;
	}

	@Override
	public int updateBstatus(Blog blog) {
		return blogMapper.updateBstatus(blog);
	}

	@Override
	public int getCount(int hid) {
		String count = blogMapper.getCount(hid).get(0).get("count") + "";
		return Integer.parseInt(count);
	}



}
