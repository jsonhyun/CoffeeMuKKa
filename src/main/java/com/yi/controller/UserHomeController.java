package com.yi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserHomeController {

	// 서비스 
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String userHome() {
		return "/user/userHome";
	}
	
	// 레이아웃 샘플페이지 
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public String sample() {
		return "/user/sample";
	}
	
	
	// 커피무까
	@RequestMapping(value = "/mukkaCafe", method = RequestMethod.GET)
	public String cafeHome() {
		return "/user/userMukkaCafeHome";
	}
	

	// 커뮤니티 
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String communityHome() {
		return "/user/userCommunityHome";
	}
	
	
}
