package com.yi.persistence;

import java.util.List;

import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.MenuKindsVO;
import com.yi.domain.MenuVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.ThemeVO;

public interface CafeDAO {
	/* 카페 추가, 검색, 삭제, 수정 */
	public void createCafe(CafeVO vo) throws Exception;
	public CafeVO readCafe(int cafeNo) throws Exception;
	public List<CafeVO> list() throws Exception;
	public void updateCafe(CafeVO vo) throws Exception;
	public void deleteCafe(int cafeNo) throws Exception;
	
	/* 카페 이미지 검색 */
	public ImageVO imgSelect(int cafeNo) throws Exception;
	public List<ImageVO> imgList(int cafeNo) throws Exception;
	
	/* 카페 별점 검색 */
	public int starpointSelect(int cafeNo) throws Exception;
	public Double starpoint(int cafeNo) throws Exception;
	public int starpointByMonth(int cafeNo, int month) throws Exception;
	public Integer starCnt(int cafeNo) throws Exception;
	
	/* 카페 테마 순위 검색 */
	public List<ThemeVO> rankTheme(int cafeNo) throws Exception;
	
	/* 카페 메뉴 검색 */
	public List<MenuVO> menuList(int cafeNo) throws Exception;
	public List<MenuKindsVO> sortNameSelect(int cafeNo) throws Exception;
	
	/* 카페 탐방기 검색 */
	public int countReviewNum(int cafeNo) throws Exception;
	
	
// 검색시 페이징 처리 dao
	public List<CafeVO> listPage(int page) throws Exception;	
	public List<CafeVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	public int totalSearchCount(SearchCriteria cri) throws Exception;
	
	// 경진 추가 (user) start ---------------------------------------------------------------------------------------------
	// 카페 이름 검색
	public List<CafeVO> searchCafeByName(String cafeName) throws Exception;
	// 메인메뉴 카페 검색
	public List<CafeVO> cafeMainSearch(int zoneNo, String themeNos, SearchCriteria cri) throws Exception;
	public int cafeMainSearchTotalCnt(int zoneNo, String themeNos, SearchCriteria cri) throws Exception;
	// 카페 베스트
	public List<Double> monthBestSPoint() throws Exception;
	public List<CafeVO> monthBestCafe() throws Exception;
	public int cafeWishCnt(int cafeNo) throws Exception;
	public int cafeCommentCnt(int cafeNo) throws Exception;
	//파워링크(월간카페)
	public List<CafeVO> monthlyCafeList() throws Exception;
	//파워링크(월간카페) 게시 상태 PowerLink데이터랑 동일하게 유지할 update문
	public void monthlyCafeUpdate() throws Exception;
	// 경진 추가 (user) end ---------------------------------------------------------------------------------------------
	
	// 경진 추가 (admin) start ---------------------------------------------------------------------------------------------
	// 신규 카페 승인 대기 숫자
	public int cafeWaitingCnt(CafeVO vo) throws Exception;
	public int cafeWaitingCntAndKeyword(CafeVO vo, SearchCriteria cri) throws Exception;
	// 신규 카페 승인 list
	public List<CafeVO> adminNewCafeList(CafeVO vo, SearchCriteria cri) throws Exception;
	// 카페 차트
	public List<Integer> adminCafeCntChart(int subNum) throws Exception;
	
	// 경진 추가 (admin) end ---------------------------------------------------------------------------------------------
	
	//아름추가
	public List<CafeVO> rcSearchCafeByName(String cafeName) throws Exception;
	
	//파워링크
	public List<CafeVO> powerLinkCafeList() throws Exception;
	//당월 신상카페 - 등록일기준
	public List<CafeVO> newCafeList() throws Exception;
	
	public List<Integer> openCafeNoList() throws Exception;
	
	public List<CafeVO> viewNumberCafeListAll() throws Exception;
	
	public List<CafeVO> starPointCafeBest5Info() throws Exception;
	
	public List<Double> starPointCafeBest5() throws Exception;
	
	public List<Integer> openThemeCafeNoList(int themeNo) throws Exception;
	
}
