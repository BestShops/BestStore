package com.bs.beststore.web.action;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.TypeBiz;
import com.bs.beststore.vo.Type;

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
	
	
}
