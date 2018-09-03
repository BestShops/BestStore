package com.bs.beststore.web.action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.FavoriteBiz;
import com.bs.beststore.vo.Favorite;
import com.bs.beststore.vo.Human;

@Controller
public class FavoriteAction {
	
	@Resource
	private FavoriteBiz favoriteBiz;

	// 收藏夹页面
	@RequestMapping(value="userCollectionPage.do")
	public String userCollectionPage(HttpServletRequest request) {
		Human human = (Human) request.getSession().getAttribute("loginHuman");
		String page=request.getParameter("page");
		if(page==null) {
			page="1";
		}
		int rows=8;	//每页条数
		long total=favoriteBiz.findAllTotal(human.getHid());	//总条数
		int totalPage=(int) (total%rows==0 ? total/rows: total/rows+1);	//总页数
		request.setAttribute("totalPage", totalPage);
		if(Integer.parseInt(page)<=1) {
			page="1";
		}
		if(Integer.parseInt(page)>=totalPage && totalPage>0){
			page=totalPage+"";
		}
		request.setAttribute("page", page);	//当前页数
		List<Map<String, Object>> list = favoriteBiz.findAllFavorite(human.getHid(),Integer.valueOf(page),rows);
		if(list.size()>0) {
			request.setAttribute("list", list);
			request.setAttribute("total", total);
			request.setAttribute("rows", rows);
		}
		return "userCollection";
	}
	
	// 取消收藏
	@RequestMapping(value="removeFavorite.do")
	public void removeFavorite(HttpSession session,Human human, Favorite favorite, PrintWriter out) {
		if(favoriteBiz.removeFavoriteGoods(favorite) == 1) {
			out.print("OK");
		} else {
			out.println("取消收藏失败，请重试！");
		}
		
	}

}
