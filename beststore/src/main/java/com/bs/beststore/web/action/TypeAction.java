package com.bs.beststore.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.TypeBiz;
import com.bs.beststore.util.Result;
import com.bs.beststore.vo.Type;
import com.google.gson.Gson;

@Controller
public class TypeAction {

	@Resource
	private TypeBiz typeBiz;

	/**
	 * 添加和修改商品类别
	 * @param type	商品类别
	 * @throws BizException 
	 */
	@SuppressWarnings("null")
	@RequestMapping(value="goodsType.do")
	public void goodsType(Type type, PrintWriter out,String op,HttpServletRequest request) throws BizException{
		String data = null;
		if("add".equals(op)) {
			String tid1 = request.getParameter("type1");
			String tid2 = request.getParameter("type2");
			String tparentname = request.getParameter("tparentname");
			if( (tid2!=null || tid2.trim().equals("") ) && ( tparentname == null || "".equals( tparentname.trim() ) )) {
				type.setTparentid( Integer.valueOf(tid1) );
				type.setTpriname(tid2);
			}else if(tid2.matches("^[0-9]*$")){
				type.setTparentid( Integer.valueOf(tid2) );
				type.setTpriname(tparentname);
			}else {
				List<Type> list = typeBiz.findTidByTname(tid2);
				type.setTparentid(list.get(0).getTid());
				type.setTpriname(tid2);
			}
			if (typeBiz.addType(type) == 1) {
				data=new Gson().toJson(Result.getSuccess("添加成功!"));
			} else {
				data=new Gson().toJson(Result.getFailure("添加失败!"));
			}
		}else if("modify2".equals(op)) {
			String tid2 = request.getParameter("tid2");
			String tpriname2 = request.getParameter("tname2");
			type.setTid( Integer.valueOf(tid2) );
			type.setTpriname(tpriname2);
			if (typeBiz.modifyType(type)== 1) {
				data=new Gson().toJson(Result.getSuccess("修改成功!"));
			} else {
				data=new Gson().toJson(Result.getFailure("修改失败!"));
			}
		}else if("modify3".equals(op)) {
			String tid3 = request.getParameter("tid3");
			String tpriname3 = request.getParameter("tname3");
			type.setTid( Integer.valueOf(tid3) );
			type.setTpriname(tpriname3);
			if (typeBiz.modifyType(type)== 1) {
				data=new Gson().toJson(Result.getSuccess("修改成功!"));
			} else {
				data=new Gson().toJson(Result.getFailure("修改失败!"));
			}
		}
		out.print(data);
	}


	/**
	 * 移除商品类别
	 * @param type
	 * @throws BizException 
	 */
	@RequestMapping(value="removeType.do")
	public void removeType(Type type,PrintWriter out) throws BizException{
		String data = null;
		int result = typeBiz.removeType(type);
		if(result>0) {
			data = new Gson().toJson(Result.getSuccess("删除成功!"));
		}else if(result == -1){
			data = new Gson().toJson(Result.getFailure("该类别下有子类别，删除失败!"));
		}else if(result == -2){
			data = new Gson().toJson(Result.getFailure("该类别下有商品，删除失败!"));
		}
		out.print(data);
	}

	/**
	 * 查找父类信息
	 * @throws IOException 
	 */
	@RequestMapping(value="findAllInfo.do")
	public void findAllInfo(HttpServletResponse response,String tid1,String tid2) throws IOException {
		List<Map<String,Object>> list = null;
		if(tid1!=null && tid1!="" && !tid1.equals("")) {
			list=typeBiz.selectSecondInfo(Integer.valueOf(tid1));
			String s=new Gson().toJson(list);
			response.getWriter().print(s);
		}else if(tid2!=null && tid2!="" && !tid2.equals("")) {
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
