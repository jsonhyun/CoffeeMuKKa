package com.yi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/*")
public class AdminHomeController {
	
	// 서비스 
	
	
	// admin home
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home() {
		return "/admin/adminHome";
	}
	
	//신규 등록 카페 승인
	@RequestMapping(value = "newCafe", method = RequestMethod.GET)
	public String newCafe() {
		return "/admin/adminNewCafeMgr";
	}
}
