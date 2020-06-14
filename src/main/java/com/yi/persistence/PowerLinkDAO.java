package com.yi.persistence;

import java.util.List;

import com.yi.domain.PowerLinkVO;
import com.yi.domain.SearchCriteria;

public interface PowerLinkDAO {
	// 현재 게시중인 데이터 게시일자
	public String monthlyCafePostDate() throws Exception;
	// 파워링크(월간카페) 게시된 게시글 완료로 변경
	public void monthlyPreCafeUpdate() throws Exception;
	// 파워링크(월간카페) 다음에 게시되어야 할 데이터 게시로 변경
	public void monthlyNextCafeUpdate(String month) throws Exception;
	
	// 파워링크 관리 리스트
	public List<PowerLinkVO> selectAdminMonCafeList(SearchCriteria cri) throws Exception;
	// 파워링크 전체 갯수
	public int selectAdminMonCafeTotalCnt(SearchCriteria cri) throws Exception;
	
	// 파워링크 게시대기중인 마지막 데이터 year, month
	public List<Integer> selectAdminMonCafeLastWaitYearAndMon() throws Exception;
	// 파워링크 게시대기중인 첫번째 데이터 year, month
	public List<Integer> selectAdminMonCafeFirstWaitYearAndMon() throws Exception;
	
	// 파워링크 게시대기중 마지막으로 등록된 달의 갯수
	public int selectAdminMonCafeLastMonthCnt(int year, int month) throws Exception;
	// 파워링크 게시일 등록
	public void updateAdminMonCafePostDate(String postDate, int powNo) throws Exception;
	// 파워링크 게시 취소
	public void updateAdminMonCafePostCancel(PowerLinkVO vo) throws Exception;
	// 취소된 파워 링크 뒤 파워링크
	public List<Integer> selectAdminBackMonCafe(int powNo) throws Exception;
}
