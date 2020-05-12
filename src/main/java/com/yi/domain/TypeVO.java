package com.yi.domain;

public class TypeVO {
	private int userType;//회원타입
	private String userTypeName;//회원타입이름
	
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	public String getUserTypeName() {
		return userTypeName;
	}
	public void setUserTypeName(String userTypeName) {
		this.userTypeName = userTypeName;
	}
	
	@Override
	public String toString() {
		return "TypeVO [userType=" + userType + ", userTypeName=" + userTypeName + "]";
	}
	
	
}
