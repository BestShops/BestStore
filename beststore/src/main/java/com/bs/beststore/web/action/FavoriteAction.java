package com.bs.beststore.web.action;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FavoriteAction {

	//收藏夹页面
	@RequestMapping(value="userCollectionPage.do")
	public String userCollectionPage(HttpSession session) {
		session.getAttribute("loginHuman.hid");
		return "userCollection";
	}

}
