package com.yi.persistence;

import java.util.List;

import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.SearchCriteria;

public interface CafeDAO {
	public void createCafe(CafeVO vo) throws Exception;
	public CafeVO readCafe(int cafeNo) throws Exception;
	public List<CafeVO> list() throws Exception;
	public void updateCafe(CafeVO vo) throws Exception;
	public void deleteCafe(int cafeNo) throws Exception;
	public ImageVO imgSelect(int cafeNo) throws Exception;
	public int starpointSelect(int cafeNo) throws Exception;

//	public List<CafeVO> listCriteria(Criteria cri) throws Exception;
//	public int totalCount() throws Exception;

	
// 검색시 페이징 처리 dao
	public List<CafeVO> listPage(int page) throws Exception;	
	public List<CafeVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	public int totalSearchCount(SearchCriteria cri) throws Exception;
	
	// 카페 이름 검색
	public List<CafeVO> searchCafeByName(String cafeName) throws Exception;
	
	
	//아름추가
	public List<CafeVO> rcSearchCafeByName(String cafeName) throws Exception;
}
