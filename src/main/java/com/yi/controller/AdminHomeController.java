package com.yi.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		// 카페 차트
		List<List<Integer>> charts = new ArrayList<List<Integer>>();
		
		// 탐방기, 추천글 차트
		List<List<Integer>> reviewCht = new ArrayList<List<Integer>>();
		List<List<Integer>> recomCht = new ArrayList<List<Integer>>();

		for(int i=0; i<3; i++) {		
			List<Integer> list = cafeService.adminCafeCntChart(i);
			charts.add(list);
			
			List<Integer> review = boardService.adminBoardCntChart(i, 1);
			reviewCht.add(review);
			
			List<Integer> recom = boardService.adminBoardCntChart(i, 2);
			recomCht.add(recom);
		}
		
		
		model.addAttribute("cafeWaitingCnt", cafeWaitingCnt);
		model.addAttribute("todayCafeReviewCnt", todayCafeReviewCnt);
		model.addAttribute("yesterDayCafeReviewCnt", yesterDayCafeReviewCnt);
		model.addAttribute("todayRecommendCnt", todayRecommendCnt);
		model.addAttribute("yesterDayRecommendCnt", yesterDayRecommendCnt);
		model.addAttribute("charts", charts);
		model.addAttribute("reviewCht", reviewCht);
		model.addAttribute("recomCht", recomCht);
		
		
		return "/admin/adminHome";
	}
	
	
}
