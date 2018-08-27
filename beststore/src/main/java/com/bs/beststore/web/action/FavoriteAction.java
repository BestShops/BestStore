package com.bs.beststore.web.action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String userCollectionPage(HttpSession session, Model model) {
		Human human = (Human) session.getAttribute("loginHuman");
		List<Map<String, Object>> list = favoriteBiz.findAllFavorite(human.getHid());
		model.addAttribute("list", list);
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
