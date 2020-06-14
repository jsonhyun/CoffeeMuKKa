package com.yi.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BoardVO;
import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.ZoneVO;
import com.yi.service.BoardService;
import com.yi.service.CafeService;
import com.yi.service.PowerLinkService;

@Controller
@RequestMapping("/user/*")
public class UserHomeController {

	// 서비스
	@Autowired
	private CafeService cafeService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	PowerLinkService powerLinkService;
	
	// 유저 메인 홈
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String userHome(Model model, HttpSession session) throws Exception {
		List<ZoneVO> zoneList = boardService.zoneList();
		
		//System.out.println("zoneList -----------------" + zoneList);
		model.addAttribute("zoneList", zoneList);
		
		//파워링크 & 대표이미지
		int month = Integer.parseInt(powerLinkService.monthlyCafePostDate());
		String postDate = String.format("%02d", month);
		
		// 달이 바뀌면 자동 업데이트
		Date from = new Date();
		SimpleDateFormat fmMonth = new SimpleDateFormat("MM");
		String toMonth = fmMonth.format(from);
		
		if(!toMonth.equals(postDate)) {			
			// 파워링크(월간카페) 정보 업데이트
			cafeService.monthlyCafeUpdate(toMonth);
		}
		
		List<CafeVO> powerList = cafeService.powerLinkCafeList();
		model.addAttribute("powerList",powerList);
		
		List<ImageVO> powerImg = new ArrayList<ImageVO>();
		for(int i=0;i<powerList.size();i++) {
			int cafeNo = powerList.get(i).getCafeNo();
			powerImg.add(cafeService.imgSelect(cafeNo));
		}
		model.addAttribute("powerImg", powerImg);
		
		//당월 신상카페
		List<CafeVO> newCafeList = cafeService.newCafeList();
		model.addAttribute("newCafeList", newCafeList);
		
		List<ImageVO> newCafeImg = new ArrayList<ImageVO>();
		for(int i=0;i<newCafeList.size();i++) {
			int cafeNo = newCafeList.get(i).getCafeNo();
			newCafeImg.add(cafeService.imgSelect(cafeNo));
		}
		model.addAttribute("newCafeImg", newCafeImg);		
		
		//카페베스트리스트 + 카페 별점
		List<CafeVO> bestCafeList = cafeService.monthBestCafe();
		model.addAttribute("bestCafeList", bestCafeList);
		session.setAttribute("bestCafeNumFive", bestCafeList);
		
		List<Double> starpoint = cafeService.monthBestSPoint();
		model.addAttribute("starpoint", starpoint);
		
		List<ImageVO> bestCafeImg = new ArrayList<ImageVO>();
		for(int i=0;i<bestCafeList.size();i++) {
			int cafeNo = bestCafeList.get(i).getCafeNo();
			bestCafeImg.add(cafeService.imgSelect(cafeNo));
		}
		model.addAttribute("bestCafeImg", bestCafeImg);			
		
		//탐방기리스트
		List<BoardVO> rvlist = boardService.cafeReviewMonthBestListHome();
		model.addAttribute("rvlist", rvlist);
		List<ImageVO> rvlistImg = new ArrayList<ImageVO>();
		for(int i=0;i<rvlist.size();i++) {
			int sboardNo = rvlist.get(i).getBoardNo();
			rvlistImg.addAll(boardService.recommendboardImgList(sboardNo));	
		}
		model.addAttribute("rvlistImg", rvlistImg);
		
		
		//실시간 카페 추천 리스트 & 대표이미지
		List<BoardVO> rclist = boardService.recommendboardList();
		model.addAttribute("rclist",rclist);
		
		List<ImageVO> rclistImg = new ArrayList<ImageVO>();
		for(int i=0;i<rclist.size();i++) {
			int sboardNo = rclist.get(i).getBoardNo();
			rclistImg.addAll(boardService.recommendboardImgList(sboardNo));	
		}
		
		model.addAttribute("rclistImg", rclistImg);
		model.addAttribute("error", 0);
		
		//열혈무까인 리스트(종합)
		List<BoardVO> bestUserAll = boardService.bestUserAllBoard();
		model.addAttribute("bestUserAll",bestUserAll);
		
		List<Integer> bestUserAllCnt = boardService.bestUserAllBoardCnt();
		model.addAttribute("bestUserAllCnt",bestUserAllCnt);
		
		//열혈무까인 리스트(전월기준)
		List<BoardVO> bestUser = boardService.bestUserBoard();
		model.addAttribute("bestUser",bestUser);
		
		List<Integer> bestUserCnt = boardService.bestUserBoardCnt();
		model.addAttribute("bestUserCnt",bestUserCnt);
		
		return "/user/userHome";
	}
	
	
	// 레이아웃 샘플페이지 
	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public String sample() {
		return "/user/sample";
	}
	
	
	// 커피무까
	@RequestMapping(value = "/mukkaCafe", method = RequestMethod.GET)
	public String cafeHome(Model model) throws Exception {
		
		// 영업중인 카페 번호 리스트로 가져오기
		List<Integer> openCafeNo = cafeService.openCafeNoList();
		// shuffle 이용해서 랜덤으로 숫자뿌리기
		Collections.shuffle(openCafeNo);
		
		// 위치별 -- 영업카페번호 랜덤 3곳
		int zoneCafeNo1 = openCafeNo.get(0); // 첫번째 영업중인 카페 랜덤번호
		openCafeNo.remove(0); // -- 첫번째 랜덤번호 지우기
		int zoneCafeNo2 = openCafeNo.get(0); // 새로운 영업중인 카페 랜덤번호 생성
		openCafeNo.remove(0);  // -- 두번째 랜덤번호 지우기
		int zoneCafeNo3 = openCafeNo.get(0);
		
		
		// 위치별 - 랜덤카페(1)
		CafeVO zoneCafe1 = cafeService.readCafe(zoneCafeNo1);
		ImageVO zoneImg1 = cafeService.imgSelect(zoneCafeNo1);
		model.addAttribute("zoneCafe1", zoneCafe1);
		model.addAttribute("zoneImg1",zoneImg1);
		
		// 위치별 - 랜덤카페(2)
		CafeVO zoneCafe2 = cafeService.readCafe(zoneCafeNo2);
		ImageVO zoneImg2 = cafeService.imgSelect(zoneCafeNo2);
		model.addAttribute("zoneCafe2", zoneCafe2);
		model.addAttribute("zoneImg2",zoneImg2);
		
		// 위치별 - 랜덤카페(3)
		CafeVO zoneCafe3 = cafeService.readCafe(zoneCafeNo3);
		ImageVO zoneImg3 = cafeService.imgSelect(zoneCafeNo3);
		model.addAttribute("zoneCafe3", zoneCafe3);
		model.addAttribute("zoneImg3",zoneImg3);
		
		//카페 조회순 리스트
		List<CafeVO> viewCafeList = cafeService.viewNumberCafeListAll();
		model.addAttribute("viewCafeList", viewCafeList);

		List<ImageVO> viewCafeListImg = new ArrayList<ImageVO>();
		for(int i=0;i<viewCafeList.size();i++) {
			int cafeNo = viewCafeList.get(i).getCafeNo();
			viewCafeListImg.add(cafeService.imgSelect(cafeNo));
		}
		model.addAttribute("viewCafeListImg", viewCafeListImg);		
		
		// 카페 별점 순 리스트
		List<CafeVO> starPointCafeList = cafeService.starPointCafeBest5Info();
		model.addAttribute("starPointCafeList", starPointCafeList);
		
		List<Double> starPoint = cafeService.starPointCafeBest5();
		model.addAttribute("starPoint", starPoint);	
		
		//각 대표 테마별로 영업중인카페번호 리스트 가져오기
		int [] themeNo = {1,2,3,4,5,6}; // 1:데이트, 2:뷰, 3:착한아메, 4:디저트, 5:댕댕이, 6:작업
		
		// 키워드 : 데이트 - 랜덤카페
		List<Integer> openThemeCafeNo1 = cafeService.openThemeCafeNoList(themeNo[0]);
		//Math.random 이용해서 랜덤숫자 뿌리기
		int ran1 = (int)(Math.random()*openThemeCafeNo1.size()-1);
		int tCafeNo1 = openThemeCafeNo1.get(ran1);
		openThemeCafeNo1.remove(ran1);
		
		CafeVO themeCafe1 = cafeService.readCafe(tCafeNo1);
		ImageVO themeCafeImg1 = cafeService.imgSelect(tCafeNo1);
		model.addAttribute("themeCafe1", themeCafe1);
		model.addAttribute("themeCafeImg1",themeCafeImg1);
		
		// 키워드 : 뷰 - 랜덤카페
		List<Integer> openThemeCafeNo2 = cafeService.openThemeCafeNoList(themeNo[1]);
		//Math.random 이용해서 랜덤숫자 뿌리기
		int ran2 = (int)(Math.random()*openThemeCafeNo2.size()-1);
		int tCafeNo2 = openThemeCafeNo2.get(ran2);
		openThemeCafeNo2.remove(ran2);
		
		CafeVO themeCafe2 = cafeService.readCafe(tCafeNo2);
		ImageVO themeCafeImg2 = cafeService.imgSelect(tCafeNo2);
		model.addAttribute("themeCafe2", themeCafe2);
		model.addAttribute("themeCafeImg2",themeCafeImg2);
		
		// 키워드 : 착한아메 - 랜덤카페
		List<Integer> openThemeCafeNo3 = cafeService.openThemeCafeNoList(themeNo[2]);
		//Math.random 이용해서 랜덤숫자 뿌리기
		int ran3 = (int)(Math.random()*openThemeCafeNo3.size()-1);
		int tCafeNo3 = openThemeCafeNo3.get(ran3);
		openThemeCafeNo3.remove(ran3);
		
		CafeVO themeCafe3 = cafeService.readCafe(tCafeNo3);
		ImageVO themeCafeImg3 = cafeService.imgSelect(tCafeNo3);
		model.addAttribute("themeCafe3", themeCafe3);
		model.addAttribute("themeCafeImg3",themeCafeImg3);
		
		// 키워드 : 디저트 - 랜덤카페
		List<Integer> openThemeCafeNo4 = cafeService.openThemeCafeNoList(themeNo[3]);
		//Math.random 이용해서 랜덤숫자 뿌리기
		int ran4 = (int)(Math.random()*openThemeCafeNo4.size()-1);
		int tCafeNo4 = openThemeCafeNo4.get(ran4);
		openThemeCafeNo1.remove(ran4);
		
		CafeVO themeCafe4 = cafeService.readCafe(tCafeNo4);
		ImageVO themeCafeImg4 = cafeService.imgSelect(tCafeNo4);
		model.addAttribute("themeCafe4", themeCafe4);
		model.addAttribute("themeCafeImg4",themeCafeImg4);
		
		// 키워드 : 댕댕이 - 랜덤카페
		List<Integer> openThemeCafeNo5 = cafeService.openThemeCafeNoList(themeNo[4]);
		//Math.random 이용해서 랜덤숫자 뿌리기
		int ran5 = (int)(Math.random()*openThemeCafeNo5.size()-1);
		int tCafeNo5 = openThemeCafeNo5.get(ran5);
		openThemeCafeNo5.remove(ran5);
		CafeVO themeCafe5 = cafeService.readCafe(tCafeNo5);
		ImageVO themeCafeImg5 = cafeService.imgSelect(tCafeNo5);
		model.addAttribute("themeCafe5", themeCafe5);
		model.addAttribute("themeCafeImg5",themeCafeImg5);
		
		// 키워드 : 작업 - 랜덤카페
		List<Integer> openThemeCafeNo6 = cafeService.openThemeCafeNoList(themeNo[5]);
		//Math.random 이용해서 랜덤숫자 뿌리기
		int ran6 = (int)(Math.random()*openThemeCafeNo6.size()-1);
		int tCafeNo6 = openThemeCafeNo6.get(ran6);
		openThemeCafeNo6.remove(ran6);
		
		CafeVO themeCafe6 = cafeService.readCafe(tCafeNo6);
		ImageVO themeCafeImg6 = cafeService.imgSelect(tCafeNo6);
		model.addAttribute("themeCafe6", themeCafe6);
		model.addAttribute("themeCafeImg6",themeCafeImg6);
		
		//각테마번호 배열 랜덤으로 돌리기
		int[] ranThemeNo = shuffle(themeNo); //테마번호 랜덤하게 돌리기
		List<Integer> openThemeCafeNo7 = cafeService.openThemeCafeNoList(ranThemeNo[0]);
		
		// shuffle 이용해서 랜덤으로 카페번호 뿌리기
		Collections.shuffle(openThemeCafeNo7);
		
		// 위치별 -- 영업카페번호 랜덤 3곳
		int themeGroupNo1 = openThemeCafeNo7.get(0); // 첫번째 영업중인 카페 랜덤번호
		openThemeCafeNo7.remove(0); // -- 첫번째 랜덤번호 지우기
		int themeGroupNo2 = openThemeCafeNo7.get(0); // 새로운 영업중인 카페 랜덤번호 생성
		openThemeCafeNo7.remove(0);  // -- 두번째 랜덤번호 지우기
		int themeGroupNo3 = openThemeCafeNo7.get(0);
		openThemeCafeNo7.remove(0);  // -- 세번째 랜덤번호 지우기
		int themeGroupNo4 = openThemeCafeNo7.get(0);
		
		
		// 테마별 - 랜덤카페(1)
		CafeVO themeGroupCafe1 = cafeService.readCafe(themeGroupNo1);
		ImageVO themeGroupImg1 = cafeService.imgSelect(themeGroupNo1);
		model.addAttribute("themeGroupCafe1", themeGroupCafe1);
		model.addAttribute("themeGroupImg1",themeGroupImg1);
		
		// 테마별- 랜덤카페(2)
		CafeVO themeGroupCafe2 = cafeService.readCafe(themeGroupNo2);
		ImageVO themeGroupImg2 = cafeService.imgSelect(themeGroupNo2);
		model.addAttribute("themeGroupCafe2", themeGroupCafe2);
		model.addAttribute("themeGroupImg2",themeGroupImg2);
		
		// 테마별 - 랜덤카페(3)
		CafeVO themeGroupCafe3 = cafeService.readCafe(themeGroupNo3);
		ImageVO themeGroupImg3 = cafeService.imgSelect(themeGroupNo3);
		model.addAttribute("themeGroupCafe3", themeGroupCafe3);
		model.addAttribute("themeGroupImg3",themeGroupImg3);
		
		// 테마별 - 랜덤카페(4)
		CafeVO themeGroupCafe4 = cafeService.readCafe(themeGroupNo4);
		ImageVO themeGroupImg4 = cafeService.imgSelect(themeGroupNo4);
		model.addAttribute("themeGroupCafe4", themeGroupCafe4);
		model.addAttribute("themeGroupImg4",themeGroupImg4);
		
		return "/user/userMukkaCafeHome";
	}
	
	//각 테마번호 배열 랜덤하게 돌리기
	private int[] shuffle(int[] themeNo) {
	    for(int x=0;x<themeNo.length;x++){
	        int i = (int)(Math.random()*themeNo.length);
	        int j = (int)(Math.random()*themeNo.length);
	              
	        int tmp = themeNo[i];
	        themeNo[i] = themeNo[j];
	        themeNo[j] = tmp;
	      }	
		return themeNo;
	}


	// 커뮤니티 
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String communityHome(Model model) throws Exception {
		//실시간 카페 추천 리스트 & 대표이미지
		List<BoardVO> rcBestlist = boardService.rcRankVoteAll();
		model.addAttribute("rcBestlist",rcBestlist);
		
		List<ImageVO> rcBestlistImg = new ArrayList<ImageVO>();
		for(int i=0;i<rcBestlist.size();i++) {
			int sboardNo = rcBestlist.get(i).getBoardNo();
			rcBestlistImg.addAll(boardService.recommendboardImgList(sboardNo));	
		}
		
		model.addAttribute("rcBestlistImg", rcBestlistImg);		
		
		return "/user/userCommunityHome";
	}
	
	
}
