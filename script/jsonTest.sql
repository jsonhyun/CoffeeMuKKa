-- 재승 테스트
select * from cafe order by cafe_no asc limit 0, 10;
select theme_no from cafe;

select c.cafe_no, c.cafe_name, z.zone_name, t.theme_name, t.theme_no, c.registration_date, c.vote_number, c.view_number, c.oneline, c.address, c.detail_address, i.image_name 
from cafe c left join theme t on c.theme_no = t.theme_no left join `zone` z on c.zone_no = z.zone_no left join image i on c.cafe_no = i.cafe_no 
order by cafe_no asc limit 0, 10;

select * from cafe c left join image i on c.cafe_no = i.cafe_no where c.cafe_no =3 limit 1;