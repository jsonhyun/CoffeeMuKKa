package com.yi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.CafeService;

@Controller
@RequestMapping("/user/*")
public class UserCafeController {
	
	// 서비스
	@Autowired
	CafeService service;
	
	@RequestMapping(value = "/mukkaCafe/zone", method = RequestMethod.GET)
	public String cafeZoneList(SearchCriteria cri, Model model) throws Exception {
		
		List<CafeVO> list = service.listSearchCriteria(cri);
		List<ImageVO> imgList = new ArrayList<ImageVO>();
		List<Integer> starpointList = new ArrayList<Integer>();
		for(int i=0; i<list.size();i++) {
			int cafeNo = list.get(i).getCafeNo();
			imgList.add(service.imgSelect(cafeNo));
			starpointList.add(service.starpointSelect(cafeNo));
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("list", list);
		model.addAttribute("imgList", imgList);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("starpoint", starpointList);
		
		return "/user/userMukkaCafeZoneList";
	}
	
	@RequestMapping(value = "/mukkaCafe/read", method = RequestMethod.GET)
	public String cafeZoneRead() throws Exception {
		
		return "/user/userMukkaCafeZoneRead";
	}
	
}
