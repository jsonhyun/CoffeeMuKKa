package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.CafeVO;
import com.yi.domain.ImageVO;
import com.yi.domain.SearchCriteria;

@Repository
public class CafeDAOImpl implements CafeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "mapper.CafeMapper.";
	
	
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
	
	@Override
	public ImageVO imgSelect(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace+"sumnailImg", cafeNo);
	}

	@Override
	public List<ImageVO> imgList(int cafeNo) throws Exception {
		return sqlSession.selectList(namespace+"imgList", cafeNo);
	}
	
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
		System.out.println("++++++++++현재승++++"+sqlSession);
		return sqlSession.selectOne(namespace+"starpointByMonth", map);
	}
	
	@Override
	public int rankTheme(int cafeNo, int themeNO) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("cafeNo", cafeNo);
		map.put("themeNo", themeNO);
		return sqlSession.selectOne(namespace+"rankTheme", map);
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

	@Override
	public List<CafeVO> searchCafeByName(String cafeName) throws Exception {
		List<CafeVO> list = sqlSession.selectList(namespace + "searchCafeByName", cafeName);
		System.out.println("list------------------------"+list);
		return sqlSession.selectList(namespace + "searchCafeByName", cafeName);
	}

	//아름추가
	@Override
	public List<CafeVO> rcSearchCafeByName(String cafeName) throws Exception {
		return sqlSession.selectList(namespace + "rcSearchCafeByName",cafeName);
	}
	
}
