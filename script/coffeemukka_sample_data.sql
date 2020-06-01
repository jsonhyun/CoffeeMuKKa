load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/zone.txt'
into table coffeemukka.`zone` 
character set 'utf8'
fields terminated by ',';
select * from `zone`;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/theme.txt'
into table coffeemukka.theme 
character set 'utf8'
fields terminated by ',';
select * from theme;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/menukinds.txt'
into table coffeemukka.menukinds 
character set 'utf8'
fields terminated by ',';
select * from menukinds;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/membertype.txt'
into table coffeemukka.`type` 
character set 'utf8'
fields terminated by ',';
select * from `type`;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/membergrade.txt'
into table coffeemukka.grade 
character set 'utf8'
fields terminated by ',';
select * from grade;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/authority.txt'
into table coffeemukka.authority 
character set 'utf8'
fields terminated by ',';
select * from authority;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/admin.txt'
into table coffeemukka.admin 
character set 'utf8'
fields terminated by ',';
select * from admin;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/boardkinds.txt'
into table coffeemukka.boardkinds 
character set 'utf8'
fields terminated by ',';
select * from boardkinds;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/keywordcate.txt'
into table coffeemukka.keywordcate 
character set 'utf8'
fields terminated by ',';
select * from keywordcate;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/users.txt'
into table coffeemukka.users 
character set 'utf8'
fields terminated by ',';
select * from users;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/cafe.txt'
into table coffeemukka.cafe 
character set 'utf8'
fields terminated by ',';
select * from cafe;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/wish.txt'
into table coffeemukka.wishlist
character set 'utf8'
fields terminated by ',';
select * from wishlist;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/image.txt'
into table coffeemukka.image 
character set 'utf8'
fields terminated by ',';
select * from image;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/starpoint.txt'
into table coffeemukka.starpoint
character set 'utf8'
fields terminated by ',';
select * from starpoint;

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/menu.txt'
into table coffeemukka.menu
character set 'utf8'
fields terminated by ',';
select * from menu;

update users
	set user_no = 1
	where user_no = 0;
	
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