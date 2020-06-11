package com.yi.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

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
	public String userHome(Model model) throws Exception {
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
		
		
		
		return "/user/userMukkaCafeHome";
	}
	

	// 커뮤니티 
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String communityHome() {
		//실시간 카페 추천 리스트 & 대표이미지
//		List<BoardVO> rclist = boardService.recommendboardList();
//		model.addAttribute("rclist",rclist);
//		
//		List<ImageVO> rclistImg = new ArrayList<ImageVO>();
//		for(int i=0;i<rclist.size();i++) {
//			int sboardNo = rclist.get(i).getBoardNo();
//			rclistImg.addAll(boardService.recommendboardImgList(sboardNo));	
//		}
//		
//		model.addAttribute("rclistImg", rclistImg);		
		
		return "/user/userCommunityHome";
	}
	
	
}
