package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.CafeCdt;
import com.yi.domain.CafeVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.CafeService;

@Controller
@RequestMapping("/admin/cafeMgn/*")
public class AdminCafeMgrControoler {
	
	@Autowired
	private CafeService service;
	
	//신규 등록 카페 승인
	@RequestMapping(value = "newCafeManager", method = RequestMethod.GET)
	public String newCafe(SearchCriteria cri, Model model) throws Exception {
		CafeVO vo = new CafeVO();
		vo.setCafeCdt(CafeCdt.WAITING);
		
		List<CafeVO> list = service.adminNewCafeList(vo, cri);
		PageMaker pageMater = new PageMaker();
		pageMater.setCri(cri);
		pageMater.setTotalCount(service.cafeWaitingCntAndKeyword(vo, cri));
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);
		model.addAttribute("pageMaker", pageMater);
		return "/admin/adminNewCafeMgr";
	}
	
	// 등록 승인
	@RequestMapping(value = "newCafeManager/modify", method = RequestMethod.GET)
	public String newCafeModify(int cafeNo ,SearchCriteria cri, Model model) throws Exception {
		
		service.updateNewCafeCdt(cafeNo);
		
		model.addAttribute("page", cri.getPage());
		model.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/cafeMgn/newCafeManager";
	}
	
	// 카페 관리
	@RequestMapping(value = "cafeManager", method = RequestMethod.GET)
	public String cafeMgr(SearchCriteria cri, Model model) throws Exception {
		CafeVO vo = new CafeVO();
		vo.setCafeCdt(CafeCdt.WAITING); // select 조건 -> where c.cafe_cdt != #{vo.cafeCdt} 이기 때문에 WAITING를 사용
		
		List<CafeVO> list = service.adminCafeList(vo, cri);
		PageMaker pageMater = new PageMaker();
		pageMater.setCri(cri);
		pageMater.setTotalCount(service.cafeWaitingCntAndKeyword(vo, cri));
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);
		model.addAttribute("pageMaker", pageMater);
		
		return "/admin/adminCafeMgr";
	}
	
	// 카페 운영/폐업 등록
	@RequestMapping(value = "cafeManager/modify", method = RequestMethod.GET)
	public String cafeMgrModify(int cafeNo, int cafeCdt, SearchCriteria cri, Model model) throws Exception {
		CafeVO vo = new CafeVO();
		vo.setCafeNo(cafeNo);
		
		if(cafeCdt == 2) {
			vo.setCafeCdt(CafeCdt.CLOSING);
		} 
		
		System.out.println("vo---------------------" + vo);
		service.updateCafeCdt(vo);
		
		model.addAttribute("page", cri.getPage());
		model.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/cafeMgn/cafeManager";
	}
	
	
	//월간 카페 등록 및 관리
	@RequestMapping(value = "monthCafeManager", method = RequestMethod.GET)
	public String monthCafeMgr() {
		return "/admin/adminMonthCafeMgr";
	}
	
}
