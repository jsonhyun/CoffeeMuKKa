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
	
	//추천카페 -- 사진삭제 (수정)
	@Override
	public void removeRecommendImg(String imageName) throws Exception{
		sqlSession.delete(namespace+"removeRecommendImg",imageName);		
	}
	//추천카페 -- 수정
	@Override
	public void recommendUpdate(BoardVO vo) throws Exception{
		sqlSession.update(namespace + "recommendUpdate", vo);
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
	public void insertVotePlusCnt(int boardNo, int userNo) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("boardNo", boardNo);
		map.put("userNo", userNo);
		sqlSession.insert(namespace + "insertVotePlusCnt", map);
	}
	// 게시글 추천(좋아요) 빼기
	@Override
	public void deleteVoteMinusCnt(int boardNo, int userNo) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("boardNo", boardNo);
		map.put("userNo", userNo);
		sqlSession.delete(namespace + "deleteVoteMinusCnt", map);
	}
	// 게시글 추천 갯수 게시판 테이블에 추가
	@Override
	public void updateBoardVoteCnt(int boardNo) throws Exception {
		sqlSession.update(namespace + "updateBoardVoteCnt", boardNo);
	}
	// 게시글 추천(좋아요) 갯수
	@Override
	public int boardVoteCnt(int boardNo) throws Exception {
		return sqlSession.selectOne(namespace + "boardVoteCnt", boardNo);
	}
	
	// 게시글 댓글 갯수 추가
	@Override
	public void updateBoardReplyCnt(int amount, int boardNo) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("amount", amount);
		map.put("boardNo", boardNo);
		
		sqlSession.update(namespace + "updateBoardReplyCnt", map);
	}

	
	/*** 탐방기 ***/
	//등록
	@Override  
	public void cafeReviewInsert(BoardVO vo) throws Exception {
		sqlSession.insert(namespace + "cafeReviewInsert", vo);
	}
	// 리스트
	@Override  
	public List<BoardVO> cafeReviesList(int cBoardNo, SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cBoardNo", cBoardNo);
		map.put("cri", cri);
		return sqlSession.selectList(namespace + "cafeReviesList", map);
	}
	// 베스트 리스트
	@Override
	public List<BoardVO> cafeReviewBestList(int cBoardNo, SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cBoardNo", cBoardNo);
		map.put("cri", cri);
		return sqlSession.selectList(namespace + "cafeReviewBestList", map);
	}
	//월간 베스트 리스트
	@Override
	public List<BoardVO> cafeReviewMonthBestList() throws Exception {
		return sqlSession.selectList(namespace + "cafeReviewMonthBestList");
	}
	// 상세보기
	@Override
	public BoardVO cafeReviewRead(int boardNo) throws Exception {
		return sqlSession.selectOne(namespace + "cafeReviewRead", boardNo);
	}
	// 상세보기에 같은 카페 탐방기 리스트
	@Override
	public List<BoardVO> cafeReviewSameList(BoardVO vo) throws Exception {
		return sqlSession.selectList(namespace + "cafeReviewSameList", vo);
	}
	// 상세보기 같은 카페 탐방기 카운트
	@Override
	public int cafeReivewSameCnt(BoardVO vo) throws Exception {
		return sqlSession.selectOne(namespace + "cafeReivewSameCnt", vo);
	}
	// 탐방기 수정
	@Override
	public void cafeReviewModify(BoardVO vo) throws Exception {
		sqlSession.update(namespace + "cafeReviewModify", vo);
	}
	// 탐방기 삭제
	@Override
	public void cafeReviewRemove(BoardVO vo) throws Exception {
		sqlSession.update(namespace + "cafeReviewRemove", vo);
	}
	
	
}
