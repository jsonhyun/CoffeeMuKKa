package com.yi.persistence;

import java.util.List;

import com.yi.domain.BoardVO;

public interface BoardDAO {
	
	//추천카페 -- 리스트(테스트중)
	public List<BoardVO> recommendboardList() throws Exception;
	//추천카페 -- 등록
	public void recommendInsert(BoardVO vo) throws Exception;
	//추천카페 -- 상세보기
	public BoardVO recommendReadByNo(int boardNo);
	
	
	//탐방기
}
