package com.yi.persistence;

import java.util.List;

import com.yi.domain.BoardVO;
import com.yi.domain.Criteria;
import com.yi.domain.ImageVO;
import com.yi.domain.SearchCriteria;

public interface BoardDAO {
	
	/*** 추천카페 ***/
	//추천카페 -- 리스트	(테스트용)
	public List<BoardVO> recommendboardList() throws Exception;
	//추천카페 -- 페이징된 리스트	
	public List<BoardVO> recommendboardListCriteria(Criteria cri) throws Exception;
	public List<ImageVO> recommendboardImgList(int boardNo) throws Exception;

	//추천카페 -- 등록
	public void recommendInsert(BoardVO vo) throws Exception;
	public void recommendInsertImages(String imageName, int boardNo) throws Exception;	
	//추천카페 -- 상세보기
	public BoardVO recommendReadByNo(int boardNo) throws Exception;	
	
	
	
	/*** 공통 ***/
	//오늘 등록된 글 갯수(**커뮤니티 공통**)
	public int todayBoardCount(int cBoardNo) throws Exception;
	//각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용)
	public int totalSearchCount(int cBoardNo) throws Exception; // 공통
	//각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용 - join)
	public int totalSearchCountJoin(int cBoardNo, SearchCriteria cri) throws Exception; // 공통
	// 유저가 등록한 게시글 갯수
	public int totalUserBoardCount(int userNo) throws Exception;
	// 조회수
	public void updateViewCnt(int boardNo) throws Exception;
	
	/*** 탐방기 ***/
	// 탐방기 -- 등록
	public void cafeReviewInsert(BoardVO vo) throws Exception;
	// 탐방기 -- list
	public List<BoardVO> cafeReviesList(int cBoardNo, SearchCriteria cri) throws Exception;
	// 탐방기 -- read
	public BoardVO cafeReviewRead(int boardNo) throws Exception;
	public List<BoardVO> cafeReviewSameList(BoardVO vo) throws Exception;
	public int cafeReivewSameCnt(BoardVO vo) throws Exception;
	
}
