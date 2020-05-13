package com.yi.domain;

import java.util.Date;

public class BoardVO {
	private int boardNo; //게시글번호
	private BoardKindsVO boardNo2; //게시판번호
	private KeywordcateVO keySortNo; // 키워드분류번호
	private UsersVO userNo; //회원번호
	private ZoneVO zoneNo; //지역번호
	private ThemeVO themeNo; //테마번호
	private CafeVO cafeNo; // 카페번호
	private int writingLockCondition;//글 잠금여부
	private String writingTitle;//글제목
	private Date registrationDate;//작성일
	private Date updateDate;//수정일
	private int viewNumber;//조회수
	private int voteNumber;//추천수
	private String writingContent;//글내용
	private String address; // 추가된주소(무까인 추천 -> 새로운 카페 주소)
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public BoardKindsVO getBoardNo2() {
		return boardNo2;
	}
	public void setBoardNo2(BoardKindsVO boardNo2) {
		this.boardNo2 = boardNo2;
	}
	public KeywordcateVO getKeySortNo() {
		return keySortNo;
	}
	public void setKeySortNo(KeywordcateVO keySortNo) {
		this.keySortNo = keySortNo;
	}
	public UsersVO getUserNo() {
		return userNo;
	}
	public void setUserNo(UsersVO userNo) {
		this.userNo = userNo;
	}
	public ZoneVO getZoneNo() {
		return zoneNo;
	}
	public void setZoneNo(ZoneVO zoneNo) {
		this.zoneNo = zoneNo;
	}
	public ThemeVO getThemeNo() {
		return themeNo;
	}
	public void setThemeNo(ThemeVO themeNo) {
		this.themeNo = themeNo;
	}
	public int getWritingLockCondition() {
		return writingLockCondition;
	}
	public void setWritingLockCondition(int writingLockCondition) {
		this.writingLockCondition = writingLockCondition;
	}
	public String getWritingTitle() {
		return writingTitle;
	}
	public void setWritingTitle(String writingTitle) {
		this.writingTitle = writingTitle;
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
	public int getViewNumber() {
		return viewNumber;
	}
	public void setViewNumber(int viewNumber) {
		this.viewNumber = viewNumber;
	}
	public int getVoteNumber() {
		return voteNumber;
	}
	public void setVoteNumber(int voteNumber) {
		this.voteNumber = voteNumber;
	}
	public String getWritingContent() {
		return writingContent;
	}
	public void setWritingContent(String writingContent) {
		this.writingContent = writingContent;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public CafeVO getCafeNo() {
		return cafeNo;
	}
	public void setCafeNo(CafeVO cafeNo) {
		this.cafeNo = cafeNo;
	}
	
	@Override
	public String toString() {
		return "BoardVO [boardNo=" + boardNo + ", boardNo2=" + boardNo2 + ", KeySortNo=" + keySortNo + ", userNo="
				+ userNo + ", zoneNo=" + zoneNo + ", themeNo=" + themeNo + ", cafeNo=" + cafeNo
				+ ", writingLockCondition=" + writingLockCondition + ", writingTitle=" + writingTitle
				+ ", registrationDate=" + registrationDate + ", updateDate=" + updateDate + ", viewNumber=" + viewNumber
				+ ", voteNumber=" + voteNumber + ", writingContent=" + writingContent + ", address=" + address + "]";
	}

	
	
	
	
		
}
