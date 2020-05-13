package com.yi.domain;

public class StarpointVO {
	private int starPointNo;
	private CafeVO cafeNo;
	private int starPoint;
	private String starPointComment;

	public int getStarPointNo() {
		return starPointNo;
	}

	public void setStarPointNo(int starPointNo) {
		this.starPointNo = starPointNo;
	}

	public CafeVO getCafeNo() {
		return cafeNo;
	}

	public void setCafeNo(CafeVO cafeNo) {
		this.cafeNo = cafeNo;
	}

	public int getStarPoint() {
		return starPoint;
	}

	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}

	public String getStarPointComment() {
		return starPointComment;
	}

	public void setStarPointComment(String starPointComment) {
		this.starPointComment = starPointComment;
	}

	@Override
	public String toString() {
		return "StarpointVO [starPointNo=" + starPointNo + ", cafeNo=" + cafeNo + ", starPoint=" + starPoint
				+ ", starPointComment=" + starPointComment + "]";
	}

}
