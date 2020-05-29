package com.yi.persistence;

import java.util.List;

import com.yi.domain.BoardVO;
import com.yi.domain.ImageVO;
import com.yi.domain.SearchCriteria;

public interface BoardDAO {
	
	/*** 추천카페 ***/
	//추천카페 -- 리스트	(테스트용)
	public List<BoardVO> recommendboardList() throws Exception;
	//추천카페 -- 페이징된 리스트	
	public List<BoardVO> recommendboardListSearchCriteria(int cBoardNo, SearchCriteria cri) throws Exception;
	public List<ImageVO> recommendboardImgList(int sboardNo) throws Exception;

	//추천카페 -- 등록
	public void recommendInsert(BoardVO vo) throws Exception;
	public void recommendInsertImages(String imageName, int boardNo) throws Exception;	
	//추천카페 -- 상세보기
	public BoardVO recommendReadByNo(int boardNo) throws Exception;
	//추천카페 -- 같은카페리스트
	public List<BoardVO> recommendSameCafeList(BoardVO vo) throws Exception;
	//추천카페 -- 같은카페 등록수
	public int recommendSameCafeCnt(BoardVO vo) throws Exception;
	//추천카페 -- 같은키워드리스트
	public List<BoardVO> recommendSameKeywordList(BoardVO vo) throws Exception;
	//추천카페 -- 같은키워드 등록수	
	public int recommendSameKeywordCnt(BoardVO vo) throws Exception;
	//추천카페 사진삭제 -- 수정
	public void removeRecommendImg(String imageName) throws Exception;
	//추천카페 -- 수정
	public void recommendUpdate(BoardVO vo) throws Exception;
	//추천카페 -- '전체' 조회순 랭킹
	public List<BoardVO> rcRankVoteAll() throws Exception;
	//추천카페-- '당월' 추천순 랭킹
	public List<BoardVO> rcRankVoteMonth() throws Exception;
	//추천카페-- '당월' 조회순 랭킹
	public List<BoardVO> rcRankViewMonth() throws Exception;
	//추천카페-- '당월' 댓글순 랭킹
	public List<BoardVO> rcRankReplyMonth() throws Exception;
	//추천카페-- '전월' 추천순 랭킹
	public List<BoardVO> rcRankVoteLastMonth() throws Exception;
	
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
	// 게시글 추천(좋아요) 더하기
	public void insertVotePlusCnt(int boardNo, int userNo) throws Exception;
	// 게시글 추천(좋아요) 빼기
	public void deleteVoteMinusCnt(int boardNo, int userNo) throws Exception;
	// 게시글 추천(좋아요) 갯수 게시판 테이블에 추가
	public void updateBoardVoteCnt(int boardNo) throws Exception;
	// 게시글 추천(좋아요) 갯수
	public int boardVoteCnt(int boardNo) throws Exception;
	// 게시글 댓글 갯수 추가
	public void updateBoardReplyCnt(int amount, int boardNo) throws Exception;
	
	
	/*** 탐방기 ***/
	// 탐방기 -- 등록
	public void cafeReviewInsert(BoardVO vo) throws Exception;
	// 탐방기 -- list
	public List<BoardVO> cafeReviesList(int cBoardNo, SearchCriteria cri) throws Exception;
	public List<BoardVO> cafeReviewBestList(int cBoardNo, SearchCriteria cri) throws Exception;
	public List<BoardVO> cafeReviewMonthBestList() throws Exception;
	// 탐방기 -- read
	public BoardVO cafeReviewRead(int boardNo) throws Exception;
	public List<BoardVO> cafeReviewSameList(BoardVO vo) throws Exception;
	public int cafeReivewSameCnt(BoardVO vo) throws Exception;
	// 탐방기 -- modify
	public void cafeReviewModify(BoardVO vo) throws Exception;
	// 탐방기 -- remove
	public void cafeReviewRemove(BoardVO vo) throws Exception;

	/***재승 추가***/
	//동일한 카페의 탐방기 리스트
	public List<BoardVO> cafeReviewSameListByCafeNo(BoardVO vo) throws Exception;
	public int cafeReivewSameCntByCafeNo(BoardVO vo) throws Exception;
	//해당 카페와 키워드, 지역이 같은 추천카페 리스트
	public List<BoardVO> recommendSameKeywordListByZoneAndTheme(BoardVO boardVO) throws Exception;
	public int recommendSameKeywordCntByZoneAndTheme(BoardVO boardVO) throws Exception;



	
}
