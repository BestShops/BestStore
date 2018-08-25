package com.bs.beststore.web.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.StoreBiz;
import com.bs.beststore.vo.Store;

@Controller
public class StoreAction {

	@Resource
	private StoreBiz storeBiz;
	
	@RequestMapping(value="openStorePage.do")
	public String openStorePage(){
		return "openStore";
	}
	
	@RequestMapping(value="openStoreStep1.do")
	public String Store(){
		return "openStoreStep1";
	}
	
	@RequestMapping(value="storeManagePage.do")
	public String storeManagePage(){
		return "storeManage";
	}
	
	@RequestMapping(value="storeInfoPage.do")
	public String storeInfoPage(){
		return "back/storeInfo";
	}
	
	@RequestMapping(value="goodsManagePage.do")
	public String goodsManagePage(){
		return "back/goodsManage";
	}
	
	/**
	 * 查看所有的店铺信息
	 * @param store	根据store.sstatus查询店铺
	 */
	@RequestMapping(value="storeFindAllStore.do")
	public void findAllStore(Store store){
		
	}
	
	/**
	 * 修改店铺信息
	 * @param store	店铺信息
	 */
	@RequestMapping(value="modifyStoreInfo.do")
	public void modifyStoreInfo(Store store){
		
	}
	
}
