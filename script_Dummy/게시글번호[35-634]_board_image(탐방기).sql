-- cafeReview 더미 테이터 start ----------------------------------------------------------------------- 
-- 카페 탐방기 추가(4월)
drop procedure if exists loopInsert1;
delimiter $$
$$
create procedure loopInsert1()
BEGIN
DECLARE i INT DEFAULT 1;
WHILE i <= 300 DO
	Insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content, view_number, registration_date, update_date ) 
	VALUES(1, floor(1 + (rand() * 78)), floor(1 + (rand() * 127)), concat('[카페탐방기] 더미 데이터 ', i), '<p>test</p>', floor(1 + (rand() * 99)), '2020-04-21', '2020-04-21');

	insert into image(image_name , board_no)
	values('/2020/05/15/s_03cee4c3-7cfb-4c2b-8d5f-bd6d12385676_delisert-1.jpg', LAST_INSERT_ID());
	
	SET i = i + 1;
END WHILE;
end $$
delimiter ;

CALL loopInsert1();

-- 카페 탐방기 추가(5월)
drop procedure if exists loopInsert2;
delimiter $$
$$
create procedure loopInsert2()
BEGIN
DECLARE i INT DEFAULT 1;
WHILE i <= 300 DO
	Insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content, view_number, registration_date, update_date ) 
	VALUES(1, floor(1 + (rand() * 78)), floor(1 + (rand() * 127)), concat('[카페탐방기] 더미 데이터 ', i), '<p>test</p>', floor(1 + (rand() * 99)), '2020-05-21', '2020-05-21');

	insert into image(image_name , board_no)
	values('/2020/05/15/s_03cee4c3-7cfb-4c2b-8d5f-bd6d12385676_delisert-1.jpg', LAST_INSERT_ID());
	
	SET i = i + 1;
END WHILE;
end $$
delimiter ;

CALL loopInsert2();

-- 탐방기 추천 추가(4월)
drop procedure if exists loopVoteInsert1;
delimiter $$
$$
create procedure loopVoteInsert1()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 1200 DO
	Insert into vote(board_no, user_no, vote_date) 
	VALUES(floor(35 + (rand() * 300)), floor(1 + (rand() * 78)), '2020-04-22');
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopVoteInsert1();

-- 탐방기 추천 추가(5월)
drop procedure if exists loopVoteInsert2;
delimiter $$
$$
create procedure loopVoteInsert2()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 1200 DO
	Insert into vote(board_no, user_no, vote_date) 
	VALUES(floor(335 + (rand() * 300)), floor(1 + (rand() * 78)), '2020-05-22');
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopVoteInsert2();

-- 카페 탐방기 댓글 추가
drop procedure if exists loopReplyInsert;
delimiter $$
$$
create procedure loopReplyInsert()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 1200 DO

	insert into reply(board_no, user_no, comment_content) values(floor(35 + (rand() * 600)), floor(1 + (rand() * 78)), concat('댓글 테스트 ', i));
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopReplyInsert();

-- 생성된 댓글 갯수 게시글 댓글갯수컬럼에 넣기 / 추천 수 board 컬럼에 넣기
drop procedure if exists loopCnt;
delimiter $$
$$
create procedure loopCnt()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 634 DO

	update board
		set vote_number = (select count(*) from vote where board_no = i+34)
		where board_no = i+34;
	
	update board 
		set reply_cnt = (select count(*) from reply where board_no = i+34) 
		where board_no = i+34;
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopCnt();

-- cafeReview 더미 테이터 end ----------------------------------------------------------------------- 

