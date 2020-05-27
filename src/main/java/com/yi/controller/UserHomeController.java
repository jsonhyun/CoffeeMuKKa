package com.yi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BoardVO;
import com.yi.domain.ImageVO;
import com.yi.domain.ZoneVO;
import com.yi.service.BoardService;

@Controller
@RequestMapping("/user/*")
public class UserHomeController {

	// 서비스 
	@Autowired
	private BoardService boardService;
	
	// 유저 메인 홈
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String userHome(Model model) throws Exception {
		List<ZoneVO> zoneList = boardService.zoneList();
		
		System.out.println("zoneList -----------------" + zoneList);
		model.addAttribute("zoneList", zoneList);
		
		//실시간 카페 추천 리스트 & 대표이미지
		List<BoardVO> rclist = boardService.recommendboardList();
		model.addAttribute("rclist",rclist);
		System.out.println("test1=========================="+rclist);
		
		List<ImageVO> rclistImg = new ArrayList<ImageVO>();
		for(int i=0;i<rclist.size();i++) {
			int sboardNo = rclist.get(i).getBoardNo();
			rclistImg.addAll(boardService.recommendboardImgList(sboardNo));	
		}
		System.out.println("test2=========================="+rclistImg);
		model.addAttribute("rclistImg", rclistImg);
		model.addAttribute("error", 0);
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
	

	// 커뮤니티 
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String communityHome() {
		return "/user/userCommunityHome";
	}
	
	
}
