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
	
	/*** 추천카페 ***/
	//추천카페 -- 리스트	
	@Override
	public List<BoardVO> recommendboardList() throws Exception {
		return sqlSession.selectList(namespace+"recommendboardList");
	}
	//추천카페 -- 등록		
	@Override
	public void recommendInsert(BoardVO vo) throws Exception {
		sqlSession.insert(namespace+"recommendInsert", vo);		
	}
	//추천카페 -- 상세보기
	@Override
	public BoardVO recommendReadByNo(int boardNo) {
		return sqlSession.selectOne(namespace+"recommendReadByNo", boardNo);
	}
	
	/*** 공통 ***/
	//오늘 등록된 글 갯수(**커뮤니티 공통**)
	@Override
	public int todayBoardCount(int cBoardNo) throws Exception {
		return sqlSession.selectOne(namespace+"todayBoardCount", cBoardNo);
	}
	
	/*** 탐방기 ***/
	





}
