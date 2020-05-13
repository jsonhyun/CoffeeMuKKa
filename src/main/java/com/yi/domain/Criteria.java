package com.yi.domain;

public class Criteria {
	private int page; //현재 페이지 번호
	private int perPageNum; //한 페이지 display될 게시글의 갯수

	public Criteria() { //default 값을 먼저 설정
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}
	
	public int getPageStart() {//DB 시작 게시글 index 번호 구하는 함수
		return (this.page - 1) * this.perPageNum;
	}
	
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
}
