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

select floor(sum(star_point)/count(*)) from starpoint where cafe_no =30; 