package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.CafeVO;
import com.yi.domain.Criteria;
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
	
	public List<CafeVO> list() throws Exception {
		return dao.list();
	}
	
	public List<CafeVO> listCriteria(Criteria cri) throws Exception{
		return dao.listCriteria(cri);
	}
	
	public int totalCount() throws Exception {
		return dao.totalCount();
	}

// 검색시 페이징 처리 service
	
//	public List<CafeVO> listSearchCriteria(SearchCriteria cri) throws Exception{
//		return dao.listSearchCriteria(cri);
//	}
//	
//	public int totalSearchCount(SearchCriteria cri) throws Exception {
//		return dao.totalSearchCount(cri);
//	}
	
	public void update(CafeVO vo) throws Exception {
		dao.updateCafe(vo);
	}
	
	public void delete(int cafeNo) throws Exception {
		dao.deleteCafe(cafeNo);
	}
	
	public List<CafeVO> searchCafeByName(String cafeName) throws Exception {
		return dao.searchCafeByName(cafeName);
	}
}
