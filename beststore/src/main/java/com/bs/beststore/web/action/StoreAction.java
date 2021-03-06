package com.bs.beststore.web.action;

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

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.BlogBiz;
import com.bs.beststore.biz.FavoriteBiz;
import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.biz.OrdersBiz;
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
	
	@Resource
	private OrdersBiz ordersBiz;
	
	@Resource
	private FavoriteBiz favoriteBiz;
	
	@Resource
	private BlogBiz blogBiz;
	
	@Resource
	private GoodsBiz goodsBiz;
	
	//店铺列表
	@RequestMapping(value="storeShowPage.todo")
	public String storeShowPage(Model model) {
		List<Map<String,Object>> list=storeBiz.findStoreAndGoods();
		model.addAttribute("list", list);
		return "storeShow";
	}
	
	//店铺详情
	@RequestMapping(value="storeShowInfoPage.todo")
	public String storeShowInfoPage(int sid,Model model) {
		List<Map<String,Object>> list=storeBiz.findStoreGoodsInfo(sid);
		model.addAttribute("list", list);
		return "storeShowInfo";
	}

	
	// 开店用户的信息判断
	@RequestMapping(value="openStoreStep1Page.do")
	public String openStoreStep1Page(HttpSession session, Model model){
		Human human = (Human) session.getAttribute("loginHuman");
		if (humanBiz.check(human)) {
			// 如果用户信息完整
			Store storeInfo=storeBiz.findByHid(human.getHid());
			if (storeInfo == null) {
				return "openStoreStep1"; 
			} else if (storeInfo.getSstatus()==0) {
				model.addAttribute("error", "您的店铺因违规行为已被封禁，您暂无开店资格!");
				return "openStore";
			}else{													
				model.addAttribute("error", "您已经创建过店铺了，<a href='backPage.todo' target='_blank'><Strong>去管理我的店铺</Strong></a>");
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
		if (store.getSdesc().length() > 50 || store.getSdesc().length() < 8) {
			model.addAttribute("error2", "店铺描述应该在8-50个字之间");
			model.addAttribute("errorStore", store);
			return "openStoreStep2";
		}
		Human human = (Human) session.getAttribute("loginHuman");
		store.setHid(human.getHid());
		store.setSgrade(10.0);
		storeBiz.register(store);
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
	public void findAllStore(Store store,PrintWriter out,HttpServletRequest request){
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
		List<Map<String,Object>> list=storeBiz.findAll(store,intPage,intRows);
		long total=storeBiz.findAllTotal(store);
		Map<String,Object> data=new HashMap<String,Object>();
		data.put("rows", list);
		data.put("total", total);
		out.print(new Gson().toJson(data));
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
	
	/**
	 * 下架、上架店铺
	 */
	@RequestMapping(value="operateStoreStatus.do")
	public void operateStoreStatus(Store store,PrintWriter out) {
		String data;
		int result=storeBiz.updateStoreStatus(store);
		if(result>0) {
			data=new Gson().toJson(Result.getSuccess("操作成功!"));
		}else {
			data=new Gson().toJson(Result.getFailure("操作失败!"));
		}
		out.print(data);
	}
	
	// 个人主页
	@RequestMapping("welcomePage.do")
	public String welcomePage(Integer type, HttpSession session, Model model) {
		if (type == null) {
			type = 10;
		}
		Human loginHuman=(Human) session.getAttribute("loginHuman");
		if(loginHuman==null) {
			return "login";
		}
		int[] counts = new int[5];
		for (int i = 0; i < 5; i++) {
			counts[i] = ordersBiz.getCount(loginHuman.getHid(), i);
		}
		Store store=storeBiz.findByHid(loginHuman.getHid());
		model.addAttribute("favorites", favoriteBiz.getCount(loginHuman.getHid()));// 收藏夹数量
		model.addAttribute("blogs", blogBiz.getCount(loginHuman.getHid()));// 发表的博客数量
		model.addAttribute("counts", counts);// 各类订单数
		model.addAttribute("orderlist", ordersBiz.findOrderByHid(loginHuman.getHid(), 1, type));
		model.addAttribute("type", type);// 订单的类别
		model.addAttribute("goodsList", goodsBiz.findGoodsOrderByNum());//热销商品的信息
		if(store==null) {
			model.addAttribute("status", 0);
		}else {
			model.addAttribute("status", 1);
		}
		return "welcome";
	}
	
	
	/**
	 * 通过点击跳转商店
	 */
	@RequestMapping("showStore.do")
	public String showStore(Store store, Model model) {
		// 查出商店信息，传给页面
		store = storeBiz.findBySid(store.getSid());
		model.addAttribute("store", store);
		// 查出商品信息，传给页面
		List<Map<String, Object>> goods = goodsBiz.findBySid(store.getSid(), 0, 1000);  //如果要做翻页再自己进行修改
		model.addAttribute("goods", goods);
		return "store";
	}
	
}
