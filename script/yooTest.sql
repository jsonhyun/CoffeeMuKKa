select user(), database();

select * from cafe; -- 카페
select * from board; -- 게시판
select * from users; -- 회원 현황
select * from admin; -- 관리자
select * from theme; -- 테마 분류
select * from zone; -- 위치 분류
select * from reply; -- 댓글 테이블
select * from boardkinds; -- 게시판 분류
select * from menukinds; -- 메뉴 분류
select * from menu; -- 메뉴
select * from starpoint; -- 별점
select * from type; -- 회원 타입
select * from grade; -- 회원 등급
select * from authority; -- 관리자 권한
select * from wishlist; -- 위시리스트
select * from image; -- 이미지

-- test
select * from cafe where cafe_name like '%슬%';

select * from image;

select * 
	from cafe c left join image i on c.cafe_no = i.cafe_no
	where c.cafe_no = 4 limit 1;

select * from users where user_id = 'hceo1004';
	
select * from board;
select * from boardkinds;
select * from image;
select * from image where board_no = 1;
select * from image where cafe_no = 1;
select * from cafe;


insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content) values
(1, 2, 2, '카페 루시드 탐방기', '<p>카페 루시드 탐방기~~~</p>');

insert into image(image_name , board_no ) values('/2020/05/15/s_f62c7cca-3f04-4a51-b540-911512f55698_23g-1.jpg', 1);

select * from board b left join image i on b.board_no = i.board_no;

select * from board;

select count(*) from board;
select last_insert_id();

insert into image(image_name , board_no ) values('/2020/05/15/s_f62c7cca-3f04-4a51-b540-911512f55698_23g-1.jpg', );

select u.user_no , u.user_id , u.name , u.user_grade , g.user_grade_name 
	from users u left join grade g on u.user_grade = g.user_grade;

update users 
	set user_grade = 1
	where user_no = 3;


select * from users;

select count(*), b.user_no, u.name , u.user_grade from board b left join users u on b.user_no = u.user_no where b.user_no = 3;
