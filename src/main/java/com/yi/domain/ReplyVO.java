package com.yi.domain;

import java.util.Date;

public class ReplyVO {
	private int commentNo; // 댓글번호
	private BoardVO boardNo; // 게시글번호
	private UsersVO userNo; // 회원번호
	private String commentContent; // 댓글내용
	private Date registrationDate; // 작성일
	private Date updateDate; // 수정일

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public BoardVO getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(BoardVO boardNo) {
		this.boardNo = boardNo;
	}

	public UsersVO getUserNo() {
		return userNo;
	}

	public void setUserNo(UsersVO userNo) {
		this.userNo = userNo;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return String.format(
				"ReplyVO [commentNo=%s, boardNo=%s, userNo=%s, commentContent=%s, registrationDate=%s, updateDate=%s]",
				commentNo, boardNo, userNo, commentContent, registrationDate, updateDate);
	}

}
