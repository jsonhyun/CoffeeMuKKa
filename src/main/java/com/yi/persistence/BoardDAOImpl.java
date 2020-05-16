package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.BoardVO;
import com.yi.domain.Criteria;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "mappers.BoardMapper.";
	
	/*** 추천카페 ***/
	//추천카페 -- 리스트	(테스트용)
	@Override
	public List<BoardVO> recommendboardList() throws Exception {
		return sqlSession.selectList(namespace+"recommendboardList");
	}
	//추천카페 -- 페이징된 리스트	
	@Override
	public List<BoardVO> recommendboardListCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace+"recommendboardListCriteria", cri);
	}

	//추천카페 -- 등록		
	@Override
	public void recommendInsert(BoardVO vo) throws Exception {
		sqlSession.insert(namespace+"recommendInsert", vo);
	}
	@Override
	public void recommendInsertImages(String imageName, int boardNo) throws Exception {
		Map<String,Object> map = new HashMap<>();
		map.put("imageName", imageName);
		map.put("boardNo", boardNo);
		sqlSession.insert(namespace+"recommendInsertImages",map);		
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
	//각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용)
	@Override
	public int totalSearchCount(int cBoardNo) throws Exception {
		return sqlSession.selectOne(namespace+"totalSearchCount", cBoardNo);
	}
	
	// 유저가 등록한 게시글 갯수
	@Override
	public int totalUserBoardCount(int userNo) throws Exception {
		return sqlSession.selectOne(namespace + "totalUserBoardCount", userNo);
	}
	

	
	/*** 탐방기 ***/
	@Override
	public void cafeReviewInsert(BoardVO vo) throws Exception {
		sqlSession.insert(namespace + "cafeReviewInsert", vo);
	}
	@Override
	public List<BoardVO> cafeReviesList(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + "cafeReviesList", cri);
	}
	

}
