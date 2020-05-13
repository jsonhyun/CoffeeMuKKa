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

-- 게시글번호(오토) / 게시판번호(2:추천) / 키워드분류번호(????) / 회원번호(0) / 지역번호(1) / 테마번호(1) / 글잠금여부() / 글제목 / 작성일 / 수정일 / 조회수 / 추천수 / 글내용

insert into board (board_no2, user_no, zone_no, theme_no, writing_title, writing_content, address) values (2,0,1,1,'추천카페 테스트글','테스트내용','대구광역시');