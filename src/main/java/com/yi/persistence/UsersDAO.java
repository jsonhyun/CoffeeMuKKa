package com.yi.persistence;

import com.yi.domain.UsersVO;

public interface UsersDAO {
	public void updateUsersGrade(int gredeNo, int userNo) throws Exception;

	public UsersVO readUsers(String userid) throws Exception;

	public UsersVO findUsers(UsersVO vo) throws Exception;
}
