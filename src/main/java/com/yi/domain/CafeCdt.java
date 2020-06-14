package com.yi.domain;

public enum CafeCdt {
	WAITING, //승인대기 / 파워링크 대기-- 0
	OPEN, //영업  / 파워링크 게시중-- 1
	CLOSING, // 폐업 / 파워링크 게시완료 -- 2
	CANCEL; // 파워링크 게시 취소
}
