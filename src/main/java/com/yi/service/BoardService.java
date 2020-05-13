package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.BoardVO;
import com.yi.persistence.BoardDAO;

@Service
public class BoardService {
	@Autowired
	BoardDAO dao;
	
	public void insert(BoardVO vo) throws Exception{
		dao.insert(vo);
	}
}
