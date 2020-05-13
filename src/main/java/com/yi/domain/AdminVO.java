package com.yi.domain;

public class AdminVO {
	private int anoNo;
	private String anoId;
	private String anoPassword;
	private String anoImage;
	private AuthorityVO anoAuthorityNo;

	public int getAnoNo() {
		return anoNo;
	}

	public void setAnoNo(int anoNo) {
		this.anoNo = anoNo;
	}

	public String getAnoId() {
		return anoId;
	}

	public void setAnoId(String anoId) {
		this.anoId = anoId;
	}

	public String getAnoPassword() {
		return anoPassword;
	}

	public void setAnoPassword(String anoPassword) {
		this.anoPassword = anoPassword;
	}

	public String getAnoImage() {
		return anoImage;
	}

	public void setAnoImage(String anoImage) {
		this.anoImage = anoImage;
	}

	public AuthorityVO getAnoAuthorityNo() {
		return anoAuthorityNo;
	}

	public void setAnoAuthorityNo(AuthorityVO anoAuthorityNo) {
		this.anoAuthorityNo = anoAuthorityNo;
	}

	@Override
	public String toString() {
		return "AdminVO [anoNo=" + anoNo + ", anoId=" + anoId + ", anoPassword=" + anoPassword + ", anoImage="
				+ anoImage + ", anoAuthorityNo=" + anoAuthorityNo + "]";
	}

}
