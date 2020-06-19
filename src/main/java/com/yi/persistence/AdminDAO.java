package com.yi.persistence;

import java.util.List;

import com.yi.domain.AdminVO;
import com.yi.domain.SearchCriteria;

public interface AdminDAO {
	public AdminVO readAdmin(String anoId) throws Exception;
	
	public List<AdminVO> selectAdminList(SearchCriteria cri) throws Exception;
	public int selectAdminTotalCnt(SearchCriteria cri) throws Exception;
}
