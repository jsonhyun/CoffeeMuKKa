package com.yi.persistence;

import java.util.List;

import com.yi.domain.BoardVO;

public interface BoardDAO {
	
	/*** 추천카페 ***/
	//추천카페 -- 리스트
	public List<BoardVO> recommendboardList() throws Exception;
	//추천카페 -- 등록
	public void recommendInsert(BoardVO vo) throws Exception;
	//추천카페 -- 상세보기
	public BoardVO recommendReadByNo(int boardNo);
	
	/*** 공통 ***/
	//오늘 등록된 글 갯수(**커뮤니티 공통**)
	public int todayBoardCount(int cBoardNo) throws Exception;
	
	/*** 탐방기 ***/
}
