package com.yi.persistence;

import com.yi.domain.AdminVO;

public interface AdminDAO {
	public AdminVO readAdmin(String anoId) throws Exception;
}
