package com.yi.persistence;

import com.yi.domain.UsersVO;

public interface UsersDAO {
	public void updateUsersGrade(int gredeNo, int userNo) throws Exception;

	public UsersVO readUsers(String userid) throws Exception;

	public UsersVO findUsers(UsersVO vo) throws Exception;

	public void modifyUsersPass(UsersVO vo) throws Exception;

	public UsersVO duplCheckId(UsersVO vo) throws Exception;

	public UsersVO duplCheckNick(UsersVO vo)throws Exception;

	public void register(UsersVO vo) throws Exception;

	public UsersVO selectUserPage(String userid) throws Exception;
	
	// 경진 추가 ----------------------------------------------------------------------------
	// 게시글 등록 시 포인트 적립
	public void updatePoint(int amount, int userNo) throws Exception;
}
