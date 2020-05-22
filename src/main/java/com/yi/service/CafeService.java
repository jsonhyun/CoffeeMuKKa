package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.MenuKindsVO;
import com.yi.domain.MenuVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.ThemeVO;
import com.yi.persistence.CafeDAO;

@Service
public class CafeService {
	
	@Autowired
	CafeDAO dao;
	
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
	
	public List<CafeVO> searchCafeByName(String cafeName) throws Exception {
		return dao.searchCafeByName(cafeName);
	}
	
	//아름추가
	public List<CafeVO> rcSearchCafeByName(String cafeName) throws Exception {
		return dao.rcSearchCafeByName(cafeName);
	}

}
