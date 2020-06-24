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
import com.yi.service.PowerLinkService;
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
	
	@Autowired
	PowerLinkService powerLinkService;
	
	/** 위치별 카페**/
	@RequestMapping(value = "/mukkaCafe/zone", method = RequestMethod.GET)
	public String cafeZoneList(SearchCriteria cri, Model model) throws Exception {
		
		List<CafeVO> list = service.listSearchCriteria(cri);
		List<ImageVO> imgList = new ArrayList<ImageVO>();
		List<Integer> starpointList = new ArrayList<Integer>();
		List<Integer> starCntList = new ArrayList<Integer>();
		List<Integer> reviewNum = new ArrayList<Integer>();
		
		for(int i=0; i<list.size();i++) {
			int cafeNo = list.get(i).getCafeNo();
			imgList.add(service.imgSelect(cafeNo));
			starpointList.add(service.starpointSelect(cafeNo));
			starCntList.add(service.starCnt(cafeNo));
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
		model.addAttribute("starCnt", starCntList);
		model.addAttribute("reviewNum", reviewNum);
		
		return "/user/userMukkaCafeZoneList";
	}
	/**카페 상세정보**/
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
		BoardVO boardVO = new BoardVO();
		boardVO.setCafeNo(cafe);
		
		List<BoardVO> sameVo = boardService.cafeReviewSameListByCafeNo(boardVO);
		int sameCnt = boardService.cafeReivewSameCntByCafeNo(boardVO);

		model.addAttribute("sameBoard", sameVo);
		model.addAttribute("sameCnt", sameCnt);

		//(same)해당지역+해당키워드글List
		List<BoardVO> sameKeyword = boardService.recommendSameKeywordListByZoneAndTheme(boardVO);
		model.addAttribute("sameKeyword", sameKeyword);
		
		//(same)해당지역+해당키워드글 : 개수
		int sameKeywordCnt = boardService.recommendSameKeywordCntByZoneAndTheme(boardVO);
		model.addAttribute("sameKeywordCnt", sameKeywordCnt);
		
		//(same)해당키워드에 이미지
		List<ImageVO> klistImg = new ArrayList<ImageVO>();
		for(int i=0;i<sameKeyword.size();i++) {
			int sboardNo = sameKeyword.get(i).getBoardNo();
		    klistImg.addAll(boardService.recommendboardImgList(sboardNo));
		    }
		model.addAttribute("klistImg", klistImg);
		
		return "/user/userMukkaCafeZoneRead";
	}
	

	/** 테마별 카페 **/
	@RequestMapping(value = "/mukkaCafe/theme", method = RequestMethod.GET)
	public String cafeThemeList(SearchCriteria cri, Model model) throws Exception {
		List<CafeVO> list = service.themeCafeSearchListAll(cri);
		List<ImageVO> imgList = new ArrayList<ImageVO>();
		List<Integer> starpointList = new ArrayList<Integer>();
		List<Integer> reviewNum = new ArrayList<Integer>();
		List<ThemeVO> themeList = new ArrayList<ThemeVO>();
				
		
		for(int i=0; i<list.size();i++) {
			int cafeNo = list.get(i).getCafeNo();
			imgList.add(service.imgSelect(cafeNo));
			starpointList.add(service.starpointSelect(cafeNo));
			reviewNum.add(service.countReviewNum(cafeNo));
			themeList.addAll(service.rankTheme(cafeNo));
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
		model.addAttribute("themeList", themeList);
				
		return "/user/userMukkaCafeThemeList";
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
	
	// 무까베스트
	@RequestMapping(value = "/mukkaCafe/mukkaBest", method = RequestMethod.GET)
	public String cafeBestList(Model model) throws Exception {
		List<Double> bestStarPoint = service.monthBestSPoint();
		List<CafeVO> bestCafe = service.monthBestCafe();
		
		Map<Integer, List<ThemeVO>> map = new HashMap<Integer, List<ThemeVO>>();
		for(int i=0; i<bestCafe.size(); i++) {
			List<ThemeVO> theme = themeService.cafeThemeRank(bestCafe.get(i).getCafeNo());
			map.put(bestCafe.get(i).getCafeNo(), theme);
		}
		
		List<Integer> sameCnts = new ArrayList<Integer>();
		for(int i=0; i<3; i++) {
			int sameCnt = service.countReviewNum(bestCafe.get(i).getCafeNo());
			sameCnts.add(sameCnt);
		}
		
		int wishCnt = service.cafeWishCnt(bestCafe.get(0).getCafeNo());
		int commentCnt = service.cafeCommentCnt(bestCafe.get(0).getCafeNo());
		
		model.addAttribute("bestSP", bestStarPoint);
		model.addAttribute("bestCafe", bestCafe);
		model.addAttribute("themeMap", map);
		model.addAttribute("sameCnts", sameCnts);
		model.addAttribute("wishCnt", wishCnt);
		model.addAttribute("commentCnt", commentCnt);
		
		return "/user/userMukkaCafeBestList";
	}
	
	// 월간 카페
	@RequestMapping(value = "/mukkaCafe/monthCafe", method = RequestMethod.GET)
	public String cafeMonthList(Model model) throws Exception {
		int month = Integer.parseInt(powerLinkService.monthlyCafePostDate());
		String postDate = String.format("%02d", month);
		
		// 달이 바뀌면 자동 업데이트
		Date from = new Date();
		SimpleDateFormat fmMonth = new SimpleDateFormat("MM");
		String toMonth = fmMonth.format(from);
		
		if(!toMonth.equals(postDate)) {			
			// 파워링크(월간카페) 정보 업데이트
			service.monthlyCafeUpdate(toMonth);
		}
		
		List<CafeVO> list = service.monthlyCafeList();
		
		model.addAttribute("list", list);
		
		return "/user/userMukkaCafeMonth";
	}
	
}
