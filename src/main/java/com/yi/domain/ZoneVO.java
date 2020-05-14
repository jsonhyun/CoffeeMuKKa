package com.yi.domain;

public class ZoneVO {
	private int zoneNo; //지역번호
	private String zoneName; //지역이름
	
	
	
	public ZoneVO() {
		
	}

	public ZoneVO(int zoneNo) {
		this.zoneNo = zoneNo;
	}
	
	public int getZoneNo() {
		return zoneNo;
	}
	public void setZoneNo(int zoneNo) {
		this.zoneNo = zoneNo;
	}
	public String getZoneName() {
		return zoneName;
	}
	public void setZoneName(String zoneName) {
		this.zoneName = zoneName;
	}
	
	@Override
	public String toString() {
		return "Zone [zoneNo=" + zoneNo + ", zoneName=" + zoneName + "]";
	}
	
	
}
