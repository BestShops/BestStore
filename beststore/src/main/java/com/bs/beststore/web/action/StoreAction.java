package com.bs.beststore.web.action;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	// 开店用户的信息判断
	@RequestMapping(value="openStoreStep1Page.do")
	public String openStoreStep1Page(HttpSession session, Model model){
		Human human = (Human) session.getAttribute("loginHuman");
		if (humanBiz.check(human)) {
			// 如果用户信息完整
			if (storeBiz.findByHid(human.getHid()) == null) {
				return "openStoreStep1"; 
			} else {
				model.addAttribute("error", "您已经创建过店铺了，可以在<Strong>我的U袋</Strong>中进入店铺管理");
				return "openStore";
			}
		} else {
			model.addAttribute("error", "用户信息不完整，请完善信息后再继续创建店铺");
			return "openStore";
		}
	}
	

	// 开店
	@RequestMapping(value="openStoreStep3Page.do")
	public String openStoreStep3Page(HttpSession session, Store store, Model model){
		if (storeBiz.findByName(store).size() != 0) {
			model.addAttribute("error1", "该店铺名已被使用");
			model.addAttribute("errorStore", store);
			return "openStoreStep2";
		}
		String desc = store.getSdesc();
		System.out.println(desc + desc.length());
		if (store.getSdesc().length() > 50 || store.getSdesc().length() < 8) {
			model.addAttribute("error2", "店铺描述应该在8-50个字之间");
			model.addAttribute("errorStore", store);
			return "openStoreStep2";
		}
		storeBiz.register(store);
		Human human = (Human) session.getAttribute("loginHuman");
		humanBiz.changeStatus(human.getHid(), 1);
		return "openStoreStep3";
	}
	
	/**
	 * 后台店铺通过用户名/邮箱/手机号 和密码 登录
	 * @param human
	 * @param out
	 * @param session	
	 */
	@RequestMapping(value = "storeLogin.todo")
	public void storeLogin(Human human, PrintWriter out, HttpSession session,String code) {
		// 进行登录操作
		Human userHuman = null;
		if(code.equalsIgnoreCase((String) session.getAttribute("vscode"))) {
			try {
				userHuman = humanBiz.login(human,1);
			} catch (BizException e) {
				out.print(e.getMessage());
			}
			if(userHuman!=null) {
				Store storeHuman=storeBiz.findByHid(userHuman.getHid());
				if (storeHuman != null) {
					out.print("OK");
					session.setAttribute("storeHuman", storeHuman);// 将登录成功的用户信息存入到session中
				} else {
					out.print("您的店铺不存在已经被下架");
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
