package com.yi.persistence;

public interface PowerLinkDAO {
	// 현재 게시중인 데이터 게시일자
	public String monthlyCafePostDate() throws Exception;
	// 파워링크(월간카페) 게시된 게시글 완료로 변경
	public void monthlyPreCafeUpdate() throws Exception;
	// 파워링크(월간카페) 다음에 게시되어야 할 데이터 게시로 변경
	public void monthlyNextCafeUpdate(String month) throws Exception;
}
