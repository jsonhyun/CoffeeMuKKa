package com.yi.domain;

public class BoardKindsVO {
	private int boardNo; //게시판번호
	private String boardName; //게시판이름
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	
	@Override
	public String toString() {
		return "BoardKindsVO [boardNo=" + boardNo + ", boardName=" + boardName + "]";
	}
	
	
}
