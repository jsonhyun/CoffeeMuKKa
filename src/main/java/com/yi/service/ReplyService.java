package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.Criteria;
import com.yi.domain.ReplyVO;
import com.yi.domain.StarpointVO;
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
	
	/*-------- starPoint ------------------------------------------------------------------*/

	public List<StarpointVO> listByCafeNo(int cafeNo, Criteria cri) throws Exception{
		return dao.listByCafeNo(cafeNo, cri);
	}
	
	public int totalCountByCafeNo(int cafeNo) throws Exception{
		return dao.totalCountByCafeNo(cafeNo);
	}
	
	public StarpointVO selectByStarPointNo(int starPointNo) throws Exception{
		return dao.selectByStarPointNo(starPointNo);
	}
	
	public void insertStarPoint(StarpointVO vo) throws Exception{
		dao.insertStarPoint(vo);
	}
	
	public void updateStarPoint(StarpointVO vo) throws Exception{
		dao.updateStarPoint(vo);
	}
	
	public void deleteStarPoint(int starPointNo) throws Exception{
		dao.deleteStarPoint(starPointNo);
	}
}
