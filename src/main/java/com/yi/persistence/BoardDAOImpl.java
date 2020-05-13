package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "mappers.BoardMapper.";
	
	@Override
	public void rcInsert(BoardVO vo) throws Exception {
		sqlSession.insert(namespace+"rcInsert", vo);		
	}

	@Override
	public List<BoardVO> boardList() throws Exception {
		return sqlSession.selectList(namespace+"boardList");
	}
	





}
