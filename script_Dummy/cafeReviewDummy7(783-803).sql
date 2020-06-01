-- 당월 (6월) 더미 데이터 ---------------------------------------------------
drop procedure if exists loopInsert3;
delimiter $$
$$
create procedure loopInsert3()
BEGIN
DECLARE i INT DEFAULT 1;
WHILE i <= 3 DO
	Insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content, view_number) 
	VALUES(1, floor(1 + (rand() * 78)), floor(1 + (rand() * 127)), concat('[카페탐방기] 더미 데이터 ', i), '<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_440a2e46-8527-4489-bd2c-ea76ebb5d7f8_성당못빌.jpg">', floor(1 + (rand() * 99)));

	insert into image(image_name , board_no)
	values('/2020/05/15/s_03cee4c3-7cfb-4c2b-8d5f-bd6d12385676_delisert-1.jpg', LAST_INSERT_ID());
	
	SET i = i + 1;
END WHILE;
end $$
delimiter ;

CALL loopInsert3();

-- 6월 데이터
INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(786, 1, floor(1 + (rand() * 78)), 116, '남자셋이서 향긋한 꽃한잔', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_01e4dc11-79b4-4c0d-ac2e-e3f0e992dd31_꽃자리다방.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_01e4dc11-79b4-4c0d-ac2e-e3f0e992dd31_꽃자리다방.jpg', 786);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(787, 1, floor(1 + (rand() * 78)), 21, '세련된 분위기속에서 즐긴 여유!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7fab87d5-e10c-42fd-9312-bafe1a1fe4fe_디웨이브.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7fab87d5-e10c-42fd-9312-bafe1a1fe4fe_디웨이브.jpg', 787);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(788, 1, floor(1 + (rand() * 78)), 116, '남자셋이서 향긋한 꽃한잔', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_01e4dc11-79b4-4c0d-ac2e-e3f0e992dd31_꽃자리다방.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_01e4dc11-79b4-4c0d-ac2e-e3f0e992dd31_꽃자리다방.jpg', 788);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(789, 1, floor(1 + (rand() * 78)), 108, '할모니 갬성물씬 그자체',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_fcb1512f-3476-4f4b-bc48-8c57531cbe6a_로맨스빠빠.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_fcb1512f-3476-4f4b-bc48-8c57531cbe6a_로맨스빠빠.jpg', 789);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(790, 1, floor(1 + (rand() * 78)), 101, '옛사랑의 추억',  
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7908e638-2511-4370-af98-75e34f9c2bbe_류.PNG">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7908e638-2511-4370-af98-75e34f9c2bbe_류.PNG', 790);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(791, 1, floor(1 + (rand() * 78)), 93, '늬들이 오징어먹물샌드위치를 알어?!',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_a1e4de2f-dc8a-4b7b-bf76-98417d2ea5eb_리틀냅.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_a1e4de2f-dc8a-4b7b-bf76-98417d2ea5eb_리틀냅.jpg', 791);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(792, 1, floor(1 + (rand() * 78)), 102, '죽어가던 사랑도 싹트는 딸기와플♥', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_73bf046c-c455-4cf9-88db-1a3540218416_마이커피컬로맨스.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_73bf046c-c455-4cf9-88db-1a3540218416_마이커피컬로맨스.jpg', 792);


INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(793, 1, floor(1 + (rand() * 78)), 4, '도심속의 힙한 한옥뷰', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_7e76cb28-cc7c-4ab0-8276-27f887a75c9f_맨션5.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_7e76cb28-cc7c-4ab0-8276-27f887a75c9f_맨션5.jpg', 793);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(794, 1, floor(1 + (rand() * 78)), 115, '강아지 믹스가 반겨주는 바로 그곳!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_aaa1383b-e6fd-46cd-bada-30d0bf357824_믹스카페.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_aaa1383b-e6fd-46cd-bada-30d0bf357824_믹스카페.jpg', 794);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(795, 1, floor(1 + (rand() * 78)), 81, '초록초록 초록뷰', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_440a2e46-8527-4489-bd2c-ea76ebb5d7f8_성당못빌.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_440a2e46-8527-4489-bd2c-ea76ebb5d7f8_성당못빌.jpg', 795);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(796, 1, floor(1 + (rand() * 78)), 99, '딱 지금가면 좋은날씨~', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_3245aa8a-f084-4c82-a607-779455c313c3_슈얼리.JPG">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_3245aa8a-f084-4c82-a607-779455c313c3_슈얼리.JPG', 796);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(797, 1, floor(1 + (rand() * 78)), 103, '딸기천국으로 초대합니다^^',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_67c432cc-988a-4397-b34d-3096a2746ba2_스테이550.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_67c432cc-988a-4397-b34d-3096a2746ba2_스테이550.jpg', 797);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(798, 1, floor(1 + (rand() * 78)), 45, '우리 향이랑 커피한잔하고 왔어요', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_11543a73-4e30-4eed-92f6-41f2aecc2b58_시공커피.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_11543a73-4e30-4eed-92f6-41f2aecc2b58_시공커피.jpg', 798);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(799, 1, floor(1 + (rand() * 78)), 105, '높이! 더 높이! 아주 높이!!!', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_8ca24bb1-c759-472b-a6b3-3b7b02a80f39_에이플레인.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_8ca24bb1-c759-472b-a6b3-3b7b02a80f39_에이플레인.jpg', 799);


INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(800, 1, floor(1 + (rand() * 78)), 78, '여기서 아메리카노 한잔 하실래요?', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_77b1a609-0a74-43b2-8727-76054e78192f_인문공학.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_77b1a609-0a74-43b2-8727-76054e78192f_인문공학.jpg', 800);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(801, 1, floor(1 + (rand() * 78)), 12, '저희는 커피맛을 조금 모르는 아재넷', 
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_18b10360-a7c1-4d65-ae85-5a33ba4fdb2f_커피맛을조금아는남자.jpg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_18b10360-a7c1-4d65-ae85-5a33ba4fdb2f_커피맛을조금아는남자.jpg', 801);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(802, 1, floor(1 + (rand() * 78)), 122, '인스타감성물씬 헤.이.마!',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_801fa575-cda5-48ef-aa94-b549196eb17b_헤이마.jpeg">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_801fa575-cda5-48ef-aa94-b549196eb17b_헤이마.jpeg', 802);

INSERT INTO coffeemukka.board
(board_no, board_no2, user_no, cafe_no, writing_title, writing_content, view_number)
VALUES(803, 1, floor(1 + (rand() * 78)), 129, '빨간 벽돌집감성',
'<img alt src="/coffeemukka/user/displayFile?filename=/2020/05/31/s_86816b8e-d641-462e-8aa8-3b3857adbffa_벨빌베이크하우스.JPG">', floor(1 + (rand() * 99)));
INSERT INTO coffeemukka.image (image_name, board_no)
VALUES('/2020/05/31/s_86816b8e-d641-462e-8aa8-3b3857adbffa_벨빌베이크하우스.JPG', 803);

-- 탐방기 추천 추가(당월)
drop procedure if exists loopVoteInsert3;
delimiter $$
$$
create procedure loopVoteInsert3()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 500 DO /*추천 총 갯수*/
	Insert into vote(board_no, user_no, vote_date) 
	VALUES(floor(783 + (rand() * 21)), floor(1 + (rand() * 78)), now());
		/* 시작 boardNo , (마지막boardNo-시작boardNo)+1 */
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopVoteInsert3();

-- 카페 탐방기 댓글 추가
drop procedure if exists loopReplyInsert2;
delimiter $$
$$
create procedure loopReplyInsert2()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 50 DO

	insert into reply(board_no, user_no, comment_content) values(floor(783 + (rand() * 21)), floor(1 + (rand() * 78)), concat('댓글 테스트 ', i));
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopReplyInsert2();

-- 생성된 댓글 갯수 게시글 댓글갯수컬럼에 넣기 / 추천 수 board 컬럼에 넣기
drop procedure if exists loopCnt2;
delimiter $$
$$
create procedure loopCnt2()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 20 DO

	update board
		set vote_number = (select count(*) from vote where board_no = i+783)
		where board_no = i+783;
	
	update board 
		set reply_cnt = (select count(*) from reply where board_no = i+783) 
		where board_no = i+783;
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopCnt2();
