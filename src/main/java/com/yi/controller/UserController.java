package com.yi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserController {

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
	
	@RequestMapping(value = "/mukkaCafe/zone", method = RequestMethod.GET)
	public String cafeZoneList() {
		return "/user/userMukkaCafeZoneList";
	}
	
	
	
	
	// 커뮤니티
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String communityHome() {
		return "/user/userCommunityHome";
	}
	
	@RequestMapping(value = "/community/cafeReview", method = RequestMethod.GET)
	public String communityReviewList() {
		return "/user/userCommunityReviewList";
	}
	
	@RequestMapping(value = "/community/cafeReview/register", method = RequestMethod.GET)
	public String communityReviewRegister() {
		return "/user/userCommunityReviewForm";
	}
	
	//register/read/modify/remove/list
}
