package com.bs.beststore.web.action;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.biz.StoreBiz;
import com.bs.beststore.util.Result;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.Store;
import com.google.gson.Gson;

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
	
	@RequestMapping(value="openStoreStep1Page.do")
	public String openStoreStep1Page(){
		return "openStoreStep1";
	}
	
	@RequestMapping(value="openStoreStep2Page.do")
	public String openStoreStep2Page(){
		return "openStoreStep2";
	}
	
	@RequestMapping(value="openStoreStep3Page.do")
	public String openStoreStep3Page(){
		return "openStoreStep3";
	}
	
	@RequestMapping(value="storeManagePage.do")
	public String storeManagePage(){
		return "storeManage";
	}
	
	@RequestMapping(value="storeLogout.do")
	public String storeLogout(HttpSession session) {
		session.removeAttribute("storeHuman");
		return "back/backIndex";
	}
	
	/**
	 * 后台店铺通过用户名/邮箱/手机号 和密码 登录
	 * @param human
	 * @param out
	 * @param session	
	 */
	@RequestMapping(value = "storeLogin.do")
	public void storeLogin(Human human, PrintWriter out, HttpSession session,String code) {
		// 进行登录操作
		Human userHuman = null;
		Store storeHuman;
		if(code.equalsIgnoreCase((String) session.getAttribute("vscode"))) {
			try {
				userHuman = humanBiz.login(human,1);
			} catch (BizException e) {
				out.print(e.getMessage());
			}
			if(userHuman!=null) {
				try {
					storeHuman=storeBiz.findByHid(userHuman.getHid());
					out.print("OK");
					session.setAttribute("storeHuman", storeHuman);// 将登录成功的用户信息存入到session中
				} catch (BizException e) {
					out.print(e.getMessage());
				}
			}
		}else {
			out.print("验证码错误");
		}
		
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
	public void modifyStoreInfo(Store store,PrintWriter out,HttpSession session){
		String data;
		try {
			storeBiz.changeInfo(store);
			data=new Gson().toJson(Result.getSuccess("修改成功!"));
			session.removeAttribute("storeHuman");
			session.setAttribute("storeHuman", storeBiz.findBySid(store.getSid()));
		} catch (BizException e) {
			data=new Gson().toJson(Result.getFailure(e.getMessage()));
		}
		out.print(data);
	}
	
	
}
