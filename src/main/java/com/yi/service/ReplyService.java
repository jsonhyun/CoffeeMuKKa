package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.Criteria;
import com.yi.domain.ReplyVO;
import com.yi.domain.UsersVO;
import com.yi.persistence.BoardDAO;
import com.yi.persistence.ReplyDAO;

@Service
public class ReplyService {

	@Autowired
	private ReplyDAO dao;
	
	@Autowired
	private BoardDAO boardDao;
	
	public List<ReplyVO> listByBoardNo(int boardNo, Criteria cri) throws Exception {
		return dao.listByBoardNo(boardNo, cri);
	}
	
	public int totalCountByReply(int boardNo) throws Exception {
		return dao.totalCountByReply(boardNo);
	}
	
	public ReplyVO selectByCmtNo(int commemtNo) throws Exception {
		return dao.selectByCmtNo(commemtNo);
	}
	
	@Transactional
	public void insertReply(ReplyVO vo) throws Exception {
		dao.insertReply(vo);
		boardDao.updateBoardReplyCnt(1, vo.getBoardNo().getBoardNo());
	}
	
	public void updateReply(ReplyVO vo) throws Exception {
		dao.updateReply(vo);
	}
	
	public void deleteReply(int commentNo) throws Exception {
		ReplyVO vo = dao.selectByCmtNo(commentNo);
		dao.deleteReply(commentNo);
		boardDao.updateBoardReplyCnt(-1, vo.getBoardNo().getBoardNo());
	}
}
