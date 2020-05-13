package com.yi.persistence;

import java.util.List;

import com.yi.domain.CafeVO;

public interface UserCafeDAO {
	public void createCafe(CafeVO vo) throws Exception;
	public CafeVO readCafe(int cafeNo) throws Exception;
	public List<CafeVO> list() throws Exception;
	public void updateCafe(CafeVO vo) throws Exception;
	public void deleteCafe(int cafeNo) throws Exception;
}
