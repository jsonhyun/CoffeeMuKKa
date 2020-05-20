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

select count(*) from starpoint where cafe_no =2 and theme_no =6;

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

select m.*, k.sort_name, k.sort_no from menu m left join menukinds k on m.menukinds = k.sort_no where cafe_no =1;
select m.*, k.* from menu m left join menukinds k on m.menukinds = k.sort_no where cafe_no =1 and sort_no=2;

select distinct k.sort_no , k.sort_name from menu m left join menukinds k on m.menukinds = k.sort_no where cafe_no =1;

select * from menu m ;
select * from menukinds m ;
