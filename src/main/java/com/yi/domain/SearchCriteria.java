package com.yi.domain;

public class SearchCriteria extends Criteria {
	private String searchZone;
	private String searchTheme;
	private String searchType;
	private String keyword;

	public String getSearchZone() {
		return searchZone;
	}

	public void setSearchZone(String searchZone) {
		this.searchZone = searchZone;
	}

	public String getSearchTheme() {
		return searchTheme;
	}

	public void setSearchTheme(String searchTheme) {
		this.searchTheme = searchTheme;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "SearchCriteria [searchZone=" + searchZone + ", searchTheme=" + searchTheme + ", searchType="
				+ searchType + ", keyword=" + keyword + "]";
	}

}
