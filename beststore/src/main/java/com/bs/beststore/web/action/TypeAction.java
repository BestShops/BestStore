package com.bs.beststore.web.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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
	@RequestMapping(value="findAllInfo.do")
	public void findAllInfo(HttpServletResponse response,String tid1,String tid2) throws IOException {
		List<Map<String,Object>> list = null;
		if(tid1!=null) {
			list=typeBiz.selectSecondInfo(Integer.valueOf(tid1));
			String s=new Gson().toJson(list);
			response.getWriter().print(s);
		}else if(tid2!=null) {
			list=typeBiz.selectThirdInfo(Integer.valueOf(tid2));
			String s=new Gson().toJson(list);
			response.getWriter().print(s);
		}else {
			List<Type> list1=typeBiz.selectFirstInfo();
			String s=new Gson().toJson(list1);
			response.getWriter().print(s);
		}
	}
	
	
	
}
