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

import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.biz.TypeBiz;
import com.bs.beststore.util.Result;
import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.Store;
import com.bs.beststore.vo.Type;
import com.google.gson.Gson;

@Controller
public class GoodsAction {

	@Resource
	private GoodsBiz goodsBiz;
	@Resource
	TypeBiz typeBiz;

	@RequestMapping(path = "goodsQueryPage.do")
	public String goodsQueryPage() {
		return "goodsQuery";
	}

	@RequestMapping(path = "goodsShowPage.do")
	public String goodsShowPage(Goods goods, Model model) {
		List<Map<String, Object>> list = goodsBiz.findAll(goods, 0, 0);
		model.addAttribute("list", list);
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
