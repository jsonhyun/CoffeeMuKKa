package com.yi.domain;

import java.util.Date;

public class UsersVO {
	private int userNo; //회원번호
	private String userId; //회원아이디
	private String password; //비밀번호
	private String name; //이름
	private String nick; //닉네임
	private int gender; //성별
	private Date birthday;//생년월일
	private Date userJoinDate;//회원가입일자
	private int userLeaveCondition; //회원탈퇴유무
	private int point; //포인트
	private String tel; //전화번호
	private String addredd; //주소
	private String detail_address; //상세주소
	private String email; //이메일
	private TypeVO userType; //회원타입
	private GradeVO userGrade; //회원등급
	
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Date getUserJoinDate() {
		return userJoinDate;
	}
	public void setUserJoinDate(Date userJoinDate) {
		this.userJoinDate = userJoinDate;
	}
	public int getUserLeaveCondition() {
		return userLeaveCondition;
	}
	public void setUserLeaveCondition(int userLeaveCondition) {
		this.userLeaveCondition = userLeaveCondition;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddredd() {
		return addredd;
	}
	public void setAddredd(String addredd) {
		this.addredd = addredd;
	}
	public String getDetail_address() {
		return detail_address;
	}
	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public TypeVO getUserType() {
		return userType;
	}
	public void setUserType(TypeVO userType) {
		this.userType = userType;
	}
	public GradeVO getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(GradeVO userGrade) {
		this.userGrade = userGrade;
	}
	
	@Override
	public String toString() {
		return "UsersVO [userNo=" + userNo + ", userId=" + userId + ", password=" + password + ", name=" + name
				+ ", nick=" + nick + ", gender=" + gender + ", birthday=" + birthday + ", userJoinDate=" + userJoinDate
				+ ", userLeaveCondition=" + userLeaveCondition + ", point=" + point + ", tel=" + tel + ", addredd="
				+ addredd + ", detail_address=" + detail_address + ", email=" + email + ", userType=" + userType
				+ ", userGrade=" + userGrade + "]";
	}
	
	
}
