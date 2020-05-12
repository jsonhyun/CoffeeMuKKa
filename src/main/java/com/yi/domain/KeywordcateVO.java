package com.yi.domain;

public class KeywordcateVO {
	private int keySortNo; //키워드분류번호
	private BoardVO boardNo; //게시판번호
	private String keyName; //키워드이름
	
	public int getKeySortNo() {
		return keySortNo;
	}
	public void setKeySortNo(int keySortNo) {
		this.keySortNo = keySortNo;
	}
	public BoardVO getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(BoardVO boardNo) {
		this.boardNo = boardNo;
	}
	public String getKeyName() {
		return keyName;
	}
	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}
	@Override
	public String toString() {
		return "KeywordcateVO [keySortNo=" + keySortNo + ", boardNo=" + boardNo + ", keyName=" + keyName + "]";
	}
	
	
}
