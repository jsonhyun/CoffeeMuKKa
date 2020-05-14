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
	
	//탐방기
	
	//카페추천
	public void recommendInsert(BoardVO vo) throws Exception{
		dao.recommendInsert(vo);
	}	
	public List<BoardVO> boardList() throws Exception{
		return dao.recommendboardList();
	}
}
