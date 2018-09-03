package com.bs.beststore.web.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class PageTag extends TagSupport {
	
	private static final long serialVersionUID = 1L;
	private long total;		//总数
	private int rows;		//每页行数
	private String href;	//请求地址
	
	public int doStartTag() throws JspException {
		int totalPage=0;
		if(total>0 && rows>0){
			totalPage=((int)total%rows)==0 ? (int)total/rows : (int)total/rows+1; //总页数
		}
		int pageNo=0;		//当前页号
		if(total<=0 || rows<=0 || totalPage<=0){
			return SKIP_BODY;
		}
		
		while(pageNo<totalPage){
			//String pageName=  pageNo==0 ? "首页" : pageNo==totalPage-1 ? "尾页" : (pageNo+1+"");
			String pageName=null;
			if(pageNo==0){
				pageName="首页";
			}else if(pageNo==totalPage-1){
				pageName="尾页";
			}else{
				pageName=pageNo+1+"";
			}
			
			pageNo++;
			
			String wen=href.contains("?") ? "&" : "?";
			
			String s=String.format("<a href='%s%spage=%s&rows=%s'>%s</a>", href,wen,pageNo,rows,pageName);
			try {
				pageContext.getOut().println(s);
			} catch (IOException e) {
				new JspException();
			}
		}
		return EVAL_BODY_INCLUDE;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public void setHref(String href) {
		this.href = href;
	}
	
}
