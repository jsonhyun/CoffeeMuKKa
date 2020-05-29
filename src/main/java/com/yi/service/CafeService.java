package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.MenuKindsVO;
import com.yi.domain.MenuVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.ThemeVO;
import com.yi.persistence.CafeDAO;
import com.yi.persistence.PowerLinkDAO;

@Service
public class CafeService {
	
	@Autowired
	CafeDAO dao;
	
	@Autowired
	private PowerLinkDAO powerDao;
	
	public CafeVO readCafe(int cafeNo) throws Exception{
		return dao.readCafe(cafeNo);
	}
	
	public void insert(CafeVO vo) throws Exception {
		dao.createCafe(vo);
	}
	public ImageVO imgSelect(int cafeNo) throws Exception {
		return dao.imgSelect(cafeNo);
	}
	public List<ImageVO> imgList(int cafeNo) throws Exception{
		return dao.imgList(cafeNo);
	}
	
	public int starpointSelect(int cafeNo) throws Exception {
		return dao.starpointSelect(cafeNo);
	}
	
	public Double starpoint(int cafeNo) throws Exception {
		return dao.starpoint(cafeNo);
	}
	
	public int starpointByMonth(int cafeNo, int month) throws Exception{
		return dao.starpointByMonth(cafeNo, month);
	}
	
	public List<ThemeVO> rankTheme(int cafeNo) throws Exception{
		return dao.rankTheme(cafeNo);
	}
	
	public List<MenuVO> menuList(int cafeNo) throws Exception{
		return dao.menuList(cafeNo);
	}
	
	public List<MenuKindsVO> sortNameSelect(int cafeNo) throws Exception {
		return dao.sortNameSelect(cafeNo);
	}
	
	public int countReviewNum(int cafeNo) throws Exception {
		return dao.countReviewNum(cafeNo);
	}
	
	public List<CafeVO> list() throws Exception {
		return dao.list();
	}

// 검색시 페이징 처리 service
	
	public List<CafeVO> listSearchCriteria(SearchCriteria cri) throws Exception{
		return dao.listSearchCriteria(cri);
	}
	
	public int totalSearchCount(SearchCriteria cri) throws Exception {
		return dao.totalSearchCount(cri);
	}
	
	public void update(CafeVO vo) throws Exception {
		dao.updateCafe(vo);
	}
	
	public void delete(int cafeNo) throws Exception {
		dao.deleteCafe(cafeNo);
	}
	
	// 경친 추가 ---------------------------------------------------------------------------
	// 카페 이름 검색
	public List<CafeVO> searchCafeByName(String cafeName) throws Exception {
		return dao.searchCafeByName(cafeName);
	}
	// 메인메뉴 카페 검색
	public List<CafeVO> cafeMainSearch(int zoneNo, String themeNos, SearchCriteria cri) throws Exception {
		return dao.cafeMainSearch(zoneNo, themeNos, cri);
	}
	public int cafeMainSearchTotalCnt(int zoneNo, String themeNos, SearchCriteria cri) throws Exception {
		return dao.cafeMainSearchTotalCnt(zoneNo, themeNos, cri);
	}
	// 카페 베스트
	public List<Double> monthBestSPoint() throws Exception{
		return dao.monthBestSPoint();
	}
	public List<CafeVO> monthBestCafe() throws Exception {
		return dao.monthBestCafe();
	}
	public int cafeWishCnt(int cafeNo) throws Exception {
		return dao.cafeWishCnt(cafeNo);
	}
	public int cafeCommentCnt(int cafeNo) throws Exception {
		return dao.cafeCommentCnt(cafeNo);
	}
	// 파워링크 (월간카페)
	public List<CafeVO> monthlyCafeList() throws Exception {
		return dao.monthlyCafeList();
	}
	// 파워링크(월간카페) 월이 바뀌면 자동 변경
	@Transactional
	public void monthlyCafeUpdate(String month) throws Exception {
		// 먼저 게시되었던 컬럼 cdt 2로 변경
		powerDao.monthlyPreCafeUpdate();
		// 다음으로 세기될 컬럼 cdt 1로 변경
		powerDao.monthlyNextCafeUpdate(month);
		// cafe컬럼에도 정보 변경
		dao.monthlyCafeUpdate();
	}
	
	/**************** 아름추가  ********************/
	public List<CafeVO> rcSearchCafeByName(String cafeName) throws Exception {
		return dao.rcSearchCafeByName(cafeName);
	}
	
	public List<CafeVO> powerLinkCafeList() throws Exception{
		return dao.powerLinkCafeList();
	}
	
	public List<CafeVO> newCafeList() throws Exception {
		return dao.newCafeList();
	}
}
