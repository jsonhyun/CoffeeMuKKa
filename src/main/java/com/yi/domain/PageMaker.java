package com.yi.domain;

public class PageMaker {
	private int totalCount;// 게시글 전체 갯수
	private int startPage; // 시작 번호
	private int endPage; // 끝 번호
	private boolean prev; // 이전 여부
	private boolean next; // 이후 여부

	private int displayPageNum = 10; // 보여지는 페이지 번호 의 수
	private Criteria cri;
	
	private void calculatorData() {
		//현재 페이지의 끝 번호를 구한다. ex) 15/10 = Math.ceil(1.5) = 2*10 = 20
		endPage = (int)(Math.ceil(cri.getPage()/(double)displayPageNum)* displayPageNum);
		//현재 페이지의 시작번호를 구한다. ex) 20-10 + 1 = 11
		startPage = (endPage - displayPageNum) + 1;
		
		//실제 끝번호를 구함
		//ex) 153/10 =Math.ceil(15.3) = 16
		int tempEndPage = (int)(Math.ceil(totalCount/(double)cri.getPerPageNum()));
		
		//만약, 실제 끝번호보다 가상 끝번호가 클 경우, 실제 끝번호로 변경을 해줌
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		//이전 페이지 존재 여부
		prev = (startPage == 1) ? false :true;
		//다음 페이지 존재 여부
		next = (endPage * cri.getPerPageNum() >= totalCount) ? false:true;
	}
	
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calculatorData();
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}

	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}

}
