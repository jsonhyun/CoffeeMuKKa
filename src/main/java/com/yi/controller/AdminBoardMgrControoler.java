package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BoardVO;
import com.yi.domain.CafeCdt;
import com.yi.domain.CafeVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.BoardService;
import com.yi.service.CafeService;

@Controller
@RequestMapping("/admin/boardMgr/*")
public class AdminBoardMgrControoler {
	
	@Autowired
	private BoardService service;
	
	//신규 등록 카페 승인
//	@RequestMapping(value = "newCafe", method = RequestMethod.GET)
//	public String newCafe(SearchCriteria cri, Model model) throws Exception {
//		CafeVO vo = new CafeVO();
//		vo.setCafeCdt(CafeCdt.WAITING);
//		
//		List<CafeVO> list = service.adminNewCafeList(vo, cri);
//		PageMaker pageMater = new PageMaker();
//		pageMater.setCri(cri);
//		pageMater.setTotalCount(service.cafeWaitingCntAndKeyword(vo, cri));
//		
//		model.addAttribute("list", list);
//		model.addAttribute("cri", cri);
//		model.addAttribute("pageMaker", pageMater);
//		return "/admin/adminNewCafeMgr";
//	}
	
	
	
	// 탐방기 관리
	@RequestMapping(value = "cafeReviewMgr", method = RequestMethod.GET)
	public String cafeMgr(SearchCriteria cri, Model model) throws Exception {
		int cBoardNo = 1;
		cri.setPerPageNum(10);
		
		List<BoardVO> list = service.adminBoardList(cBoardNo, cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.adminTotalSearchCountJoin(cBoardNo, cri));
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/admin/adminCafeReviewMgr";
	}
	
	// 추천 카페 관리
	@RequestMapping(value = "cafeRecomMgr", method = RequestMethod.GET)
	public String userMgr(SearchCriteria cri, Model model) throws Exception {
		int cBoardNo = 2;
		cri.setPerPageNum(10);
		
		List<BoardVO> list = service.adminBoardList(cBoardNo, cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.adminTotalSearchCountJoin(cBoardNo, cri));
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);
		model.addAttribute("pageMaker", pageMaker);
		return "/admin/adminCafeRecomMgr";
	}
	
}
