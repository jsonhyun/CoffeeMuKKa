-- cafeReview 더미 테이터 start ----------------------------------------------------------------------- 
-- 카페 탐방기 추가(4월)
drop procedure if exists loopInsert1;
delimiter $$
$$
create procedure loopInsert1()
BEGIN
DECLARE i INT DEFAULT 1;
WHILE i <= 200 DO
	Insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content, view_number, registration_date, update_date ) 
	VALUES(1, floor(1 + (rand() * 78)), floor(1 + (rand() * 127)), concat('[카페탐방기] 더미 데이터 ', i), '<p>test</p>', floor(1 + (rand() * 99)), '2020-05-21', '2020-05-21');

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
WHILE i <= 200 DO
	Insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content, view_number, registration_date, update_date ) 
	VALUES(1, floor(1 + (rand() * 78)), floor(1 + (rand() * 127)), concat('[카페탐방기] 더미 데이터 ', i), '<p>test</p>', floor(1 + (rand() * 99)), '2020-05-21', '2020-05-21');

	insert into image(image_name , board_no)
	values('/2020/05/15/s_03cee4c3-7cfb-4c2b-8d5f-bd6d12385676_delisert-1.jpg', LAST_INSERT_ID());
	
	SET i = i + 1;
END WHILE;
end $$
delimiter ;

CALL loopInsert2();

-- 카페 탐방기 추가(당월)
drop procedure if exists loopInsert3;
delimiter $$
$$
create procedure loopInsert3()
BEGIN
DECLARE i INT DEFAULT 1;
WHILE i <= 200 DO
	Insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content, view_number) 
	VALUES(1, floor(1 + (rand() * 78)), floor(1 + (rand() * 127)), concat('[카페탐방기] 더미 데이터 ', i), '<p>test</p>', floor(1 + (rand() * 99)));

	insert into image(image_name , board_no)
	values('/2020/05/15/s_03cee4c3-7cfb-4c2b-8d5f-bd6d12385676_delisert-1.jpg', LAST_INSERT_ID());
	
	SET i = i + 1;
END WHILE;
end $$
delimiter ;

CALL loopInsert3();

-- 탐방기 추천 추가(4월)
drop procedure if exists loopVoteInsert1;
delimiter $$
$$
create procedure loopVoteInsert1()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 1200 DO
	Insert into vote(board_no, user_no, vote_date) 
	VALUES(floor(35 + (rand() * 200)), floor(1 + (rand() * 78)), '2020-04-22');
	
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
	VALUES(floor(235 + (rand() * 200)), floor(1 + (rand() * 78)), '2020-05-22');
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopVoteInsert2();

-- 탐방기 추천 추가(당월)
drop procedure if exists loopVoteInsert3;
delimiter $$
$$
create procedure loopVoteInsert3()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 1200 DO
	Insert into vote(board_no, user_no, vote_date) 
	VALUES(floor(435 + (rand() * 200)), floor(1 + (rand() * 78)), now());
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopVoteInsert3();

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

select * from board;
-- cafeReview 더미 테이터 end ----------------------------------------------------------------------- 

-- monthlyCafe 더미 테이터 start ---------------------------------------------------------------------

-- 카페 파워링크 null으로 초기화
update cafe 
	set powerlink_cdt = null;
-- sample : 파워링크 신청 데이터 추가
update cafe 
	set powerlink_cdt = 0
	where cafe_cdt = 1 limit 20;

-- cafe테이블에 파워링크여부가 0인 데이터 파워링크테이블에 데이터 넣기
insert into powerlink (cafe_no, pow_cdt) select cafe_no, powerlink_cdt from cafe where powerlink_cdt is not null;

-- 테스트용 sample 데이터
update powerlink 
	set reg_date = "2020-03-20", pow_cdt = 1, post_date = "2020-04-01"
	where pow_no limit 5;

update powerlink 
	set reg_date = "2020-04-10", post_date = "2020-05-01", pow_cdt = 0
	where pow_no in (6, 7, 8, 9, 10);

update powerlink 
	set reg_date = "2020-05-22", post_date = "2020-06-01", pow_cdt = 0
	where pow_no in(11, 12, 13, 14, 15);

update powerlink 
	set reg_date = "2020-06-05", post_date = "2020-07-01", pow_cdt = 0
	where pow_no in(16, 17, 18, 19, 20);

update cafe c left join powerlink p on c.cafe_no = p.cafe_no 
	set c.parking_cdt = p.pow_cdt;

-- monthlyCafe 더미 테이터 end ----------------------------------------------------------------------- 
