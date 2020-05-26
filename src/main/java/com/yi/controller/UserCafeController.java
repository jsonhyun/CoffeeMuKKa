package com.yi.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BoardVO;
import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.MenuKindsVO;
import com.yi.domain.MenuVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.domain.ThemeVO;
import com.yi.service.BoardService;
import com.yi.service.CafeService;
import com.yi.service.ThemeService;

@Controller
@RequestMapping("/user/*")
public class UserCafeController {
	
	// 서비스
	@Autowired
	CafeService service;
	
	@Autowired
	ThemeService themeService;
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping(value = "/mukkaCafe/zone", method = RequestMethod.GET)
	public String cafeZoneList(SearchCriteria cri, Model model) throws Exception {
		
		List<CafeVO> list = service.listSearchCriteria(cri);
		List<ImageVO> imgList = new ArrayList<ImageVO>();
		List<Integer> starpointList = new ArrayList<Integer>();
		List<Integer> reviewNum = new ArrayList<Integer>();
		
		for(int i=0; i<list.size();i++) {
			int cafeNo = list.get(i).getCafeNo();
			imgList.add(service.imgSelect(cafeNo));
			starpointList.add(service.starpointSelect(cafeNo));
			reviewNum.add(service.countReviewNum(cafeNo));
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("list", list);
		model.addAttribute("imgList", imgList);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("starpoint", starpointList);
		model.addAttribute("reviewNum", reviewNum);
		
		return "/user/userMukkaCafeZoneList";
	}
	
	@RequestMapping(value = "/mukkaCafe/zone/read", method = RequestMethod.GET)
	public String cafeZoneRead(int cafeNo, boolean flag, SearchCriteria cri, Model model) throws Exception {
		/* 카페 기본 정보 검색 */
		CafeVO cafe = service.readCafe(cafeNo);
		
		/* 카페 테마 순위 검색 */
		List<ThemeVO> themeList = service.rankTheme(cafeNo);

		List<Integer> themeRank = new ArrayList<Integer>();
		for(int i=0;i<themeList.size();i++) {
			themeRank.add(themeList.get(i).getThemeNo());
		}
		
		/* 카페 이미지 리스트 검색 */
		List<ImageVO> imgList = service.imgList(cafeNo);
		
		/* 카페 별점 검색 */
		Double starpoint = service.starpoint(cafeNo);//소수점 점수
		int starpointSelect = service.starpointSelect(cafeNo);//반올림 점수
		
		/* 카페 별점 변화 추이(월별) */
		List<Integer> pointList = new ArrayList<Integer>();
		for(int i=1;i<13;i++) {
			int point = service.starpointByMonth(cafeNo, i);
			pointList.add(point);
			if(point == 0) {
				break;
			}
		}
		/* 카페 메뉴 검색 */
		List<MenuKindsVO> menuName = service.sortNameSelect(cafeNo);
		List<MenuVO> menuList = service.menuList(cafeNo);
		
		
		model.addAttribute("cafe", cafe);
		model.addAttribute("themeRank", themeList);
		model.addAttribute("imgList", imgList);
		model.addAttribute("starpoint", starpoint);
		model.addAttribute("starpointSelect", starpointSelect);
		model.addAttribute("pointList", pointList);
		model.addAttribute("menuName", menuName);
		model.addAttribute("menuList", menuList);
		
		/* 같은 카페의 탐방기 */
		CafeVO cafeVO = new CafeVO();
		cafeVO.setCafeNo(cafeNo);
		BoardVO boardVO = new BoardVO();
		boardVO.setCafeNo(cafeVO);
		
		List<BoardVO> sameVo = boardService.cafeReviewSameListByCafeNo(boardVO);
		int sameCnt = boardService.cafeReivewSameCntByCafeNo(boardVO);

		model.addAttribute("sameBoard", sameVo);
		model.addAttribute("sameCnt", sameCnt);

		return "/user/userMukkaCafeZoneRead";
	}
	
	
	// 경진 추가 --------------------------------------------------------------------------------------------------------------
	// 메인 메뉴 검색
	@RequestMapping(value = "/mukkaCafe/search", method = RequestMethod.GET)
	public String cafeMainSearch(int zoneNo, String themeNos, SearchCriteria cri, Model model) throws Exception {
		
		List<CafeVO> list = service.cafeMainSearch(zoneNo, themeNos, cri);
		List<ImageVO> imgList = new ArrayList<ImageVO>();
		List<Integer> starpointList = new ArrayList<Integer>();
		List<Integer> reviewNum = new ArrayList<Integer>();
		
		for(int i=0; i<list.size(); i++) {
			int cafeNo = list.get(i).getCafeNo();
			imgList.add(service.imgSelect(cafeNo));
			starpointList.add(service.starpointSelect(cafeNo));
			reviewNum.add(service.countReviewNum(cafeNo));
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.cafeMainSearchTotalCnt(zoneNo, themeNos, cri));
				
		model.addAttribute("cri", cri);
		model.addAttribute("list", list);
		model.addAttribute("imgList", imgList);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("starpoint", starpointList);
		model.addAttribute("reviewNum", reviewNum);
		model.addAttribute("zoneNo", zoneNo);
		model.addAttribute("themeNos", themeNos);
		
		return "/user/userMukkaCafeSearchList";
	}
	
	
	
	
}
