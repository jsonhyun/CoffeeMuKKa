package com.yi.persistence;

import java.util.List;

import com.yi.domain.BoardVO;

public interface BoardDAO {
	//추천카페
	public void rcInsert(BoardVO vo) throws Exception;
	
	//해당 게시판 게시글 리스트 나오기
	public List<BoardVO> listBoard(BoardVO vo) throws Exception;

}
