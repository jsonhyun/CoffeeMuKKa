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

load data local infile 'D:/workspace/workspace_mukka/CoffeeMuKKa/document/sample_data/license.txt'
into table coffeemukka.license 
character set 'utf8'
fields terminated by ',';
select * from license;

update users
	set user_no = 1
	where user_no = 0;