package com.yi.domain;

public class MenuKindsVO {
	private int sortNo;
	private String sortName;

	public int getSortNo() {
		return sortNo;
	}

	public void setSortNo(int sortNo) {
		this.sortNo = sortNo;
	}

	public String getSortName() {
		return sortName;
	}

	public void setSortName(String sortName) {
		this.sortName = sortName;
	}

	@Override
	public String toString() {
		return "MenuKindsVO [sortNo=" + sortNo + ", sortName=" + sortName + "]";
	}

}
