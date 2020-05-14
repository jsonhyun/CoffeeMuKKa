package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.BoardKindsVO;
import com.yi.domain.BoardVO;
import com.yi.persistence.BoardDAO;

@Service
public class BoardService {
	@Autowired
	BoardDAO dao;
	
	
	/*** 카페추천 ***/
	//추천카페 -- 리스트	
	public List<BoardVO> recommendboardList() throws Exception{
		return dao.recommendboardList();
	}
	//추천카페 -- 등록
	public void recommendInsert(BoardVO vo) throws Exception{
		dao.recommendInsert(vo);
	}	
	//추천카페 -- 상세보기
	public BoardVO recommendReadByNo(int boardNo) throws Exception{
		return dao.recommendReadByNo(boardNo);
	}
	
	/*** 공통 ***/
	//오늘 등록된 글 갯수(**커뮤니티 공통**)
	public int todayBoardCount(int cBoardNo) throws Exception{
		return dao.todayBoardCount(cBoardNo);
	}
	
	/*** 탐방기 ***/
}
