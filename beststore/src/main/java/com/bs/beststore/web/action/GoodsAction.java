package com.bs.beststore.web.action;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bs.beststore.biz.CartBiz;
import com.bs.beststore.biz.DiscussBiz;
import com.bs.beststore.biz.FavoriteBiz;
import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.biz.TypeBiz;
import com.bs.beststore.util.Result;
import com.bs.beststore.vo.Cart;
import com.bs.beststore.vo.Favorite;
import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.Store;
import com.bs.beststore.vo.Type;
import com.google.gson.Gson;

@Controller
public class GoodsAction {

	@Resource
	private GoodsBiz goodsBiz;
	@Resource
	private TypeBiz typeBiz;
	@Resource
	private DiscussBiz discussBiz;
	@Resource
	private CartBiz cartBiz;
	@Resource
	private FavoriteBiz favoriteBiz;

	@RequestMapping(path = "goodsQueryPage.todo")
	public String goodsQueryPage(Goods goods,Type type,HttpServletRequest request,Cart cart) {
		List<Type> firstList=typeBiz.selectFirstInfo();
		request.setAttribute("firstList", firstList);
		String tid2=request.getParameter("tid2");
		if(tid2==null || tid2=="" || tid2.equals("")) {
			tid2="0";
		}
		String price1=request.getParameter("price1");
		String price2=request.getParameter("price2");
		String page=request.getParameter("page");
		String order=request.getParameter("order");
		if(page==null || page=="" || page.equals("")) {
			page="1";
		}
		if(price1==null || price1=="" || price1.equals("")) {
			price1="0";
		}
		if(price2==null || price2=="" || price2.equals("")) {
			price2="0";
		}
		if(order==null || order=="" ||order.equals("")) {
			order="0";
		}
		int rows=20;	//每页条数
		long total=goodsBiz.goodsCountByGoods(goods,type,Integer.valueOf(tid2.trim()),Integer.valueOf(price1),Integer.valueOf(price2));	//总条数
		int totalPage=(int) (total%rows==0 ? total/rows: total/rows+1);	//总页数
		request.setAttribute("totalPage", totalPage);
		if(Integer.parseInt(page)<=1) {
			page="1";
		}
		if(Integer.parseInt(page)>=totalPage && totalPage>0){
			page=totalPage+"";
		}
		request.setAttribute("page", page);	//当前页数
		List<Map<String, Object>> list = goodsBiz.goodsQuery(goods,type,Integer.valueOf(tid2),Integer.valueOf(price1),Integer.valueOf(price2),Integer.valueOf(page), rows,Integer.valueOf(order));
		request.setAttribute("goodsQueryList", list);
		request.setAttribute("total", total);
		request.setAttribute("rows", rows);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("order", order);
		if(type.getTid()!=null) {
			request.setAttribute("typeTid", type.getTid());
			request.setAttribute("typeTname", typeBiz.findByTid(type.getTid()).getTpriname());
			request.setAttribute("typeInfo2", typeBiz.selectSecondInfo(type.getTid()));
		}
		if(tid2!="0") {
			request.setAttribute("typeTid2", Integer.valueOf(tid2));
			request.setAttribute("typeTname2", typeBiz.findByTid(Integer.valueOf(tid2)).getTpriname());
		}
		if(price1=="0" && price2=="0") {
			request.setAttribute("priceSize", 1);
		}else {
			request.setAttribute("priceSize", price1);
			request.setAttribute("price1", price1);
			request.setAttribute("price2", price2);
		}
		request.setAttribute("gname", goods.getGname());
		return "goodsQuery";
	}

	@RequestMapping(path = "goodsShowPage.todo")
	public String goodsShowPage(Goods goods, Model model,String color,String size, HttpSession session){
		Human human = (Human) session.getAttribute("loginHuman");
		//收藏商品的判断
		if(human!=null) {
			List<Favorite> collectionGoods=favoriteBiz.findFavoriteByHidAndGid(human.getHid(), goods.getGid());
			System.out.println(collectionGoods.get(0).getFstatus()+"--");
			model.addAttribute("collectionGoods", collectionGoods.get(0));
		}
		List<Favorite> collectionGoods=favoriteBiz.findFavoriteByHidAndGid(human.getHid(), goods.getGid());
		if(collectionGoods==null) {
			model.addAttribute("collectionGoods", null);
		}else {
			model.addAttribute("collectionGoods", collectionGoods.get(0));
		}
		// 查询商品详情 根据gid查询
		List<Map<String, Object>> list = goodsBiz.findAll(goods, 0, 0);
		// 查询商品的相关评价
		List<Map<String, Object>> discussList = discussBiz.findAll(goods.getGid());
		// 查询相关产品，实现相关推荐 根据tid查询
		goods.setGid(null);
		goods.setTid((Integer) list.get(0).get("TID"));
		List<Map<String, Object>> linkList = goodsBiz.findAll(goods, 0, 0);
		model.addAttribute("list", list);
		model.addAttribute("discussList", discussList);
		model.addAttribute("linkList", linkList);
		// 修改购物车数量信息
		if (session.getAttribute("loginHuman") != null) {
			Long cartCount = cartBiz.countByHid(human.getHid());
			session.setAttribute("cartCount", cartCount);
			long favoriteGoods=favoriteBiz.findAllTotal(human.getHid());
			session.setAttribute("favoriteGoods", favoriteGoods);
		}
		if(color==null || color.equals("")) {
			model.addAttribute("color", 1);
		}else {
			model.addAttribute("color", color);
		}
		if(size==null || size.equals("")) {
			model.addAttribute("size", 1);
		}else {
			model.addAttribute("size", size);
		}
		return "goodsShow";
	}

	@RequestMapping(value="matchPage.do")
	public String matchPage() {
		return "match";
	}

	/**
	 * 添加和修改商品信息
	 * @param goods	商品信息（包含类别id）
	 * @param session	从会话中获取店铺id
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping(value="storeAddGoods.do")
	public void addGoods(@RequestParam("file") MultipartFile file,Goods goods,HttpSession session, PrintWriter out,String op,String tid1) throws IllegalStateException, IOException{
		if(!"".equals(tid1.trim()) && tid1!=null) {
			if(tid1.matches("^[0-9]*$")) {
				goods.setTid(Integer.valueOf(tid1));
			}else {
				Type typeInfo=typeBiz.findTidByTname(tid1).get(0);
				goods.setTid(typeInfo.getTid());
			}
		}
		String data = null;
		if(goods.getTid()!=null) {
			if(!file.isEmpty()) {
				String diskPath=session.getServletContext().getRealPath("/upload");
				String fileName=file.getOriginalFilename();
				File f=new File(diskPath+File.separator+fileName);
				if(!f.exists()) {
					f.mkdirs();
				}
				file.transferTo(f);
				goods.setGphotopic(fileName);
			}
			if(goods.getGphotopic()==null) {
				goods.setGphotopic(goodsBiz.findByGid(goods.getGid()).getGphotopic());
			}
			Store store = (Store) session.getAttribute("storeHuman");
			goods.setSid(store.getSid());
			if("add".equals(op)) {
				if (goodsBiz.addGoods(goods) == 1) {
					data=new Gson().toJson(Result.getSuccess("添加成功!"));
				} else {
					data=new Gson().toJson(Result.getFailure("添加失败!"));
				}
			}else if("modify".equals(op)) {
				if (goodsBiz.modifyGoods(goods) == 1) {
					data=new Gson().toJson(Result.getSuccess("修改成功!"));
				} else {
					data=new Gson().toJson(Result.getFailure("修改失败!"));
				}
			}
		}else {
			data=new Gson().toJson(Result.getFailure("请选择商品分类!"));
		}
		out.print(data);
	}


	/**
	 * 查询店铺所有商品或者某个商品(具体查询)
	 * @param goods	可以根据商品id、商品类型、店铺id、商品状态来查询，若为null则查询本店所有商品
	 * @param session	从会话中获取店铺id
	 */
	@RequestMapping(value="goodsFindAll.do")
	public void findAll(Goods goods,HttpServletRequest request,PrintWriter out){
		Store storeHuman=(Store) request.getSession().getAttribute("storeHuman");
		goods.setSid(storeHuman.getSid());
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
		List<Map<String,Object>> list=goodsBiz.findAll(goods,intPage,intRows);
		long total=goodsBiz.findAllTotal(goods);
		Map<String,Object> data=new HashMap<String,Object>();
		data.put("rows", list);
		data.put("total", total);
		out.print(new Gson().toJson(data));
	}

	/**
	 * 商品审核
	 * @param goods	可以根据商品id、商品类型、店铺id、商品状态来查询，若为null则查询本店所有商品
	 */
	@RequestMapping(value="goodsExamine.do")
	public void goodsExamine(Goods goods,HttpServletRequest request,PrintWriter out){
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
		goods.setGstatus(0);
		List<Map<String,Object>> list=goodsBiz.findAll(goods,intPage,intRows);
		long total=goodsBiz.findAllTotal(goods);
		Map<String,Object> data=new HashMap<String,Object>();
		data.put("rows", list);
		data.put("total", total);
		out.print(new Gson().toJson(data));
	}

	/**
	 * 下架、删除、上架
	 */
	@RequestMapping(value="operateGoods.do")
	public void operateGoods(Goods goods,PrintWriter out) {
		String data;
		int result=goodsBiz.updateGstatus(goods);
		if(result>0) {
			data=new Gson().toJson(Result.getSuccess("操作成功!"));
		}else {
			data=new Gson().toJson(Result.getFailure("操作失败!"));
		}
		out.print(data);
	}

	/**
	 * 通过关键字查找商品(模糊查询)
	 * @param goods	商品名、价格
	 * @param session	从会话中获取店铺id
	 */
	public void findByKeyWord(Goods goods,HttpSession session){

	}





}
