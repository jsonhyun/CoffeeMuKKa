package com.yi.domain;

public class ImageVO {
	private int imageNo;
	private String imageName;
	private CafeVO cafeNo;
	private BoardVO boardNo;

	public int getImageNo() {
		return imageNo;
	}

	public void setImageNo(int imageNo) {
		this.imageNo = imageNo;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public CafeVO getCafeNo() {
		return cafeNo;
	}

	public void setCafeNo(CafeVO cafeNo) {
		this.cafeNo = cafeNo;
	}

	public BoardVO getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(BoardVO boardNo) {
		this.boardNo = boardNo;
	}

	@Override
	public String toString() {
		return "ImageVO [imageNo=" + imageNo + ", imageName=" + imageName + ", cafeNo=" + cafeNo + ", boardNo="
				+ boardNo + "]";
	}

}
