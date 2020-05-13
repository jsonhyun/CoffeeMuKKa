package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.yi.domain.CafeVO;

@Repository
public class CafeDAOImpl implements CafeDAO {

	private SqlSession sqlSession;
	
	private static final String namespace = "mapper.UserCafeMapper.";
	
	
	@Override
	public void createCafe(CafeVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+"createCafe", vo);
	}

	@Override
	public CafeVO readCafe(int cafeNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"readCafe", cafeNo);
	}

	@Override
	public List<CafeVO> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"list");
	}

	@Override
	public void updateCafe(CafeVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+"updateCafe", vo);
	}

	@Override
	public void deleteCafe(int cafeNo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+"deleteCafe", cafeNo);
	}

}
