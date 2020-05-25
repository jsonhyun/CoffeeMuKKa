package com.yi.domain;

import java.util.Date;

public class StarpointVO {
	private int starPointNo;
	private CafeVO cafeNo;
	private ThemeVO themeNo;
	private UsersVO userNo;
	private int starPoint;
	private String starPointComment;
	private Date registrationDate;
	private Date updateDate;

	public UsersVO getUserNo() {
		return userNo;
	}

	public void setUserNo(UsersVO userNo) {
		this.userNo = userNo;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

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
		return "StarpointVO [starPointNo=" + starPointNo + ", cafeNo=" + cafeNo + ", themeNo=" + themeNo + ", userNo="
				+ userNo + ", starPoint=" + starPoint + ", starPointComment=" + starPointComment + ", registrationDate="
				+ registrationDate + ", updateDate=" + updateDate + "]";
	}

}
