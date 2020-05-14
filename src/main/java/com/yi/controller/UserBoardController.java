package com.yi.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BoardVO;
import com.yi.service.BoardService;

@Controller
@RequestMapping("/user/*")
public class UserBoardController {

	// 서비스 
	@Autowired
	BoardService service;
	
	
	// 커뮤니티 - 탐방기 : 경진
	//register/read/modify/remove/list
	@RequestMapping(value = "/community/cafeReview", method = RequestMethod.GET)
	public String communityReviewList() {
		return "/user/userCommunityReviewList";
	}
	
	@RequestMapping(value = "/community/cafeReview/register", method = RequestMethod.GET)
	public String communityReviewRegisterGet() {
		return "/user/userCommunityReviewRegister";
	}
	
	@RequestMapping(value = "/community/cafeReview/register", method = RequestMethod.POST)
	public String communityReviewRegisterPost() {
		return "/user/userCommunityReviewRegister";
	}
	
	
	// 커뮤니티 - 무까추천 : 아름
	/** 커뮤니티 - MuKKa人 추천 카페 cafeRecommendList : 리스트(list)/등록(register)/상세보기(read)/수정(modify) **/
	//list -- 리스트
	@RequestMapping(value = "/community/cafeRecommend", method = RequestMethod.GET)
	public String communityRecommendList(Model model) throws Exception {
//		System.out.println("------------------test");
		List<BoardVO> list = service.recommendboardList();
		
		for(BoardVO ll : list) {
//			System.out.println(ll);
//			System.out.println(ll.getWritingTitle());
		}
		model.addAttribute("list",list);
		return "/user/userCommunityRecommendList";
	}
	//register -- 글등록
	@RequestMapping(value = "/community/cafeRecommend/register", method = RequestMethod.GET)
	public String communityRecommendRegister() {
		return "/user/userCommunityRecommendRegister";
	}
	
	@RequestMapping(value = "/community/cafeRecommend/register", method = RequestMethod.POST)
	public String communityRecommendRegisterPOST() {
		return "redirect:/user/community/cafeRecommend";
	}
	//read -- 상세보기
	@RequestMapping(value = "/community/cafeRecommend/read", method = RequestMethod.GET)
	public String communityRecommendRead(int boardNo, Model model) throws Exception{
		System.out.println(boardNo);
		BoardVO vo = service.recommendReadByNo(boardNo);
		System.out.println(vo.toString());
		model.addAttribute("board", vo);
		return "/user/userCommunityRecommendRead";
	}
	//modify -- 수정
	@RequestMapping(value = "/community/cafeRecommend/modify", method = RequestMethod.GET)
	public String communityRecommendModify() {
		return "/user/userCommunityRecommendModify";
	}
}
