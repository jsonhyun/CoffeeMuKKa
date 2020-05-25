-- 재승 테스트
select * from cafe order by cafe_no asc limit 0, 10;
select theme_no from cafe;

select c.cafe_no, c.cafe_name, z.zone_name, t.theme_name, t.theme_no, c.registration_date, c.vote_number, c.view_number, c.oneline, c.address, c.detail_address, i.image_name 
from cafe c left join theme t on c.theme_no = t.theme_no left join `zone` z on c.zone_no = z.zone_no left join image i on c.cafe_no = i.cafe_no 
order by cafe_no asc limit 0, 10;

select * from cafe c left join image i on c.cafe_no = i.cafe_no where c.cafe_no =3 limit 1;

select c.cafe_no, c.cafe_name, z.zone_name, t.theme_name, t.theme_no, c.registration_date, c.vote_number, c.view_number, c.oneline, c.address, c.detail_address from cafe c left join theme t on c.theme_no = t.theme_no 
left join `zone` z on c.zone_no = z.zone_no where c.zone_no=1 and c.theme_no=2 order by cafe_no asc limit 0, 10;

select cafe_name from cafe c left join starpoint s on c.cafe_no = s.cafe_no where 

select count(*) from starpoint where cafe_no =60 and theme_no =6;

select round(sum(star_point)/count(*), 1) from starpoint where cafe_no =30;

select count(*) from starpoint s where cafe_no =1;

select * from starpoint s where cafe_no =1 and theme_no =1;

select cafe_no, theme_no
FROM starpoint
where cafe_no =1
order by theme_no asc;

SELECT s.cafe_no , (SELECT COUNT(*) FROM table WHERE <= t.value) AS ranking, t.value
FROM starpoint s
WHERE s.theme_no = 1;

select IFNULL(round(sum(star_point)/count(*), 1), 0) from starpoint s where cafe_no = 1 and registration_date between '2020-7-01' and '2020-7-30';

select m.* from menu m where cafe_no =10;
select m.*, k.sort_name, k.sort_no from menu m left join menukinds k on m.menukinds = k.sort_no where cafe_no =10;
select m.*, k.* from menu m left join menukinds k on m.menukinds = k.sort_no where cafe_no =1 and sort_no=2;

select distinct k.sort_no , k.sort_name from menu m left join menukinds k on m.menukinds = k.sort_no where cafe_no =1;

select * from menu m ;
select * from menukinds m ;

select * from board b ;

select count(*), cafe_no from board b where board_no2 =1 and cafe_no =2;

delete from starpoint ;
/*평점*/
select * from starpoint where cafe_no = 1;

select * from starpoint where star_point_no = 0;

select s.cafe_no, s.theme_no ,s.star_point , s.star_point_comment , s.registration_date , u.user_grade, u.nick, u.user_id 
from starpoint s 
left join theme t on s.theme_no = t.theme_no 
left join users u on s.user_no = u.user_no 
where cafe_no = 1 
order by star_point_no desc limit 0, 10;

select s.cafe_no, t.theme_no, t.theme_name, s.star_point, s.star_point_comment, s.registration_date, u.user_grade, g.user_grade_image, u.nick, u.user_id 
		from starpoint s 
		left join theme t on s.theme_no = t.theme_no 
		left join users u on s.user_no = u.user_no
		left join grade g on u.user_grade = g.user_grade 
		where cafe_no = 1 
order by star_point_no desc limit 0, 10;

select count(*) from starpoint where cafe_no = 1;

select r.comment_no , r.board_no , u.user_grade, g.user_grade_image, u.user_no, u.user_id, u.nick, r.comment_content, r.update_date 
from reply r left join users u on r.user_no = u.user_no 
left join grade g on u.user_grade = g.user_grade 
where r.board_no = 5
order by comment_no desc limit 0, 10;


