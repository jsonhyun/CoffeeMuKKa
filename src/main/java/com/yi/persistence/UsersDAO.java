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

	public void modifyUsers(UsersVO vo) throws Exception;
}
