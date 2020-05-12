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
	
	
	
	
	// 커뮤니티 : 경진
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
	
	
	
	// 커뮤니티 : 아름
	/** 커뮤니티 - MuKKa人 추천 카페 cafeRecommendList : 리스트(list)/등록(register)/상세보기(read)/수정(modify) **/
	//list
	@RequestMapping(value = "/community/cafeRecommend", method = RequestMethod.GET)
	public String communityRecommendList() {
		return "/user/userCommunityRecommendList";
	}
	//register
	@RequestMapping(value = "/community/cafeRecommend/register", method = RequestMethod.GET)
	public String communityRecommendRegister() {
		return "/user/userCommunityRecommendRegister";
	}
	
//	@RequestMapping(value = "/community/cafeRecommend/register", method = RequestMethod.POST)
//	public String communityRecommendRegisterPOST() {
//		return "redirect:/user/community/cafeRecommend";
//	}
	//read
	@RequestMapping(value = "/community/cafeRecommend/read", method = RequestMethod.GET)
	public String communityRecommendRead() {
		return "/user/userCommunityRecommendRead";
	}
	//modify
	@RequestMapping(value = "/community/cafeRecommend/modify", method = RequestMethod.GET)
	public String communityRecommendModify() {
		return "/user/userCommunityRecommendModify";
	}
}
