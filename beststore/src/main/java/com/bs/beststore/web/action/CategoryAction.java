package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryAction {

	@RequestMapping(value="categoryPage.do")
	public String categoryPage(int page){
		return "category-v"+page;
	}
}
