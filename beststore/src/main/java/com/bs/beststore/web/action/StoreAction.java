package com.bs.beststore.web.action;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.biz.StoreBiz;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.Store;

@Controller
public class StoreAction {

	@Resource
	private StoreBiz storeBiz;
	
	@Resource
	private HumanBiz humanBiz;
	
	/**
	 * 开店
	 * @param session
	 * @return
	 */
	@RequestMapping(value="openStorePage.do")
	public void openStorePage(HttpSession session, PrintWriter out){
		Human human = (Human) session.getAttribute("loginHuman");
		if (humanBiz.check(human)) {
			// 如果用户信息完整，就返回OK
			out.print("OK");
		} else {
			out.print("信息完整度过低，请前往个人中心完善个人信息");
		}
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
