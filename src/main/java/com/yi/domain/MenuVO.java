package com.yi.domain;

public class MenuVO {
	private int menuNo;
	private CafeVO cafeNo;
	private MenuKindsVO menukinds;
	private String menuName;
	private int hI;
	private int price;
	private int icedMenuPrice;

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public CafeVO getCafeNo() {
		return cafeNo;
	}

	public void setCafeNo(CafeVO cafeNo) {
		this.cafeNo = cafeNo;
	}

	public MenuKindsVO getMenukinds() {
		return menukinds;
	}

	public void setMenukinds(MenuKindsVO menukinds) {
		this.menukinds = menukinds;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int gethI() {
		return hI;
	}

	public void sethI(int hI) {
		this.hI = hI;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getIcedMenuPrice() {
		return icedMenuPrice;
	}

	public void setIcedMenuPrice(int icedMenuPrice) {
		this.icedMenuPrice = icedMenuPrice;
	}

	@Override
	public String toString() {
		return "MenuVO [menuNo=" + menuNo + ", cafeNo=" + cafeNo + ", menukinds=" + menukinds + ", menuName=" + menuName
				+ ", hI=" + hI + ", price=" + price + ", icedMenuPrice=" + icedMenuPrice + "]";
	}

}
