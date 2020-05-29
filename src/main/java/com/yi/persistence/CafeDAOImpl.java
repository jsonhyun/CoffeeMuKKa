package com.yi.persistence;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.MenuKindsVO;
import com.yi.domain.MenuVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.ThemeVO;

@Repository
public class CafeDAOImpl implements CafeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "mapper.CafeMapper.";
	
	/* 카페 추가, 검색, 삭제, 수정 */
	@Override
	public void createCafe(CafeVO vo) throws Exception {
		sqlSession.insert(namespace+"createCafe", vo);
	}

	@Override
	public CafeVO readCafe(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace+"readCafe", cafeNo);
	}

	@Override
	public List<CafeVO> list() throws Exception {
		return sqlSession.selectList(namespace+"list");
	}

	@Override
	public void updateCafe(CafeVO vo) throws Exception {
		sqlSession.update(namespace+"updateCafe", vo);
	}

	@Override
	public void deleteCafe(int cafeNo) throws Exception {
		sqlSession.delete(namespace+"deleteCafe", cafeNo);
	}

	@Override
	public List<CafeVO> listPage(int page) throws Exception {
		//1->0, 2->10, 3->20
		if(page < 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
				
		return sqlSession.selectList(namespace+"listPage", page);
	}
	
	/* 카페 이미지 검색 */
	@Override
	public ImageVO imgSelect(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace+"sumnailImg", cafeNo);
	}

	@Override
	public List<ImageVO> imgList(int cafeNo) throws Exception {
		return sqlSession.selectList(namespace+"imgList", cafeNo);
	}
	
	/* 카페 별점 검색 */
	@Override
	public int starpointSelect(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace+"pointSelect", cafeNo);
	}
	
	@Override
	public Double starpoint(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace+"starpoint", cafeNo);
	}
	
	@Override
	public int starpointByMonth(int cafeNo, int month) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("cafeNo", cafeNo);
		map.put("month", month);
		return sqlSession.selectOne(namespace+"starpointByMonth", map);
	}
	
	/* 카페 테마 순위 검색 */
	@Override
	public List<ThemeVO> rankTheme(int cafeNo) throws Exception {
		return sqlSession.selectList(namespace+"rankTheme", cafeNo);
	}

	/* 카페 메뉴 검색 */
	@Override
	public List<MenuVO> menuList(int cafeNo) throws Exception {
		return sqlSession.selectList(namespace+"menuList", cafeNo);
	}
	
	@Override
	public List<MenuKindsVO> sortNameSelect(int cafeNo) throws Exception {
		return sqlSession.selectList(namespace+"sortNameSelect", cafeNo);
	}
	
	/* 카페 탐방기 숫자 검색 */
	@Override
	public int countReviewNum(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace+"countReviewNum", cafeNo);
	}
	
// 검색시 페이징 처리 DAOImpl
	
	@Override
	public List<CafeVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace+"listSearchCriteria", cri);
	}

	@Override
	public int totalSearchCount(SearchCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace+"totalSearchCount", cri);
	}
	
	// 경진 추가 ----------------------------------------------------------------------------------------
	// 카페 이름 검색
	@Override
	public List<CafeVO> searchCafeByName(String cafeName) throws Exception {
		//List<CafeVO> list = sqlSession.selectList(namespace + "searchCafeByName", cafeName);
		//System.out.println("list------------------------"+list);
		return sqlSession.selectList(namespace + "searchCafeByName", cafeName);
	}
	
	// 메인메뉴 카페 검색
	@Override
	public List<CafeVO> cafeMainSearch(int zoneNo, String themeNos, SearchCriteria cri) throws Exception {
		List<String> themeNums = new ArrayList<String>();
		if(themeNos.indexOf(",") > 0) {			
			String[] themeNo = themeNos.split(",");
			for(String t : themeNo) {
				themeNums.add(t);
			}
		} 
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("zoneNo", zoneNo);
		map.put("themeNums", themeNums);
		map.put("cri", cri);
		
		return sqlSession.selectList(namespace + "cafeMainSearch", map);
	}

	@Override
	public int cafeMainSearchTotalCnt(int zoneNo, String themeNos, SearchCriteria cri) throws Exception {
		List<String> themeNums = new ArrayList<String>();
		if(themeNos.indexOf(",") > 0) {			
			String[] themeNo = themeNos.split(",");
			for(String t : themeNo) {
				themeNums.add(t);
			}
		} 
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("zoneNo", zoneNo);
		map.put("themeNums", themeNums);
		map.put("cri", cri);
		return sqlSession.selectOne(namespace + "cafeMainSearchTotalCnt", map);
	}
	
	// 카페 베스트
	@Override
	public List<Double> monthBestSPoint() throws Exception {
		return sqlSession.selectList(namespace + "monthBestSPoint");
	}

	@Override
	public List<CafeVO> monthBestCafe() throws Exception {
		return sqlSession.selectList(namespace + "monthBestCafe");
	}
	
	@Override
	public int cafeWishCnt(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace + "cafeWishCnt", cafeNo);
	}

	@Override
	public int cafeCommentCnt(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace + "cafeCommentCnt", cafeNo);
	}
	
	// 파워링크 (월간카페)
	@Override
	public List<CafeVO> monthlyCafeList() throws Exception {
		return sqlSession.selectList(namespace + "monthlyCafeList");
	}
	// 파워링크(월간카페) 게시 상태 PowerLink데이터랑 동일하게 유지할 update문
	@Override
	public void monthlyCafeUpdate() throws Exception {
		sqlSession.update(namespace + "monthlyCafeUpdate");
	}




	/**************** 아름추가  ********************/
	@Override
	public List<CafeVO> rcSearchCafeByName(String cafeName) throws Exception {
		return sqlSession.selectList(namespace + "rcSearchCafeByName",cafeName);
	}

	//파워링크
	@Override
	public List<CafeVO> powerLinkCafeList() throws Exception {
		return sqlSession.selectList(namespace+"powerLinkCafeList");
	}

	

	

	


}
