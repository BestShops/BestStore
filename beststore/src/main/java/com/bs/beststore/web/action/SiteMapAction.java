package com.bs.beststore.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SiteMapAction {

	@RequestMapping(value="siteMapPage.do")
	public String siteMapPage(){
		return "sitemap";
	}
}
