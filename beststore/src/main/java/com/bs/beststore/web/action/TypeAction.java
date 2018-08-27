package com.bs.beststore.web.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.TypeBiz;
import com.bs.beststore.vo.Type;
import com.google.gson.Gson;

@Controller
public class TypeAction {

	@Resource
	private TypeBiz typeBiz;
	
	/**
	 * 添加商品类别
	 * @param type	商品类别
	 */
	@RequestMapping(value="addType.do")
	public void addType(Type type){
		
	}
	
	/**
	 * 修改商品类别
	 * @param type	商品类别
	 */
	@RequestMapping(value="modifyType.do")
	public void modifyType(Type type){
		
	}
	
	/**
	 * 移除商品类别
	 * @param type
	 */
	@RequestMapping(value="removeType.do")
	public void removeType(Type type){
		
	}
	
	/**
	 * 查找父类信息
	 * @throws IOException 
	 */
	@RequestMapping(value="findParentInfo.do")
	public void findParentInfo(HttpServletResponse response) throws IOException {
		List<Type> list=typeBiz.selectParentInfo();
		String s=new Gson().toJson(list);
		response.getWriter().print(s);
	}
	
	/**
	 * 通过父类id找子类信息
	 * @param type
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="findSonInfoByParent.do")
	public void findSonInfoByParent(String tparentid,HttpServletResponse response) throws IOException {
		Type type=new Type();
		System.out.println(type);
		if(!tparentid.isEmpty()) {
			type.setTparentid(Integer.valueOf(tparentid));
		}else {
			type.setTparentid(1);
		}
		List<Type> list=typeBiz.selectSonInfoByParent(type);
		String s=new Gson().toJson(list);
		response.getWriter().print(s);
	}
	
}
