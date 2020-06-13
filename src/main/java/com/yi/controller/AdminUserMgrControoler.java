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
@RequestMapping("/admin/userMgr/*")
public class AdminUserMgrControoler {
	
	@Autowired
//	private CafeService service;
	
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
	
	
	
	// 카페 관리
	@RequestMapping(value = "cafeUserManager", method = RequestMethod.GET)
	public String cafeMgr() {
		return "/admin/adminCafeUserMgr";
	}
	
	// 회원 관리
	@RequestMapping(value = "userManager", method = RequestMethod.GET)
	public String userMgr() {
		return "/admin/adminUserMgr";
	}
	
	// 관리자 관리
	@RequestMapping(value = "adminManager", method = RequestMethod.GET)
	public String adminMgr() {
		return "/admin/adminAdmMgr";
	}
	
}
