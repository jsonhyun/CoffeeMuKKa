package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.BoardVO;
import com.yi.domain.Criteria;
import com.yi.domain.ImageVO;
import com.yi.domain.SearchCriteria;

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
	@Override
	public List<ImageVO> recommendboardImgList(int boardNo) throws Exception {
		return sqlSession.selectList(namespace+"recommendboardImgList", boardNo);
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
	public BoardVO recommendReadByNo(int boardNo) throws Exception {
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
	//각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용 - join)
	@Override
	public int totalSearchCountJoin(int cBoardNo, SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cBoardNo", cBoardNo);
		map.put("cri", cri);
		return sqlSession.selectOne(namespace+"totalSearchCountJoin", map);
	}
	
	// 유저가 등록한 게시글 갯수
	@Override
	public int totalUserBoardCount(int userNo) throws Exception {
		return sqlSession.selectOne(namespace + "totalUserBoardCount", userNo);
	}
	
	// 조회수
	@Override
	public void updateViewCnt(int boardNo) throws Exception {
		sqlSession.update(namespace+"updateViewCnt",boardNo);	
	}
	
	// 게시글 추천(좋아요) 더하기
	@Override
	public void updateVotePlusCnt(int boardNo) throws Exception {
		sqlSession.update(namespace + "updateVotePlusCnt", boardNo);
	}
	// 게시글 추천(좋아요) 빼기
	@Override
	public void updateVoteMinusCnt(int boardNo) throws Exception {
		sqlSession.update(namespace + "updateVoteMinusCnt", boardNo);
	}
	

	
	/*** 탐방기 ***/
	@Override
	public void cafeReviewInsert(BoardVO vo) throws Exception {
		sqlSession.insert(namespace + "cafeReviewInsert", vo);
	}
	
	@Override
	public List<BoardVO> cafeReviesList(int cBoardNo, SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cBoardNo", cBoardNo);
		map.put("cri", cri);
		return sqlSession.selectList(namespace + "cafeReviesList", map);
	}
	@Override
	public BoardVO cafeReviewRead(int boardNo) throws Exception {
		return sqlSession.selectOne(namespace + "cafeReviewRead", boardNo);
	}
	@Override
	public List<BoardVO> cafeReviewSameList(BoardVO vo) throws Exception {
		return sqlSession.selectList(namespace + "cafeReviewSameList", vo);
	}
	@Override
	public int cafeReivewSameCnt(BoardVO vo) throws Exception {
		return sqlSession.selectOne(namespace + "cafeReivewSameCnt", vo);
	}
	
	@Override
	public void cafeReviewModify(BoardVO vo) throws Exception {
		sqlSession.update(namespace + "cafeReviewModify", vo);
	}
	
	@Override
	public void cafeReviewRemove(BoardVO vo) throws Exception {
		sqlSession.update(namespace + "cafeReviewRemove", vo);
	}
	

}
