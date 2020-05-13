package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.BoardVO;
import com.yi.persistence.BoardDAO;

@Service
public class BoardService {
	@Autowired
	BoardDAO dao;
	
//	public void rcInsert(BoardVO vo) throws Exception{
//		dao.rcInsert(vo);
//	}
//	
//	public List<BoardVO> listBoard(BoardVO vo) throws Exception{
//		return dao.listBoard(vo);
//	}
	
	public List<BoardVO> boardList() throws Exception{
		return dao.boardList();
	}
}
