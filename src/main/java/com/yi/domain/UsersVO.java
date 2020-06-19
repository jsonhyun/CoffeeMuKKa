package com.yi.domain;

import java.util.Date;

public class UsersVO {
	private int userNo; // 회원번호
	private String userId; // 회원아이디
	private String password; // 비밀번호
	private String name; // 이름
	private String nick; // 닉네임
	private Gender gender; // 성별
	private Date birthday;// 생년월일
	private Date userJoinDate;// 회원가입일자
	private Condition userLeaveCondition; // 회원탈퇴유무
	private int point; // 포인트
	private String tel; // 전화번호
	private String address; // 주소
	private String detailAddress; // 상세주소
	private String email; // 이메일
	private TypeVO userType; // 회원타입
	private GradeVO userGrade; // 회원등급
	private CafeVO cafeName;

	public UsersVO() {
	}

	public UsersVO(int userNo) {
		this.userNo = userNo;
	}

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

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
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

	public Condition getUserLeaveCondition() {
		return userLeaveCondition;
	}

	public void setUserLeaveCondition(Condition userLeaveCondition) {
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
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
	
	public CafeVO getCafeName() {
		return cafeName;
	}

	public void setCafeName(CafeVO cafeName) {
		this.cafeName = cafeName;
	}

	@Override
	public String toString() {
		return String.format(
				"UsersVO [userNo=%s, userId=%s, password=%s, name=%s, nick=%s, gender=%s, birthday=%s, userJoinDate=%s, userLeaveCondition=%s, point=%s, tel=%s, address=%s, detailAddress=%s, email=%s, userType=%s, userGrade=%s, cafeName=%s]",
				userNo, userId, password, name, nick, gender, birthday, userJoinDate, userLeaveCondition, point, tel,
				address, detailAddress, email, userType, userGrade, cafeName);
	}

}
