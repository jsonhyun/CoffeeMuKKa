package com.yi.domain;

import java.util.ArrayList;
import java.util.Date;

public class CafeVO {
	private int cafeNo;
	private String cafeName;
	private ThemeVO themeNo;
	private ZoneVO zoneNo;
	private UsersVO userNo;
	private String address;
	private String detailAddress;
	private String tel;
	private String wkdOpentime;
	private String wkndOpentime;
	private String closedDay;
	private String sns;
	private int tableNumber;
	private int socketNumber;
	private int toiletCdt;
	private int mkdessertCdt;
	private int terrasCdt;
	private int reservationCdt;
	private int wondooBuyCdt;
	private int bookCdt;
	private int beerCdt;
	private int goodsCdt;
	private int wifiCdt;
	private int puppyCdt;
	private int reserveokCdt;
	private int parkingCdt;
	private int nokidsCdt;
	private Date registrationDate;
	private Date updateDate;
	private int viewNumber;
	private String content;
	private String oneline;
	private int voteNumber;
	private CafeCdt powerlinkCdt;
	private CafeCdt cafeCdt;
	private ArrayList<ImageVO> images;

	public CafeVO() {
		super();
	}

	public CafeVO(int cafeNo, String cafeName, ThemeVO themeNo, ZoneVO zoneNo, UsersVO userNo, String address,
			String detailAddress, String tel, String wkdOpentime, String wkndOpentime, String closedDay, String sns,
			int tableNumber, int socketNumber, int toiletCdt, int mkdessertCdt, int terrasCdt, int reservationCdt,
			int wondooBuyCdt, int bookCdt, int beerCdt, int goodsCdt, int wifiCdt, int puppyCdt, int reserveokCdt,
			int parkingCdt, int nokidsCdt, Date registrationDate, Date updateDate, int viewNumber, String content,
			String oneline, int voteNumber, CafeCdt powerlinkCdt, CafeCdt cafeCdt) {
		super();
		this.cafeNo = cafeNo;
		this.cafeName = cafeName;
		this.themeNo = themeNo;
		this.zoneNo = zoneNo;
		this.userNo = userNo;
		this.address = address;
		this.detailAddress = detailAddress;
		this.tel = tel;
		this.wkdOpentime = wkdOpentime;
		this.wkndOpentime = wkndOpentime;
		this.closedDay = closedDay;
		this.sns = sns;
		this.tableNumber = tableNumber;
		this.socketNumber = socketNumber;
		this.toiletCdt = toiletCdt;
		this.mkdessertCdt = mkdessertCdt;
		this.terrasCdt = terrasCdt;
		this.reservationCdt = reservationCdt;
		this.wondooBuyCdt = wondooBuyCdt;
		this.bookCdt = bookCdt;
		this.beerCdt = beerCdt;
		this.goodsCdt = goodsCdt;
		this.wifiCdt = wifiCdt;
		this.puppyCdt = puppyCdt;
		this.reserveokCdt = reserveokCdt;
		this.parkingCdt = parkingCdt;
		this.nokidsCdt = nokidsCdt;
		this.registrationDate = registrationDate;
		this.updateDate = updateDate;
		this.viewNumber = viewNumber;
		this.content = content;
		this.oneline = oneline;
		this.voteNumber = voteNumber;
		this.powerlinkCdt = powerlinkCdt;
		this.cafeCdt = cafeCdt;
	}

	public int getCafeNo() {
		return cafeNo;
	}

	public void setCafeNo(int cafeNo) {
		this.cafeNo = cafeNo;
	}

	public String getCafeName() {
		return cafeName;
	}

	public void setCafeName(String cafeName) {
		this.cafeName = cafeName;
	}

	public ThemeVO getThemeNo() {
		return themeNo;
	}

	public void setThemeNo(ThemeVO themeNo) {
		this.themeNo = themeNo;
	}

	public ZoneVO getZoneNo() {
		return zoneNo;
	}

	public void setZoneNo(ZoneVO zoneNo) {
		this.zoneNo = zoneNo;
	}

	public UsersVO getUserNo() {
		return userNo;
	}

	public void setUserNo(UsersVO userNo) {
		this.userNo = userNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getWkdOpentime() {
		return wkdOpentime;
	}

	public void setWkdOpentime(String wkdOpentime) {
		this.wkdOpentime = wkdOpentime;
	}

	public String getWkndOpentime() {
		return wkndOpentime;
	}

	public void setWkndOpentime(String wkndOpentime) {
		this.wkndOpentime = wkndOpentime;
	}

	public String getClosedDay() {
		return closedDay;
	}

	public void setClosedDay(String closedDay) {
		this.closedDay = closedDay;
	}

	public String getSns() {
		return sns;
	}

	public void setSns(String sns) {
		this.sns = sns;
	}

	public int getTableNumber() {
		return tableNumber;
	}

	public void setTableNumber(int tableNumber) {
		this.tableNumber = tableNumber;
	}

	public int getSocketNumber() {
		return socketNumber;
	}

	public void setSocketNumber(int socketNumber) {
		this.socketNumber = socketNumber;
	}

	public int getToiletCdt() {
		return toiletCdt;
	}

	public void setToiletCdt(int toiletCdt) {
		this.toiletCdt = toiletCdt;
	}

	public int getMkdessertCdt() {
		return mkdessertCdt;
	}

	public void setMkdessertCdt(int mkdessertCdt) {
		this.mkdessertCdt = mkdessertCdt;
	}

	public int getTerrasCdt() {
		return terrasCdt;
	}

	public void setTerrasCdt(int terrasCdt) {
		this.terrasCdt = terrasCdt;
	}

	public int getReservationCdt() {
		return reservationCdt;
	}

	public void setReservationCdt(int reservationCdt) {
		this.reservationCdt = reservationCdt;
	}

	public int getWondooBuyCdt() {
		return wondooBuyCdt;
	}

	public void setWondooBuyCdt(int wondooBuyCdt) {
		this.wondooBuyCdt = wondooBuyCdt;
	}

	public int getBookCdt() {
		return bookCdt;
	}

	public void setBookCdt(int bookCdt) {
		this.bookCdt = bookCdt;
	}

	public int getBeerCdt() {
		return beerCdt;
	}

	public void setBeerCdt(int beerCdt) {
		this.beerCdt = beerCdt;
	}

	public int getGoodsCdt() {
		return goodsCdt;
	}

	public void setGoodsCdt(int goodsCdt) {
		this.goodsCdt = goodsCdt;
	}

	public int getWifiCdt() {
		return wifiCdt;
	}

	public void setWifiCdt(int wifiCdt) {
		this.wifiCdt = wifiCdt;
	}

	public int getPuppyCdt() {
		return puppyCdt;
	}

	public void setPuppyCdt(int puppyCdt) {
		this.puppyCdt = puppyCdt;
	}

	public int getReserveokCdt() {
		return reserveokCdt;
	}

	public void setReserveokCdt(int reserveokCdt) {
		this.reserveokCdt = reserveokCdt;
	}

	public int getParkingCdt() {
		return parkingCdt;
	}

	public void setParkingCdt(int parkingCdt) {
		this.parkingCdt = parkingCdt;
	}

	public int getNokidsCdt() {
		return nokidsCdt;
	}

	public void setNokidsCdt(int nokidsCdt) {
		this.nokidsCdt = nokidsCdt;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public int getViewNumber() {
		return viewNumber;
	}

	public void setViewNumber(int viewNumber) {
		this.viewNumber = viewNumber;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getOneline() {
		return oneline;
	}

	public void setOneline(String oneline) {
		this.oneline = oneline;
	}

	public int getVoteNumber() {
		return voteNumber;
	}

	public void setVoteNumber(int voteNumber) {
		this.voteNumber = voteNumber;
	}

	public CafeCdt getPowerlinkCdt() {
		return powerlinkCdt;
	}

	public void setPowerlinkCdt(CafeCdt powerlinkCdt) {
		this.powerlinkCdt = powerlinkCdt;
	}

	public CafeCdt getCafeCdt() {
		return cafeCdt;
	}

	public void setCafeCdt(CafeCdt cafeCdt) {
		this.cafeCdt = cafeCdt;
	}

	public ArrayList<ImageVO> getImages() {
		return images;
	}

	public void setImages(ArrayList<ImageVO> images) {
		this.images = images;
	}

	@Override
	public String toString() {
		return String.format(
				"CafeVO [cafeNo=%s, cafeName=%s, themeNo=%s, zoneNo=%s, userNo=%s, address=%s, detailAddress=%s, tel=%s, wkdOpentime=%s, wkndOpentime=%s, closedDay=%s, sns=%s, tableNumber=%s, socketNumber=%s, toiletCdt=%s, mkdessertCdt=%s, terrasCdt=%s, reservationCdt=%s, wondooBuyCdt=%s, bookCdt=%s, beerCdt=%s, goodsCdt=%s, wifiCdt=%s, puppyCdt=%s, reserveokCdt=%s, parkingCdt=%s, nokidsCdt=%s, registrationDate=%s, updateDate=%s, viewNumber=%s, content=%s, oneline=%s, voteNumber=%s, powerlinkCdt=%s, cafeCdt=%s, images=%s]",
				cafeNo, cafeName, themeNo, zoneNo, userNo, address, detailAddress, tel, wkdOpentime, wkndOpentime,
				closedDay, sns, tableNumber, socketNumber, toiletCdt, mkdessertCdt, terrasCdt, reservationCdt,
				wondooBuyCdt, bookCdt, beerCdt, goodsCdt, wifiCdt, puppyCdt, reserveokCdt, parkingCdt, nokidsCdt,
				registrationDate, updateDate, viewNumber, content, oneline, voteNumber, powerlinkCdt, cafeCdt, images);
	}

}
