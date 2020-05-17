package com.yi.persistence;

import java.util.List;

import com.yi.domain.ZoneVO;

public interface ZoneDAO {
	// 위치 리스트
	public List<ZoneVO> zoneList() throws Exception;
}
