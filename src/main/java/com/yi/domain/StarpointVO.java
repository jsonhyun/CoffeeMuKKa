package com.yi.domain;

import java.util.Date;

public class StarpointVO {
	private int starPointNo;
	private CafeVO cafeNo;
	private ThemeVO themeNo;
	private int starPoint;
	private String starPointComment;
	private Date registrationDate;

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

	public ThemeVO getThemeNo() {
		return themeNo;
	}

	public void setThemeNo(ThemeVO themeNo) {
		this.themeNo = themeNo;
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

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	@Override
	public String toString() {
		return "StarpointVO [starPointNo=" + starPointNo + ", cafeNo=" + cafeNo + ", themeNo=" + themeNo
				+ ", starPoint=" + starPoint + ", starPointComment=" + starPointComment + ", registrationDate="
				+ registrationDate + "]";
	}

}
