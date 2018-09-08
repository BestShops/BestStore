package com.bs.beststore.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.biz.OrdersdetailBiz;
import com.bs.beststore.biz.StoreBiz;
import com.bs.beststore.biz.TypeBiz;
import com.bs.beststore.util.AccountValidatorUtil;
import com.bs.beststore.util.CodeUtil;
import com.bs.beststore.util.MailUtil;
import com.bs.beststore.util.SmsUtil;
import com.bs.beststore.util.VerifyCodeUtil;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.Store;
import com.bs.beststore.vo.Type;

/**
 * jsp页面的静态跳转
 */
@Controller
public class IndexAction {

	@Resource
	private TypeBiz typeBiz;
	@Resource
	private GoodsBiz goodsBiz;
	@Resource
	private HumanBiz humanBiz;
	@Resource
	private StoreBiz storeBiz;
	@Resource
	private OrdersdetailBiz ordersdetailBiz;

	@RequestMapping(path = "addd.todo")
	public String add() {
		return "address1";
	}
	
	// 超级管理员登录界面
	@RequestMapping(path = "superLoginPage.todo")
	public String superLoginPage() {
		return "superback/backIndex";
	}

	// 超级管理员主界面
	@RequestMapping(path = "superManagePage.todo")
	public String superManagePage(HttpSession session) {
		if (session.getAttribute("superHuman") == null) {
			return "redirect:/superLoginPage.todo";
		}
		return "superback/superManage";
	}

	// 超级管理员管理所有店铺信息页面
	@RequestMapping(path = "manageStorePage.do")
	public String manageStorePage() {
		return "superback/manageStore";
	}

	// 超级管理员管理所有商品分类
	@RequestMapping(path = "goodsTypeManagePage.do")
	public String goodsTypeManagePage() {
		return "superback/goodsTypeManage";
	}

	// 超级管理员审核商品
	@RequestMapping(path = "blogExaminePage.do")
	public String blogExaminePage() {
		return "superback/blogExamine";
	}

	// 超级管理员审核博客
	@RequestMapping(path = "goodsExaminePage.do")
	public String goodsExaminePage() {
		return "superback/goodsExamine";
	}

	@RequestMapping(path = { "/", "index" })
	// 主页
	public String index(Model model, HttpSession session) {
		Human human = (Human) session.getAttribute("loginHuman");
		List<Type> firstList = typeBiz.selectFirstInfo();
		model.addAttribute("firstList", firstList);
		List<Map<String, Object>> list = typeBiz.findTypeToIndex(firstList.get(0).getTid());
		List<Map<String, Object>> lists = typeBiz.selectSecondInfo(firstList.get(0).getTid());
		List<Map<String, Object>> thirdList = typeBiz.selectSonInfoByParent();
		model.addAttribute("thirdList", thirdList);
		model.addAttribute("goodsIndex", list);
		model.addAttribute("secondType", lists);
		List<Map<String, Object>> list1 = typeBiz.findTypeToIndex(firstList.get(1).getTid());
		List<Map<String, Object>> lists1 = typeBiz.selectSecondInfo(firstList.get(1).getTid());
		model.addAttribute("goodsIndex1", list1);
		model.addAttribute("secondType1", lists1);
		List<Map<String, Object>> list2 = typeBiz.findTypeToIndex(firstList.get(2).getTid());
		List<Map<String, Object>> lists2 = typeBiz.selectSecondInfo(firstList.get(2).getTid());
		model.addAttribute("goodsIndex2", list2);
		model.addAttribute("secondType2", lists2);
		List<Map<String, Object>> list3 = typeBiz.findTypeToIndex(firstList.get(3).getTid());
		List<Map<String, Object>> lists3 = typeBiz.selectSecondInfo(firstList.get(3).getTid());
		model.addAttribute("goodsIndex3", list3);
		model.addAttribute("secondType3", lists3);
		List<Map<String, Object>> list4 = typeBiz.findTypeToIndex(firstList.get(4).getTid());
		List<Map<String, Object>> lists4 = typeBiz.selectSecondInfo(firstList.get(4).getTid());
		model.addAttribute("goodsIndex4", list4);
		model.addAttribute("secondType4", lists4);
		List<Map<String, Object>> hotGoodsList = goodsBiz.findHotGoods();
		model.addAttribute("hotGoods", hotGoodsList); // 热销商品
		if (hotGoodsList.size() < 6) {
			List<Map<String, Object>> reduceGoodsList = goodsBiz.reduceHotGoods(6 - hotGoodsList.size());
			model.addAttribute("reduceGoods", reduceGoodsList);
		}
		List<Map<String, Object>> newGoodsList = goodsBiz.reduceHotGoods(5);
		model.addAttribute("newGoods", newGoodsList);
		if (human != null) {
			model.addAttribute("birthTime", humanBiz.birthTime(human));
		}
		model.addAttribute("storeCount",storeBiz.findAllTotal(null));
		return "index";
	}

	// 登录界面
	@RequestMapping(value = "userLoginPage.do")
	public String userLoginPage() {
		return "login";
	}

	// 注册界面
	@RequestMapping(value = "userRegisterPage.do")
	public String userRegisterPage() {
		return "login";
	}

	// 忘记密码界面
	@RequestMapping(value = "resetpwdPage.do")
	public String resetpwdPage() {
		return "login";
	}

	@RequestMapping(value = "aboutUsPage.do")
	public String aboutUsPage() {
		return "aboutUs";
	}

	// u袋学堂界面
	@RequestMapping(path = "classRoomPage.do")
	public String classRoomPage() {
		return "classRoom";
	}

	@RequestMapping("userInfoPage.do")
	// 个人信息
	public String userInfoPage() {
		return "userInfo";
	}

	// 后台店铺管理主界面
	@RequestMapping(path = "backPage.todo")
	public String backPage() {
		return "back/backIndex";
	}

	// 优惠券
	@RequestMapping(value = "couponPage.do")
	public String couponPage() {
		return "coupon";
	}

	// 用户退出
	@RequestMapping(value = "userLogout.do")
	public String userLogout(HttpSession session) {
		session.removeAttribute("loginHuman");
		session.removeAttribute("cartCount");
		return "login";
	}

	// 超级管理员退出
	@RequestMapping(value = "superLogout.do")
	public String superLogout(HttpSession session) {
		session.removeAttribute("superHuman");
		return "redirect:/superLoginPage.todo";
	}

	// 后台店铺管理主界面
	@RequestMapping(path = "backStoreManagePage.todo")
	public String backStoreManagePage(HttpSession session) {
		if (session.getAttribute("storeHuman") == null) {
			return "redirect:/backPage.todo";
		}
		return "back/backStoreManage";
	}

	// 后台店铺信息管理界面
	@RequestMapping(value = "storeInfoPage.do")
	public String storeInfoPage() {
		return "back/storeInfo";
	}

	// 后台店铺商品管理界面
	@RequestMapping(value = "goodsManagePage.do")
	public String goodsManagePage() {
		return "back/goodsManage";
	}

	// 后台店铺订单管理界面
	@RequestMapping(value = "ordersManagePage.do")
	public String ordersManagePage() {
		return "back/ordersManage";
	}

	// 后台店铺订单退货管理界面
	@RequestMapping(value = "ordersReturnManagePage.do")
	public String ordersReturnManagePage() {
		return "back/ordersReturnManage";
	}

	// 后台店铺博客管理界面
	@RequestMapping(value = "blogManagePage.do")
	public String blogManagePage() {
		return "back/blogManage";
	}

	// 后台销量报表查询界面
	@RequestMapping("goodsSaleReportPage.do")
	public String goodsSaleReportPage(HttpSession session, Model model) {
		Store store = (Store) session.getAttribute("storeHuman");
		// 按商店id查出商品名和销量
		List<Map<String, Object>> list = ordersdetailBiz.findGnameAndNum(store.getSid());
		List<String> keyList = new ArrayList<String>();// 用来存放key
		List<Map<String, Object>> valueList = list;// 用来存放value
		
		for(Map<String, Object> m : list) {
			keyList.add((String) m.get("name"));
		}
		model.addAttribute("keyList", keyList);
		model.addAttribute("valueList", valueList);
		return "back/goodsSaleReport";
	}

	@RequestMapping("userModifyPwdPage.do")
	// 修改密码页面1
	public String userModifyPwdPage() {
		return "userModifyPwd";
	}

	@RequestMapping("userModifyPwdStep.do")
	// 修改密码页面2
	public String userModifyPwdStep1() {
		return "userModifyPwdStep1";
	}

	@RequestMapping("userModifyPwdStep2.do")
	// 修改密码页面3
	public String userModifyPwdStep2() {
		return "userModifyPwdStep2";
	}

	@RequestMapping("userModifyPwdStep3.do")
	// 修改密码成功页面
	public String userModifyPwdStep3(HttpSession session) {
		session.removeAttribute("loginHuman");
		return "userModifyPwdStep3";
	}

	// 开店页
	@RequestMapping("openStorePage.do")
	public String openStorePage() {
		return "openStore";
	}

	// 开店信息
	@RequestMapping(value = "openStoreStep2Page.do")
	public String openStoreStep2Page() {
		return "openStoreStep2";
	}

	@RequestMapping(value = "storeManagePage.do")
	public String storeManagePage() {
		return "storeManage";
	}

	@RequestMapping(value = "storeLogout.do")
	public String storeLogout(HttpSession session) {
		session.removeAttribute("storeHuman");
		return "back/backIndex";
	}

	// 验证码
	@RequestMapping(value = "verifyCode.todo")
	public void verifyCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 定义图片大小
		int w = 200, h = 80;
		// 随机生成验证码
		String verifyCode = VerifyCodeUtil.generateVerifyCode(4);
		// 将验证码添加到会话中，注意：在会话中保存的验证码的名称 vscode
		request.getSession().setAttribute("vscode", verifyCode);
		// 图形写给浏览器
		response.setContentType("image/jpeg");
		// 发头控制浏览器不要缓存
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		// 输出图片
		VerifyCodeUtil.outputImage(w, h, response.getOutputStream(), verifyCode);
	}

	@RequestMapping("code.todo")
	// 发送邮件
	public void code(String email, PrintWriter out) {
		CodeUtil cu = new CodeUtil(email);
		// 生成激活码
		String code = cu.generateUniqueCode();
		// 通过线程的方式给用户发送一封邮件或短信
		if (AccountValidatorUtil.isEmail(email)) {
			new Thread(new MailUtil(email, code)).start();
		} else if (AccountValidatorUtil.isMobile(email)) {
			new Thread(new SmsUtil(email, code)).start();
		} else {
			out.print("手机/邮箱输入错误，请重新输入!");
		}
		out.print("OK");
	}

}
