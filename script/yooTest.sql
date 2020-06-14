select user(), database();

select * from cafe; -- 카페
select * from board; -- 게시판
select * from users where user_id = '1l7b7utZk'; -- 회원 현황
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
select * from vote; -- 추천리스트
select * from starpoint; -- 별점 리스트
select * from license; -- 사업자등록번호

select * from board order by board_no desc;
select * from image order by image_no desc;
select * from reply where board_no = 803;


-- test(admin) ------------------------------------------------------------------------------
select count(*) from cafe where cafe_cdt = 0;
select * from cafe where cafe_cdt = 0;
select u.name, c.* 
	from cafe c left join users u on c.user_no = u.user_no
	where c.cafe_cdt != 0 
	order by registration_date desc 
	limit 0, 10;

select u.name, c.* 
	from cafe c left join users u on c.user_no = u.user_no
	where c.cafe_cdt = 0;

select u.name, c.* from cafe c left join users u on c.user_no = u.user_no 
where c.cafe_cdt = 0 and c.cafe_name like CONCAT('%', '슬', '%') limit 0, 10;

select count(*) from board where board_no2 = 2 and date(registration_date) = date(now()) - 1 ;
select count(*) from board where board_no2 = 2 and date(registration_date) = date(now());


select month(registration_date) as month, count(*) from cafe where month(registration_date) = month(now())-3 and cafe_cdt = 1;

select month(registration_date) as month, count(*) as cnt from board where month(registration_date) = month(now())-0 and board_no2 = 2;

-- 카페 등록 승인
select * from cafe;
select count(*) from cafe where owner_license_no = '632-63-77912';

select cafe_cdt from cafe where cafe_no = 2;

update cafe 
	set cafe_cdt = 0, registration_date = now()
	where cafe_no = 3;

-- 월간 카페
select p.pow_no, c.cafe_name , p.reg_date , p.post_date , p.pow_cdt  
	from powerlink p left join cafe c on p.cafe_no = c.cafe_no
	order by field(p.pow_cdt , 1, 0, 2), p.post_date asc, p.pow_no asc;

select cafe_no ,powerlink_cdt from cafe;

select * from powerlink;

select count(*)  
	from powerlink p left join cafe c on p.cafe_no = c.cafe_no
	where c.cafe_name like '%루%';

select year(post_date) as year , month(post_date) as month
	from powerlink
	where pow_cdt = 0 and post_date != '0000-00-00' 
	order by pow_no desc limit 1;

select year(post_date) as year , month(post_date) as month
	from powerlink
	where pow_cdt = 0 and post_date != '0000-00-00' 
	order by pow_no asc limit 1;

select pow_no from powerlink
	where post_date != '0000-00-00' and pow_no > 20 and pow_cdt = 0;

select count(*)
	from powerlink 
	where year(post_date) = 2020 and month(post_date) = 7 and pow_cdt = 0;

update powerlink 
	set post_date = '2020/8/01'
	where pow_no = 21;

select * from powerlink 
	where pow_no = 21;
	


update cafe c right join powerlink p on c.cafe_no = p.cafe_no 
	set c.powerlink_cdt = p.pow_cdt;

-- 카페 점수
select u.*, c.cafe_name from users u left join cafe c on u.user_no = c.user_no where user_type = 1;

-- 관리자 list
select a.*, ah.* from admin a join authority ah on a.ano_authority_no = ah.ano_authority_no;

-- 탐방기 
select * from board where board_no2 = 1;


-- test(user) ------------------------------------------------------------------------------
select * from cafe where cafe_name like '%슬%';

select * 
	from cafe c left join image i on c.cafe_no = i.cafe_no
	where c.cafe_no = 4 limit 1;

select * from users where user_id = 'hceo1004';
select * from image where board_no = 1;
select * from image where cafe_no = 1;
select * from board b left join image i on b.board_no = i.board_no;

/*insert into board(board_no2 , user_no , cafe_no , writing_title , writing_content) values
(1, 2, 2, '카페 루시드 탐방기', '<p>카페 루시드 탐방기~~~</p>');

insert into image(image_name , board_no ) values('/2020/05/15/s_f62c7cca-3f04-4a51-b540-911512f55698_23g-1.jpg', 1);*/


select count(*) from board;
select last_insert_id();

-- insert into image(image_name , board_no ) values('/2020/05/15/s_f62c7cca-3f04-4a51-b540-911512f55698_23g-1.jpg', );

select u.user_no , u.user_id , u.name , u.user_grade , g.user_grade_name 
	from users u left join grade g on u.user_grade = g.user_grade;

-- update users set user_grade = 1	where user_no = 3;

select count(*), b.user_no, u.name , u.user_grade from board b left join users u on b.user_no = u.user_no where b.user_no = 3;

select * 
	from board b left join image i on b.board_no = i.board_no 
	where board_no2 = 1
	order by b.board_no desc limit 0, 20;

select * from board;
select count(*) as reply_cnt
	from reply
	where board_no = 1;

select u.nick , u.user_id , u.user_grade , g.user_grade_image , b.board_no , 
		b.view_number , b.writing_title , b.registration_date , b.writing_content , b.vote_number , b.reply_cnt ,
		z.zone_no , z.zone_name , t.theme_no , t.theme_name , c.cafe_name ,i.image_name 
	from board b left join image i on b.board_no = i.board_no 
				 left join users u on b.user_no = u.user_no 
				 left join grade g on u.user_grade = g.user_grade 
				 left join cafe c on b.cafe_no = c.cafe_no 
				 left join zone z on c.zone_no = z.zone_no 
				 left join theme t on c.theme_no = t.theme_no 
	            where b.board_no2 = 2 
	            order by b.board_no desc limit 0, 10; 
	           
select u.user_no, u.nick , u.name , u.user_id , u.user_grade , g.user_grade_image , b.board_no ,
	   b.view_number , b.writing_title , b.registration_date , b.update_date,
	   b.writing_content , b.vote_number , b.reply_cnt , b.board_del_cdt, z.zone_no , z.zone_name ,
	   t.theme_no , t.theme_name , c.cafe_no, c.cafe_name , c.address, i.image_name 
	from board b left join image i on b.board_no = i.board_no 
				left join users u on b.user_no = u.user_no 
				left join grade g on u.user_grade = g.user_grade 
				left join cafe c on b.cafe_no = c.cafe_no 
				left join zone z on c.zone_no = z.zone_no 
				left join theme t on c.theme_no = t.theme_no
	where b.board_no2 = 1
	order by board_no desc;

select u.user_no, u.nick , u.name , u.user_id , u.user_grade , g.user_grade_image , b.board_no 
, b.view_number , b.writing_title , b.registration_date , b.update_date, b.writing_content 
, b.vote_number , b.reply_cnt , b.board_del_cdt, z.zone_no , z.zone_name , t.theme_no , t.theme_name 
, c.cafe_no, c.cafe_name , c.address, i.image_name from board b left join image i on b.board_no 
= i.board_no left join users u on b.user_no = u.user_no left join grade g on u.user_grade = 
g.user_grade left join cafe c on b.cafe_no = c.cafe_no left join zone z on c.zone_no = z.zone_no 
left join theme t on c.theme_no = t.theme_no WHERE b.board_no2 = 2 order by b.board_no desc 
limit 0, 10


select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt
	from starpoint s left join theme t on s.theme_no = t.theme_no left join cafe c on s.cafe_no = c.cafe_no 
	where s.cafe_no = 46 and s.theme_no != c.theme_no 
	group by s.theme_no 
	order by cnt desc, s.theme_no limit 2;

select u.nick , u.user_id , u.user_grade , g.user_grade_image , b.board_no , 
		b.view_number , b.writing_title , b.registration_date , b.writing_content , b.vote_number , b.reply_cnt ,
		z.zone_no , z.zone_name , t.theme_no , t.theme_name , c.cafe_name ,i.image_name , 
	from board b left join image i on b.board_no = i.board_no 
				 left join users u on b.user_no = u.user_no 
				 left join grade g on u.user_grade = g.user_grade 
				 left join cafe c on b.cafe_no = c.cafe_no 
				 left join zone z on c.zone_no = z.zone_no 
				 left join theme t on c.theme_no = t.theme_no,
				 (select count() from starpoint)
	where b.board_no2 = 1 and b.board_del_cdt = 1 and t.theme_no = 1
	order by b.vote_number desc limit 0, 20; 



select count(b.board_no) 
	from board b left join image i on b.board_no = i.board_no 
				 left join users u on b.user_no = u.user_no 
				 left join grade g on u.user_grade = g.user_grade 
				 left join cafe c on b.cafe_no = c.cafe_no 
				 left join zone z on c.zone_no = z.zone_no 
				 left join theme t on c.theme_no = t.theme_no 
	where z.zone_no = 3 and board_no2 = 1 ;

select u.nick , u.user_id , u.user_grade , g.user_grade_image , b.board_no , 
		b.view_number , b.writing_title , b.registration_date , b.writing_content , b.vote_number , b.reply_cnt ,
		z.zone_no , z.zone_name , t.theme_no , t.theme_name , c.cafe_name ,i.image_name 
	from board b left join image i on b.board_no = i.board_no 
				 left join users u on b.user_no = u.user_no 
				 left join grade g on u.user_grade = g.user_grade 
				 left join cafe c on b.cafe_no = c.cafe_no 
				 left join zone z on c.zone_no = z.zone_no 
				 left join theme t on c.theme_no = t.theme_no
	where c.cafe_no = 7 and b.board_no != 12;

select count(*) 
	from board b left join cafe c on b.cafe_no = c.cafe_no 
	where c.cafe_no = 7 and b.board_no != 12;

-- 수정
-- update image set image_name = ? where board_no = ?;
/*update board 
	set writing_title = ?, writing_content = ?, update_date = now()
	where board_no = ?*/

-- 삭제 여부 변경
update board 
	set board_del_cdt = 1
	where board_no = 210;

select * from image where board_no = 2;
select * from board where board_no = 210;

update board 
	set registration_date = '2020-05-18', update_date = '2020-05-18'
	where board_no = 210;

-- 좋아요(추천수)
select board_no , vote_number from board;
-- update board set vote_number = vote_number + 1 where board_no = 1;
-- update board set vote_number = vote_number - 1 where board_no = 1;

select vote_number from board where board_no = 211;
select * from vote where board_no = 211;

-- 추천 추가
-- insert into vote(board_no, user_no) values(211, 3);
-- 추천 취소
-- delete from vote where board_no = 211 and user_no = 3;
-- 변경된 추천 갯수 게시판 테이블에 추가
/*update board 
	set vote_number = (select count(*) from vote where board_no = 211)
	where board_no = 211;*/

-- 댓글
/*
insert into reply(board_no, user_no, comment_content) values(211, 3, '댓글 테스트');
update reply 
	set comment_content = '댓글 수정 테스트', update_date = now()
	where comment_no = 4;
delete from reply where comment_no = 4;
*/

select * from reply;

select r.comment_no , r.board_no , u.user_grade, g.user_grade_image, 
	   u.user_no, u.user_id, u.nick, r.comment_content, r.update_date 
	from reply r left join users u on r.user_no = u.user_no 
				left join grade g on u.user_grade = g.user_grade 
	where board_no = 210 
	order by comment_no desc;

select r.comment_no , r.board_no , u.user_grade, g.user_grade_image, 
		u.user_no, u.user_id, u.nick, r.comment_content, r.update_date 
	from reply r left join users u on r.user_no = u.user_no 
				left join grade g on u.user_grade = g.user_grade 
	where comment_no = 16;

select count(board_no) from reply where board_no = 211;

-- 탐방기 베스트 
select v.board_no , num.cnt , b.writing_title , b.reply_cnt 
	from vote v left join board b on v.board_no = b.board_no, 
	(select board_no, count(board_no) as cnt  from vote where month(vote_date) = month(now())-1 group by board_no) num
	where v.board_no = num.board_no and b.board_no2 = 1
	group by board_no
	order by num.cnt desc, v.board_no limit 10;

select * from board where board_no2 = 1 order by board_no desc;

select * from vote where board_no = 1;

select board_no, count(board_no) as cnt  from vote where month(vote_date) = month(now())-1 group by board_no desc;

select reply_cnt from board where board_no = 85;

select board_no, count(board_no) as cnt  from vote where month(vote_date) = month(now())-1 group by board_no order by cnt desc;
select board_no, count(board_no) as cnt  from vote group by board_no order by cnt desc;
select * from vote where month(vote_date) = month(now())-1;

select month(now()) - 1 ;


-- 테마 순위
select s.cafe_no , s.theme_no, t.theme_name, c.theme_no, count(s.theme_no) as cnt
	from starpoint s left join theme t on s.theme_no = t.theme_no left join cafe c on s.cafe_no = c.cafe_no 
	where s.cafe_no = 1 and s.theme_no != c.theme_no 
	group by s.theme_no 
	order by cnt desc, s.theme_no limit 2;

select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt
	from starpoint s left join theme t on s.theme_no = t.theme_no left join cafe c on s.cafe_no = c.cafe_no 
	where s.cafe_no = 10
	group by s.theme_no 
	order by cnt desc, s.theme_no;

select * from starpoint where cafe_no = 4 and theme_no = 6;
select * from theme;
select * from cafe where cafe_no = 46;

-- 메인 카페 검색
select * from cafe where theme_no = 1 or theme_no = 3;

select c.cafe_no, c.cafe_name, z.zone_no , z.zone_name, t.theme_name, t.theme_no, c.registration_date, c.vote_number, c.view_number, 
		c.oneline, c.address, c.detail_address 
	from cafe c left join theme t on c.theme_no = t.theme_no left join `zone` z on c.zone_no = z.zone_no
	where c.zone_no = 3 and (c.theme_no in (2));

select c.cafe_no, c.cafe_name, z.zone_no , z.zone_name, t.theme_name, t.theme_no, c.registration_date, c.vote_number, c.view_number, 
		c.oneline, c.address, c.detail_address 
	from cafe c left join theme t on c.theme_no = t.theme_no left join `zone` z on c.zone_no = z.zone_no
	where (c.theme_no in (1));

select count(cafe_no) from cafe c where (c.theme_no in (1, 3)) and theme_no = 1;
select count(cafe_no) from cafe c left join theme t on c.theme_no = t.theme_no where (c.theme_no in (1, 3)) and t.theme_no = 1;
select count(cafe_no) from cafe c WHERE (c.theme_no in ( '1' , '3' ) ) AND t.theme_no = '3';
select * from `zone`;


-- cafe best
select * from cafe;
select spoint
	from starpoint s left join cafe c on s.cafe_no = c.cafe_no,
		(select cafe_no, round(avg(star_point), 1) as spoint, update_date from starpoint where month(update_date) = month(now())-1 group by cafe_no) spoint
	where s.cafe_no = spoint.cafe_no and c.cafe_cdt = 1
	group by s.cafe_no
	order by spoint desc, spoint.update_date desc limit 10;

select spoint, c.*, i.image_name , z.* , t.*
	from starpoint s left join cafe c on s.cafe_no = c.cafe_no 
					 left join image i on c.cafe_no = i.cafe_no 
					 left join zone z on c.zone_no = z.zone_no 
					 left join theme t on c.theme_no = t.theme_no 
		, (select cafe_no, round(avg(star_point), 1) as spoint, update_date from starpoint where month(update_date) = month(now())-1 group by cafe_no) spoint
	where s.cafe_no = spoint.cafe_no and c.cafe_cdt = 1
	group by s.cafe_no
	order by spoint desc, spoint.update_date desc limit 10;

select cafe_no, round(avg(star_point), 1) as spoint, update_date 
	from starpoint 
	where month(update_date) = month(now())-1 
	group by cafe_no
	order by spoint desc;

select * from starpoint where cafe_no = 24 and month(update_date) = month(now())-1;

select i.image_name from image i left join cafe c on i.cafe_no = c.cafe_no where c.cafe_no = 24 order by i.image_no limit 1;
select s.*, round(avg(s.star_point), 1) as cnt, c.cafe_no , c.cafe_name from cafe c left join starpoint s on c.cafe_no = s.cafe_no group by c.cafe_no;

select count(*) from wishlist where cafe_no = 2;
select count(*) from starpoint where cafe_no = 2;

-- 월간 카페
select * from powerlink;
select powerlink_cdt from cafe;
truncate powerlink;

-- 카페 파워링크 0으로 초기화
update cafe 
	set powerlink_cdt = null;

update cafe 
	set powerlink_cdt = 0
	where cafe_no in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
update cafe 
	set powerlink_cdt = 0
	where cafe_no in (11, 12, 13, 14, 15, 16, 17, 18, 19, 20);

insert into powerlink (cafe_no, pow_cdt ) values(1, 0);

-- 파워링크에 데이터 넣기
insert into powerlink (cafe_no, pow_cdt) select cafe_no, powerlink_cdt from cafe where powerlink_cdt is not null;

update powerlink 
	set reg_date = "2020-03-20", pow_cdt = 1, post_date = "2020-04-01"
	where cafe_no in (1, 2, 3, 4, 5);

update cafe 
	set powerlink_cdt = 1
	where cafe_no in (1, 2, 3, 4, 5);

update powerlink 
	set reg_date = "2020-04-10", post_date = "2020-05-01"
	where cafe_no in (6, 7, 8, 9, 10);

update powerlink 
	set reg_date = "2020-05-22", post_date = "2020-06-01"
	where cafe_no in (11, 12, 13, 14, 15);


select * from powerlink;
select * from powerlink where month(post_date) = '5' and pow_cdt = 0;
select * from powerlink where pow_cdt = 1;

update powerlink 
	set pow_cdt = 2
	where pow_cdt = 1;

update powerlink 
	set pow_cdt = 1
	where month(post_date) = '5' and pow_cdt = 0;

select powerlink_cdt , cafe_no from cafe;

select c.cafe_no from cafe c left join powerlink p on c.cafe_no = p.cafe_no where p.pow_cdt = 1;
select c.*, i.image_name from cafe c left join image i on c.cafe_no = i.cafe_no where powerlink_cdt = 1 group by c.cafe_no


select p.*, c.cafe_no , c.powerlink_cdt from powerlink p left join cafe c on p.cafe_no = c.cafe_no;
select year(post_date) as year, month(post_date) as month from powerlink where pow_cdt = 1 group by post_date;
select year(post_date) as year, month(post_date) as month from powerlink where pow_cdt = 1 group by post_date;

select count(*) from powerlink p left join cafe c on p.cafe_no = c.cafe_no where year(post_date)= year(now()) and  month(post_date) = '5';

select c.*, i.image_name from cafe c left join image i on c.cafe_no = i.cafe_no where powerlink_cdt = 1 group by c.cafe_no;

select * from powerlink where month(post_date) = '06';

select c.cafe_no , p.cafe_no , c.powerlink_cdt , p.pow_cdt from cafe c right join powerlink p on c.cafe_no = p.cafe_no;
select powerlink_cdt from cafe;

update cafe c right join powerlink p on c.cafe_no = p.cafe_no 
	set c.powerlink_cdt = p.pow_cdt;

-- 좋아요 여부 확인
select count(*) from vote where user_no = 1 and board_no = 268;
select * from vote;

-- 포인트
select * from users;

-- 포인트 적립 update
-- update users 
-- 	set point = point + 50
-- 	where user_no = 1


