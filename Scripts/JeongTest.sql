select user(), database();

select * from cafe;
select * from board;
desc board;
select * from boardkinds;
select * from keywordcate;
select * from theme;
select * from zone;
select * from image;
select * from users;
select * from grade;
select * from image;

show tables;

-- 게시글번호(오토) / 게시판번호(2:추천) / 키워드분류번호(????) / 회원번호(0) / 지역번호(1) / 테마번호(1) / 글잠금여부() / 글제목 / 작성일 / 수정일 / 조회수 / 추천수 / 글내용

insert into board (board_no2, user_no, zone_no, theme_no, writing_title, writing_content, address) values (2,0,1,1,'추천카페 테스트글','테스트내용','대구광역시');

select * from board where board_no2 = 2 order by  board_no desc;

select * from board order by board_no desc;

-- 사진, 위치, 키워드, 제목, 번호

select b.board_no, b.board_no2, b.user_no, b.zone_no, b.theme_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, bk.board_no, bk.board_name, u.user_no, u.user_id, u.password, u.name, u.nick, u.user_grade, z.zone_no, z.zone_name, t.theme_no, t.theme_name 
from board b
left join boardkinds bk on b.board_no2 = bk.board_no
left join users u on b.user_no = u.user_no 
left join `zone` z on b.zone_no = z.zone_no
left join theme t on b.theme_no = t.theme_no
where b.board_no2 = 2
order by b.board_no desc;

select b.board_no, b.zone_no, b.theme_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name from board b
left join zone z on b.zone_no = z.zone_no
order by b.board_no desc;

select * from board b2 ;

select b.board_no, b.writing_title, b.view_number,  z.zone_no, z.zone_name, t.theme_no, t.theme_name from board b
left join zone z on b.zone_no = z.zone_no
left join theme t on b.theme_no = t.theme_no
order by b.board_no desc;


select * from board where board_no = 1;

select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name from board b
left join zone z on b.zone_no = z.zone_no
left join theme t on b.theme_no = t.theme_no
left join users u on b.user_no = u.user_no 
left join grade g on u.user_grade = g.user_grade 
where b.board_no2 = 2 and b.board_no =25;

select * from board b
left join zone z on b.zone_no = z.zone_no
left join theme t on b.theme_no = t.theme_no
left join users u on b.user_no = u.user_no 
left join grade g on u.user_grade = g.user_grade 
where b.board_no2 = 2 and b.board_no =25;

select * from users u left join grade g on u.user_grade = g.user_grade;

select registration_date from board where CAST(DATE_FORMAT(registration_date, '%Y%m%d') AS CHAR(8)) = CAST( DATE_FORMAT( NOW(),'%Y%m%d' ) AS CHAR(8)) and board_no2 = 2;

select count(*) from board where CAST(DATE_FORMAT(registration_date, '%Y%m%d') AS CHAR(8)) = CAST( DATE_FORMAT( NOW(),'%Y%m%d' ) AS CHAR(8)) and board_no2 = 2;

select b.board_no, b.board_no2, b.writing_title, b.view_number, z.zone_no, z.zone_name, t.theme_no, t.theme_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		where b.board_no2 = 2
		order by b.board_no desc;
	
select * from board where board_no2 = 2 order by board_no desc limit 0, 16;

select count(board_no) from board where board_no2 = 2;


select * from cafe where cafe_name like CONCAT('%', '슬로', '%');
select * from cafe where cafe_name like CONCAT('%', '', '%');

select * from cafe c left join zone z on c.zone_no  = z.zone_no where c.cafe_name like CONCAT('%', '', '%');
select * from cafe where cafe_name like CONCAT('%', '#{cafeName}', '%');

select * from cafe where cafe_name like CONCAT('%', '슬로', '%')


select * from cafe where cafe_name like CONCAT('%', '스테이55', '%');


select * from cafe c left join zone z on c.zone_no = z.zone_no;
select ;

insert into board (board_no2, user_no, zone_no, theme_no, writing_title, writing_content, address) values (2,1,1,1,'추천카페 테스트글','테스트내용','대구광역시');
insert into image (image_name, board_no) values ('/2020/05/05/s_850c7f97-489d-482c-8dcf-1ed35e6e5d94_데이트.png', LAST_INSERT_ID());

select * from image;
delete from board;
select * from board; 
truncate table board;
select last_insert_id(); 

insert into board (board_no2, user_no, zone_no, theme_no, writing_title, writing_content, address) 
values (2, 1, 1, 1, '테스트입니다', '121212', '테스트입니다');

-- 검색결과 1개
select b.board_no2, b.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where b.board_no = 2 order by b.board_no desc limit 2;
select i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where b.board_no2 = 2;

select i.cafe_no, i.image_name from image i left join cafe c on c.cafe_no = i.cafe_no where c.cafe_no =#{cafeNo} limit 1;

select b.board_no, b.board_no2, b.writing_title, b.view_number, z.zone_no, z.zone_name, t.theme_no, t.theme_name, i.image_name from board b
left join zone z on b.zone_no = z.zone_no
left join theme t on b.theme_no = t.theme_no
left join image i on b.board_no = i.board_no
where b.board_no2 = 2
order by b.board_no desc limit 1,16;


select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name, i.image_name from board b
left join zone z on b.zone_no = z.zone_no
left join theme t on b.theme_no = t.theme_no
left join users u on b.user_no = u.user_no 
left join grade g on u.user_grade = g.user_grade
file
where b.board_no2 = 2 and b.board_no = 2;

update board set view_number = view_number+1 where board_no = #{boardNo}