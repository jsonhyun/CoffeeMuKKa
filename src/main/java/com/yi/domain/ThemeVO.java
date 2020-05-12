package com.yi.domain;

public class ThemeVO {
	private int themeNo; //테마번호
	private String themeName; //테마이름
	
	public int getThemeNo() {
		return themeNo;
	}
	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	@Override
	public String toString() {
		return "Theme [themeNo=" + themeNo + ", themeName=" + themeName + "]";
	}
	
	
}
