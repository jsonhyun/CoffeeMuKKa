package com.yi.persistence;

import java.util.List;

import com.yi.domain.Criteria;
import com.yi.domain.ReplyVO;

public interface ReplyDAO {
	// 댓글 리스트 - 페이징
	public List<ReplyVO> listByBoardNo(int boardNo, Criteria cri) throws Exception;
	public int totalCountByReply(int boardNo) throws Exception;
	// 댓글 
	public ReplyVO selectByCmtNo(int commentNo) throws Exception;
	// 댓글 추가
	public void insertReply(ReplyVO vo) throws Exception;
	// 댓글 수정
	public void updateReply(ReplyVO vo) throws Exception;
	// 댓글 삭제
	public void deleteReply(int commentNo) throws Exception;
}
