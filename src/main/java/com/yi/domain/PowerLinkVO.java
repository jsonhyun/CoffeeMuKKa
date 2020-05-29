package com.yi.domain;

import java.util.Date;

public class PowerLinkVO {
	private int powNo;
	private CafeVO cafeNo;
	private Date regDate;
	private Date postDate;
	private CafeCdt powCdt;

	public int getPowNo() {
		return powNo;
	}

	public void setPowNo(int powNo) {
		this.powNo = powNo;
	}

	public CafeVO getCafeNo() {
		return cafeNo;
	}

	public void setCafeNo(CafeVO cafeNo) {
		this.cafeNo = cafeNo;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	public CafeCdt getPowCdt() {
		return powCdt;
	}

	public void setPowCdt(CafeCdt powCdt) {
		this.powCdt = powCdt;
	}

	@Override
	public String toString() {
		return String.format("PowerLinkVO [powNo=%s, cafeNo=%s, regDate=%s, postDate=%s, powCdt=%s]", powNo, cafeNo,
				regDate, postDate, powCdt);
	}

}
