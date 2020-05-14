package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.CafeVO;
import com.yi.domain.Criteria;
import com.yi.domain.ImageVO;

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
	public List<CafeVO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace+"listCriteria", cri);
	}

	@Override
	public int totalCount() throws Exception {
		return sqlSession.selectOne(namespace+"totalCount");
	}
	
	@Override
	public ImageVO imgSelect(int cafeNo) throws Exception {
		return sqlSession.selectOne(namespace+"sumnailImg", cafeNo);
	}
	
// 검색시 페이징 처리 DAOImpl
	
//	@Override
//	public List<CafeVO> listSearchCriteria(SearchCriteria cri) throws Exception {
//		return sqlSession.selectList(namespace+"listSearchCriteria", cri);
//	}
//
//	@Override
//	public int totalSearchCount(SearchCriteria cri) throws Exception {
//		return sqlSession.selectOne(namespace+"totalSearchCount", cri);
//	}

	@Override
	public List<CafeVO> searchCafeByName(String cafeName) throws Exception {
		return sqlSession.selectList(namespace + "searchCafeByName", cafeName);
	}

	
}
