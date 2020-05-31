package com.yi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.CafeCdt;
import com.yi.domain.CafeVO;
import com.yi.service.BoardService;
import com.yi.service.CafeService;

@Controller
@RequestMapping("/admin/*")
public class AdminHomeController {
	
	// 서비스 
	@Autowired
	private CafeService cafeService;
	@Autowired
	private BoardService boardService;
	
	// admin home
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		CafeVO vo = new CafeVO();
		vo.setCafeCdt(CafeCdt.WAITING);
		int cafeWaitingCnt = cafeService.cafeWaitingCnt(vo);
		int todayCafeReviewCnt = boardService.todayBoardCount(1);
		int yesterDayCafeReviewCnt = boardService.yesterDayCafeReviewCnt(1);
		int todayRecommendCnt = boardService.todayBoardCount(2);
		int yesterDayRecommendCnt = boardService.yesterDayCafeReviewCnt(2);
		
		model.addAttribute("cafeWaitingCnt", cafeWaitingCnt);
		model.addAttribute("todayCafeReviewCnt", todayCafeReviewCnt);
		model.addAttribute("yesterDayCafeReviewCnt", yesterDayCafeReviewCnt);
		model.addAttribute("todayRecommendCnt", todayRecommendCnt);
		model.addAttribute("yesterDayRecommendCnt", yesterDayRecommendCnt);
		
		return "/admin/adminHome";
	}
	
	
}
