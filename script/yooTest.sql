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
	
desc board;