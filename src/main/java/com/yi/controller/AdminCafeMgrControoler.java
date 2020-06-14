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
import com.yi.domain.PowerLinkVO;
import com.yi.domain.SearchCriteria;
import com.yi.service.CafeService;
import com.yi.service.PowerLinkService;

@Controller
@RequestMapping("/admin/cafeMgn/*")
public class AdminCafeMgrControoler {
	
	@Autowired
	private CafeService service;
	
	@Autowired
	private PowerLinkService powerService;
	
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
		
		service.updateCafeCdt(vo);
		
		model.addAttribute("page", cri.getPage());
		model.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/cafeMgn/cafeManager";
	}
	
	
	//월간 카페 등록 및 관리
	@RequestMapping(value = "monthCafeManager", method = RequestMethod.GET)
	public String monthCafeMgr(SearchCriteria cri, Model model) throws Exception {
		cri.setPerPageNum(20);
		
		List<PowerLinkVO> list = powerService.selectAdminMonCafeList(cri);
		
		PageMaker pageMater = new PageMaker();
		pageMater.setCri(cri);
		pageMater.setTotalCount(powerService.selectAdminMonCafeTotalCnt(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);
		model.addAttribute("pageMaker", pageMater);
		
		return "/admin/adminMonthCafeMgr";
	}
	
	
	// 월간 카페 게시일 등록
	@RequestMapping(value = "monthCafeManager/modify", method = RequestMethod.GET)
	public String monthCafeMgrModify(int powNo, SearchCriteria cri, Model model) throws Exception {
		
		powerService.updateAdminMonCafePostDate(powNo);
		
		model.addAttribute("page", cri.getPage());
		model.addAttribute("keyword", cri.getKeyword());
		return "redirect:/admin/cafeMgn/monthCafeManager";
	}
	
	// 월간 카페 게시등록 취소
	@RequestMapping(value = "monthCafeManager/cancelModify", method = RequestMethod.GET)
	public String monthCafeMgrCancelModify(int powNo, int year, int month, SearchCriteria cri, Model model) throws Exception {
		
		powerService.updateAdminMonCafePostCancel(powNo, year, month);
		
		model.addAttribute("page", cri.getPage());
		model.addAttribute("keyword", cri.getKeyword());
//		return "/admin/cafeMgn/monthCafeManager";
		return "redirect:/admin/cafeMgn/monthCafeManager";
	}
}
