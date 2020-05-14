package com.yi.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
	public static String uploadFile(String uploadPath, String fileName, byte[] fileData) throws IOException {
		//폴더만들기
		File dir = new File(uploadPath);
		if(dir.exists() == false) {
			dir.mkdir();
		}
		
		//년 월 일
		String target = calcPath(uploadPath); // /2020/04/09
		
		UUID uid = UUID.randomUUID(); //중복되지 않는 고유한 키값을 반환함
		String saveName = uid.toString() + "_" + fileName; //중복되지 않게 이름 맞춤
		File file = new File(uploadPath + target + "/" + saveName);
		FileCopyUtils.copy(fileData, file); //서버 upload 폴더 안에 파일 생성
		
		String thumbPath = makeThumbnail(uploadPath, target, saveName);		
		
		return thumbPath; // /2020/04/29/2222_sImage.jpg
	}
	
	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();
		String yearPath = "/" + cal.get(Calendar.YEAR); // /2020
		String monthPath = String.format("%s/%02d", yearPath, cal.get(Calendar.MONTH)+1); // /2020/04
		String datePath = String.format("%s/%02d", monthPath, cal.get(Calendar.DATE)); // /2020/04/29
		
		makeDir(uploadPath, yearPath, monthPath, datePath);
		return datePath;
	}
	
	private static void makeDir(String uploadPath, String... paths) { // String ...은 몇개의 매개변수가 올지 알 수 없을때 사용
		for(String path:paths) {
			File dir = new File(uploadPath+path);
			if(dir.exists() == false) {
				dir.mkdir();
			}
		}
	}
	
	// uploadPath : root
	// path : 년/월/일 폴더
	// fileName : 오지리널 파일 이름
	private static String makeThumbnail(String uploadPath, String path, String fileName) throws IOException {
		System.out.println(uploadPath + path + "/ " + fileName);
		// 원본 이미지 데이터를 컴퓨터 상의 가상 도화지(가상 공간)에 옮겨옴
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path + "/" + fileName));
		
		// 가장 도화지에 옮겨진 원본을 기준으로 작은 이미지를 가상공간에 만듬
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100); //FIT_TO_HEIGHT : 높이 고정 -> 100으로 고정됨
		
		// Thumbname 이미지 파일명에 _s를 붙임
		String thumbnailName = uploadPath + path + "/s_" + fileName;
		
		// 해당 경로에 빈 파일 생성
		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		
		// 가상 작은 이미지 데이터를 원하는 경로에 저장 함
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		
		// 작은 이미지 경로. root 경로는 빼고 넣음 uploadPath: root경로
		return thumbnailName.substring(uploadPath.length()); // /2020/04/29/2222_sImage.jpg
	}
}
