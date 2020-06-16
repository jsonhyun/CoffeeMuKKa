package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.AdminVO;
import com.yi.domain.CafeCdt;
import com.yi.domain.CafeVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.domain.UsersVO;
import com.yi.service.AdminService;
import com.yi.service.CafeService;
import com.yi.service.UsersService;

@Controller
@RequestMapping("/admin/userMgr/*")
public class AdminUserMgrControoler {
	
	@Autowired
	private UsersService service;
	
	@Autowired
	private AdminService adminService;
	
	// 카페 점주 관리
	@RequestMapping(value = "cafeUserManager", method = RequestMethod.GET)
	public String cafeMgr(SearchCriteria cri, Model model) throws Exception {
		int userType = 1;
		
		List<UsersVO> list = service.selectUserList(userType, cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.selectUserListTotalCnt(userType, cri));
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);
		model.addAttribute("pageMaker", pageMaker);
		return "/admin/adminCafeUserMgr";
	}
	
	// 회원 관리
	@RequestMapping(value = "userManager", method = RequestMethod.GET)
	public String userMgr(SearchCriteria cri, Model model) throws Exception {
		int userType = 2;
		
		List<UsersVO> list = service.selectUserList(userType, cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.selectUserListTotalCnt(userType, cri));
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/admin/adminUserMgr";
	}
	
	// 관리자 관리
	@RequestMapping(value = "adminManager", method = RequestMethod.GET)
	public String adminMgr(SearchCriteria cri, Model model) throws Exception {
		
		List<AdminVO> list = adminService.selectAdminList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminService.selectAdminTotalCnt(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("cri", cri);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/admin/adminAdmMgr";
	}
	
}
