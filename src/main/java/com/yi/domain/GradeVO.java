package com.yi.domain;

public class GradeVO {
	private int userGrade;//회원등급
	private String userGradeName;//회원등급이름
	private String userGradeImage;//회원등급이미지
	
	public int getUserGrede() {
		return userGrade;
	}
	public void setUserGrede(int userGrede) {
		this.userGrade = userGrede;
	}
	public String getUserGradeName() {
		return userGradeName;
	}
	public void setUserGradeName(String userGradeName) {
		this.userGradeName = userGradeName;
	}
	public String getUserGradeImage() {
		return userGradeImage;
	}
	public void setUserGradeImage(String userGradeImage) {
		this.userGradeImage = userGradeImage;
	}
	
	@Override
	public String toString() {
		return "GradeVO [userGrade=" + userGrade + ", userGradeName=" + userGradeName + ", userGradeImage="
				+ userGradeImage + "]";
	}
	
	
	
	
}
