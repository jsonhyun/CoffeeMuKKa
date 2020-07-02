-- 당월 (6월) 더미 데이터 ---------------------------------------------------
/*drop procedure if exists loopInsert3;
delimiter $$
$$
create procedure loopInsert3()
BEGIN
DECLARE i INT DEFAULT 1;
WHILE i <= 3 DO
	Insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content, view_number, registration_date, update_date) 
	VALUES(1, floor(1 + (rand() * 78)), floor(1 + (rand() * 127)), concat('[카페탐방기] 더미 데이터 ', i), '<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_440a2e46-8527-4489-bd2c-ea76ebb5d7f8_성당못빌.jpg">', floor(1 + (rand() * 99)), '2020-06-11 10:45:10.0', '2020-06-27 10:45:10.0');

	insert into image(image_name , board_no)
	values('/2020/05/15/s_03cee4c3-7cfb-4c2b-8d5f-bd6d12385676_delisert-1.jpg', LAST_INSERT_ID());
	
	SET i = i + 1;
END WHILE;
end $$
delimiter ;

CALL loopInsert3();*/

-- 7월 데이터
INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(870, 1, floor(1 + (rand() * 78)), 8, '달콤한 커피와 그림 한모금', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_9df6c3d0-628a-4d0e-9bfa-0112db0901f6_동성로미술관.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_9df6c3d0-628a-4d0e-9bfa-0112db0901f6_동성로미술관.jpg', 870);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(871, 1, floor(1 + (rand() * 78)), 71, '핵인싸되기 10분전', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_8fab87d5-e10c-42fd-9312-bafe1a1fe4fe_룰리커피.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_8fab87d5-e10c-42fd-9312-bafe1a1fe4fe_룰리커피.jpg', 871);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(872, 1, floor(1 + (rand() * 78)), 95, '시집가기전 엄마와 함께♥', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_9fab87d5-e10c-42fd-9312-bafe1a1fe4fe_오퐁드부아.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_9fab87d5-e10c-42fd-9312-bafe1a1fe4fe_오퐁드부아.jpg', 872);


INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(873, 1, floor(1 + (rand() * 78)), 97, '말로만 듣던 논밭감성', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_10cb1512f-3476-4f4b-bc48-8c57531cbe6a_카르멜.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_10cb1512f-3476-4f4b-bc48-8c57531cbe6a_카르멜.jpg', 873);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(874, 1, floor(1 + (rand() * 78)), 21, '세련된 분위기속에서 즐긴 여유!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7fab87d5-e10c-42fd-9312-bafe1a1fe4fe_디웨이브.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7fab87d5-e10c-42fd-9312-bafe1a1fe4fe_디웨이브.jpg', 874);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(875, 1, floor(1 + (rand() * 78)), 116, '남자셋이서 향긋한 꽃한잔', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_01e4dc11-79b4-4c0d-ac2e-e3f0e992dd31_꽃자리다방.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_01e4dc11-79b4-4c0d-ac2e-e3f0e992dd31_꽃자리다방.jpg', 875);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(876, 1, floor(1 + (rand() * 78)), 108, '할모니 갬성물씬 그자체',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_fcb1512f-3476-4f4b-bc48-8c57531cbe6a_로맨스빠빠.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_fcb1512f-3476-4f4b-bc48-8c57531cbe6a_로맨스빠빠.jpg', 876);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(877, 1, floor(1 + (rand() * 78)), 101, '옛사랑의 추억',  
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7908e638-2511-4370-af98-75e34f9c2bbe_류.PNG">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7908e638-2511-4370-af98-75e34f9c2bbe_류.PNG', 877);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(878, 1, floor(1 + (rand() * 78)), 93, '늬들이 오징어먹물샌드위치를 알어?!',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_a1e4de2f-dc8a-4b7b-bf76-98417d2ea5eb_리틀냅.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_a1e4de2f-dc8a-4b7b-bf76-98417d2ea5eb_리틀냅.jpg', 878);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(879, 1, floor(1 + (rand() * 78)), 102, '죽어가던 사랑도 싹트는 딸기와플♥', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_73bf046c-c455-4cf9-88db-1a3540218416_마이커피컬로맨스.jpg">', floor(1 + (rand() * 99)), '2020-07-01 10:45:10.0', '2020-07-11 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_73bf046c-c455-4cf9-88db-1a3540218416_마이커피컬로맨스.jpg', 879);


INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(880, 1, floor(1 + (rand() * 78)), 4, '도심속의 힙한 한옥뷰', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7e76cb28-cc7c-4ab0-8276-27f887a75c9f_맨션5.jpg">', floor(1 + (rand() * 99)), '2020-07-11 10:45:10.0', '2020-07-21 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7e76cb28-cc7c-4ab0-8276-27f887a75c9f_맨션5.jpg', 880);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(881, 1, floor(1 + (rand() * 78)), 115, '강아지 믹스가 반겨주는 바로 그곳!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_aaa1383b-e6fd-46cd-bada-30d0bf357824_믹스카페.jpg">', floor(1 + (rand() * 99)), '2020-07-11 10:45:10.0', '2020-07-21 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_aaa1383b-e6fd-46cd-bada-30d0bf357824_믹스카페.jpg', 881);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(882, 1, floor(1 + (rand() * 78)), 81, '초록초록 초록뷰', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_440a2e46-8527-4489-bd2c-ea76ebb5d7f8_성당못빌.jpg">', floor(1 + (rand() * 99)), '2020-07-11 10:45:10.0', '2020-07-21 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_440a2e46-8527-4489-bd2c-ea76ebb5d7f8_성당못빌.jpg', 882);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(883, 1, floor(1 + (rand() * 78)), 99, '딱 지금가면 좋은날씨~', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_3245aa8a-f084-4c82-a607-779455c313c3_슈얼리.JPG">', floor(1 + (rand() * 99)), '2020-07-11 10:45:10.0', '2020-07-21 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_3245aa8a-f084-4c82-a607-779455c313c3_슈얼리.JPG', 883);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(884, 1, floor(1 + (rand() * 78)), 103, '딸기천국으로 초대합니다^^',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_67c432cc-988a-4397-b34d-3096a2746ba2_스테이550.jpg">', floor(1 + (rand() * 99)), '2020-07-11 10:45:10.0', '2020-07-21 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_67c432cc-988a-4397-b34d-3096a2746ba2_스테이550.jpg', 884);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(885, 1, floor(1 + (rand() * 78)), 45, '우리 향이랑 커피한잔하고 왔어요', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_11543a73-4e30-4eed-92f6-41f2aecc2b58_시공커피.jpg">', floor(1 + (rand() * 99)), '2020-07-21 10:45:10.0', '2020-07-25 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_11543a73-4e30-4eed-92f6-41f2aecc2b58_시공커피.jpg', 885);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(886, 1, floor(1 + (rand() * 78)), 105, '높이! 더 높이! 아주 높이!!!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_8ca24bb1-c759-472b-a6b3-3b7b02a80f39_에이플레인.jpg">', floor(1 + (rand() * 99)), '2020-07-21 10:45:10.0', '2020-07-25 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_8ca24bb1-c759-472b-a6b3-3b7b02a80f39_에이플레인.jpg', 886);


INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(887, 1, floor(1 + (rand() * 78)), 78, '여기서 아메리카노 한잔 하실래요?', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_77b1a609-0a74-43b2-8727-76054e78192f_인문공학.jpg">', floor(1 + (rand() * 99)), '2020-07-21 10:45:10.0', '2020-07-25 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_77b1a609-0a74-43b2-8727-76054e78192f_인문공학.jpg', 887);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(888, 1, floor(1 + (rand() * 78)), 12, '저희는 커피맛을 조금 모르는 아재넷', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_18b10360-a7c1-4d65-ae85-5a33ba4fdb2f_커피맛을조금아는남자.jpg">', floor(1 + (rand() * 99)), '2020-07-21 10:45:10.0', '2020-07-25 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_18b10360-a7c1-4d65-ae85-5a33ba4fdb2f_커피맛을조금아는남자.jpg', 888);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(889, 1, floor(1 + (rand() * 78)), 122, '인스타감성물씬 헤.이.마!',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_801fa575-cda5-48ef-aa94-b549196eb17b_헤이마.jpeg">', floor(1 + (rand() * 99)), '2020-07-26 10:45:10.0', '2020-07-28 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_801fa575-cda5-48ef-aa94-b549196eb17b_헤이마.jpeg', 889);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(890, 1, floor(1 + (rand() * 78)), 129, '빨간 벽돌집감성',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_86816b8e-d641-462e-8aa8-3b3857adbffa_벨빌베이크하우스.JPG">', floor(1 + (rand() * 99)), '2020-07-26 10:45:10.0', '2020-07-28 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_86816b8e-d641-462e-8aa8-3b3857adbffa_벨빌베이크하우스.JPG', 890);





-- 6월데이터 추가 ---------------------------------------------------------------------------




INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(891, 1, floor(1 + (rand() * 78)), 104, '남자사람친구와 오늘부터 1일', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_9df6c3d0-628a-4d0e-9bfa-0112db0901f6_커피사람친구.JPG">', floor(1 + (rand() * 99)), '2020-07-26 10:45:10.0', '2020-07-28 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_9df6c3d0-628a-4d0e-9bfa-0112db0901f6_커피사람친구.JPG', 891);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(892, 1, floor(1 + (rand() * 78)), 45, '생과일 요거트 찐맛집', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_8fab87d5-e10c-42fd-9312-bafe1a1fe4fe_시공커피.JPG">', floor(1 + (rand() * 99)), '2020-07-26 10:45:10.0', '2020-07-28 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_8fab87d5-e10c-42fd-9312-bafe1a1fe4fe_시공커피.JPG', 892);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(893, 1, floor(1 + (rand() * 78)), 32, '분위기 좋고 조용한 동네감성', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_9fab87d5-e10c-42fd-9312-bafe1a1fe4fe_레드하우스.JPG">', floor(1 + (rand() * 99)), '2020-07-26 10:45:10.0', '2020-07-28 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_9fab87d5-e10c-42fd-9312-bafe1a1fe4fe_레드하우스.JPG', 893);


INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(894, 1, floor(1 + (rand() * 78)), 26, '나는 우리자기랑 녹는점♡', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_10cb1512f-3476-4f4b-bc48-8c57531cbe6a_녹는점.JPG">', floor(1 + (rand() * 99)), '2020-07-26 10:45:10.0', '2020-07-28 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_10cb1512f-3476-4f4b-bc48-8c57531cbe6a_녹는점.JPG', 894);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(895, 1, floor(1 + (rand() * 78)), 98, '내돈주고 내가 사먹은 당당후기', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7fab87d5-e10c-42fd-9312-bafe1a1fe4fe_게이블루프커피.JPG">', floor(1 + (rand() * 99)), '2020-07-26 10:45:10.0', '2020-07-28 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7fab87d5-e10c-42fd-9312-bafe1a1fe4fe_게이블루프커피.JPG', 895);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(896, 1, floor(1 + (rand() * 78)), 24, '여기가 바로 귀염뽀작', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_01e4dc11-79b4-4c0d-ac2e-e3f0e992dd31_미루.JPG">', floor(1 + (rand() * 99)), '2020-07-26 10:45:10.0', '2020-07-28 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_01e4dc11-79b4-4c0d-ac2e-e3f0e992dd31_미루.JPG', 896);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(897, 1, floor(1 + (rand() * 78)), 117, '스콘, 겉바속촉 끝판왕',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_fcb1512f-3476-4f4b-bc48-8c57531cbe6a_모은.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_fcb1512f-3476-4f4b-bc48-8c57531cbe6a_모은.JPG', 897);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(898, 1, floor(1 + (rand() * 78)), 76, '비오는날 미미랑 브런치',  
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7908e638-2511-4370-af98-75e34f9c2bbe_카페바스.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7908e638-2511-4370-af98-75e34f9c2bbe_카페바스.JPG', 898);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(899, 1, floor(1 + (rand() * 78)), 107, '아빠와 여름을 마시고 왔어요',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_a1e4de2f-dc8a-4b7b-bf76-98417d2ea5eb_모가그리고카린.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_a1e4de2f-dc8a-4b7b-bf76-98417d2ea5eb_모가그리고카린.JPG', 899);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(900, 1, floor(1 + (rand() * 78)), 23, '딸기마카롱은 사랑을 담고', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_73bf046c-c455-4cf9-88db-1a3540218416_감미정.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_73bf046c-c455-4cf9-88db-1a3540218416_감미정.JPG', 900);


INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(901, 1, floor(1 + (rand() * 78)), 59, '우리들의 후식타임 go!go!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7e76cb28-cc7c-4ab0-8276-27f887a75c9f_마이브라운노트.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7e76cb28-cc7c-4ab0-8276-27f887a75c9f_마이브라운노트.JPG', 901);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(902, 1, floor(1 + (rand() * 78)), 40, '카페쇼핑 가실까요:D', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_aaa1383b-e6fd-46cd-bada-30d0bf357824_꼬모맨션.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_aaa1383b-e6fd-46cd-bada-30d0bf357824_꼬모맨션.JPG', 902);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(903, 1, floor(1 + (rand() * 78)), 50, '초여름 감성을 담았어요', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_440a2e46-8527-4489-bd2c-ea76ebb5d7f8_카페플리에.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_440a2e46-8527-4489-bd2c-ea76ebb5d7f8_카페플리에.JPG', 903);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(904, 1, floor(1 + (rand() * 78)), 34, '커피커피커피....♡', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_3245aa8a-f084-4c82-a607-779455c313c3_카페23g.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_3245aa8a-f084-4c82-a607-779455c313c3_카페23g.JPG', 904);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(905, 1, floor(1 + (rand() * 78)), 44, '한잔을 마셔도 멋있게~',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_67c432cc-988a-4397-b34d-3096a2746ba2_라우스터프.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_67c432cc-988a-4397-b34d-3096a2746ba2_라우스터프.JPG', 905);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(906, 1, floor(1 + (rand() * 78)), 42, '드디어 먹어본 과일 샌드위치', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_11543a73-4e30-4eed-92f6-41f2aecc2b58_올글래드.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_11543a73-4e30-4eed-92f6-41f2aecc2b58_올글래드.JPG',906);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(907, 1, floor(1 + (rand() * 78)), 60, '야근의 피로를 풀고왔습니다!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_8ca24bb1-c759-472b-a6b3-3b7b02a80f39_데일리니드.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_8ca24bb1-c759-472b-a6b3-3b7b02a80f39_데일리니드.JPG', 907);


INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(908, 1, floor(1 + (rand() * 78)), 52, '그거알어? 라떼는 말이야..', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_77b1a609-0a74-43b2-8727-76054e78192f_카페이랑.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_77b1a609-0a74-43b2-8727-76054e78192f_카페이랑.JPG', 908);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(909, 1, floor(1 + (rand() * 78)), 36, '여기 너무 분위기 쩔어!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_18b10360-a7c1-4d65-ae85-5a33ba4fdb2f_셉트.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_18b10360-a7c1-4d65-ae85-5a33ba4fdb2f_셉트.JPG', 909);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(910, 1, floor(1 + (rand() * 78)), 19, '동네 아줌씨들의 수다삼매경',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_801fa575-cda5-48ef-aa94-b549196eb17b_차우림.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_801fa575-cda5-48ef-aa94-b549196eb17b_차우림.JPG', 910);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number, registration_date, update_date) 
VALUES(911, 1, floor(1 + (rand() * 78)), 88, '카스테라 맛집이어라~~',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_86816b8e-d641-462e-8aa8-3b3857adbffa_키친툴.JPG">', floor(1 + (rand() * 99)), '2020-07-28 10:45:10.0', '2020-07-29 10:45:10.0');
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_86816b8e-d641-462e-8aa8-3b3857adbffa_키친툴.JPG', 911);


-- 탐방기 추천 추가(당월)
drop procedure if exists loopVoteInsert6;
delimiter $$
$$
create procedure loopVoteInsert6()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 900 DO /*추천 총 갯수*/
	Insert into vote(board_no, user_no, vote_date) 
	VALUES(floor(870 + (rand() * 42)), floor(1 + (rand() * 78)), '2020-07-30 10:45:10.0');
		/* 시작 boardNo , (마지막boardNo-시작boardNo)+1 */
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopVoteInsert6();

-- 카페 탐방기 댓글 추가
drop procedure if exists loopReplyInsert5;
delimiter $$
$$
create procedure loopReplyInsert5()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 300 DO

	insert into reply(board_no, user_no, comment_content) values(floor(870 + (rand() * 42)), floor(1 + (rand() * 78)), concat('댓글 테스트 ', i));
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopReplyInsert5();

-- 생성된 댓글 갯수 게시글 댓글갯수컬럼에 넣기 / 추천 수 board 컬럼에 넣기
drop procedure if exists loopCnt5;
delimiter $$
$$
create procedure loopCnt5()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 41 DO

	update board
		set vote_number = (select count(*) from vote where board_no = i+870)
		where board_no = i+870;
	
	update board 
		set reply_cnt = (select count(*) from reply where board_no = i+870) 
		where board_no = i+870;
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopCnt5();
