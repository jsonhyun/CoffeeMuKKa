package com.yi.domain;

public class AuthorityVO {
	private int anoAuthorityNo;
	private String anoAuthorityName;

	public int getAnoAuthorityNo() {
		return anoAuthorityNo;
	}

	public void setAnoAuthorityNo(int anoAuthorityNo) {
		this.anoAuthorityNo = anoAuthorityNo;
	}

	public String getAnoAuthorityName() {
		return anoAuthorityName;
	}

	public void setAnoAuthorityName(String anoAuthorityName) {
		this.anoAuthorityName = anoAuthorityName;
	}

	@Override
	public String toString() {
		return "AuthorityVO [anoAuthorityNo=" + anoAuthorityNo + ", anoAuthorityName=" + anoAuthorityName + "]";
	}

}
