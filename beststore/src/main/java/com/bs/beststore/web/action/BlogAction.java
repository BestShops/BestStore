package com.bs.beststore.web.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bs.beststore.biz.BlogBiz;
import com.bs.beststore.util.Result;
import com.bs.beststore.vo.Blog;
import com.bs.beststore.vo.Store;
import com.google.gson.Gson;

@Controller
public class BlogAction {

	@Resource
	BlogBiz blogBiz;
	
	@RequestMapping("blogPage.do")
	public String blogPage(Model model) {
		Blog blog=new Blog();
		blog.setBstatus(1);
		List<Map<String,Object>> list=blogBiz.findAllBlog(blog);
		model.addAttribute("blogList", list);
		return "blog";
	}
	
	/**
	 * 查询店铺所有博客
	 * @param goods	可以根据商品id、商品类型、店铺id、商品状态来查询，若为null则查询本店所有商品
	 * @param session	从会话中获取店铺id
	 */
	@RequestMapping(value="blogFindBySid.do")
	public void blogFindBySid(Blog blog,HttpServletRequest request,PrintWriter out){
		Store storeHuman=(Store) request.getSession().getAttribute("storeHuman");
		blog.setSid(storeHuman.getSid());
		String page=request.getParameter("page");
		String rows=request.getParameter("rows");
		int intPage;
		int intRows;
		if(page==null) {
			intPage=1;
		}else {
			intPage=Integer.valueOf(page);
		}
		if(rows==null){
			intRows=1;
		}else{
			intRows=Integer.valueOf(rows);
		}
		List<Blog> list=blogBiz.findAllBySid(blog,intPage,intRows);
		long total=blogBiz.findAllTotal(blog);
		Map<String,Object> data=new HashMap<String,Object>();
		data.put("rows", list);
		data.put("total", total);
		out.print(new Gson().toJson(data));
	}

	/**
	 * 添加和修改博客信息
	 * @param blog	博客信息
	 * @param session	从会话中获取店铺id
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping(value="storeAddBlog.do")
	public void storeAddBlog(@RequestParam("file") MultipartFile file,Blog blog,HttpSession session, PrintWriter out,String op) throws IllegalStateException, IOException{
		String data = null;
		if(blog.getBid()!=null) {
			blog.setBphoto(blogBiz.findByBid(blog.getBid()).getBphoto());
		}
		if("add".equals(op) && file.isEmpty()) {
			data=new Gson().toJson(Result.getFailure("请添加图片!"));
		}
		if(!file.isEmpty()) {
			String diskPath=session.getServletContext().getRealPath("/upload");
			String fileName=file.getOriginalFilename();
			File f=new File(diskPath+File.separator+fileName);
			if(!f.exists()) {
				f.mkdirs();
			}
			file.transferTo(f);
			blog.setBphoto(fileName);
		}	
		Store store = (Store) session.getAttribute("storeHuman");
		blog.setSid(store.getSid());

		if("add".equals(op)) {
			if (blogBiz.addBlog(blog) == 1) {
				data=new Gson().toJson(Result.getSuccess("添加成功!"));
			} else {
				data=new Gson().toJson(Result.getFailure("添加失败!"));
			}
		}else if("modify".equals(op)) {
			if (blogBiz.modifyBlog(blog) == 1) {
				data=new Gson().toJson(Result.getSuccess("修改成功!"));
			} else {
				data=new Gson().toJson(Result.getFailure("修改失败!"));
			}
		}
		out.print(data);
	}


	/**
	 * 下架、删除、上架
	 */
	@RequestMapping(value="operateBlog.do")
	public void operateBlog(Blog blog,PrintWriter out) {
		String data;
		int result=blogBiz.updateBstatus(blog);
		if(result>0) {
			data=new Gson().toJson(Result.getSuccess("操作成功!"));
		}else {
			data=new Gson().toJson(Result.getFailure("操作失败!"));
		}
		out.print(data);
	}
	
	
	/**
	 * 超级管理员对博客的审核
	 */
	@RequestMapping(value="blogExamine.do")
	public void blogExamine(Blog blog,HttpServletRequest request,PrintWriter out){
		String page=request.getParameter("page");
		String rows=request.getParameter("rows");
		int intPage;
		int intRows;
		if(page==null) {
			intPage=1;
		}else {
			intPage=Integer.valueOf(page);
		}
		if(rows==null){
			intRows=1;
		}else{
			intRows=Integer.valueOf(rows);
		}
		blog.setBstatus(0);
		List<Map<String,Object>> list=blogBiz.selectExamineBlog(blog, intPage, intRows);
		long total=blogBiz.findAllTotal(blog);
		Map<String,Object> data=new HashMap<String,Object>();
		data.put("rows", list);
		data.put("total", total);
		out.print(new Gson().toJson(data));
	}
	

}
