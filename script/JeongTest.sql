select user(), database();

show tables;

select * from cafe; -- 카페
select * from board where board_no = 832;

select c.cafe_no, c.cafe_name, c.vote_number, c.registration_date, t.theme_no, t.theme_name from cafe c
		left join theme t on c.theme_no = t.theme_no;
	
select c.cafe_no, c.cafe_name, c.vote_number, c.registration_date, t.theme_no, t.theme_name from cafe c
		left join theme t on c.theme_no = t.theme_no limit 0, 16;
	
select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt from starpoint s left join theme t on s.theme_no = t.theme_no 
		left join cafe c on s.cafe_no = c.cafe_no where s.cafe_no = 97 and s.theme_no != c.theme_no 
		group by s.theme_no order by cnt desc, s.theme_no limit 2;	
where board_no =26; -- 게시판
select * from users where nick = '자바칩프라푸치노';
-- 회원 현황
select * from admin; -- 관리자
select * from theme; -- 테마 분류
select * from zone; -- 위치 분류
select * from reply; -- 댓글 테이블
select * from boardkinds; -- 게시판 분류
select * from menukinds; -- 메뉴 분류
select * from menu; -- 메뉴
select * from starpoint where cafe_no =60;-- 별점
select * from type; -- 회원 타입
select * from grade; -- 회원 등급
select * from authority; -- 관리자 권한
select * from wishlist; -- 위시리스트
select * from image;
-- 이미지
select * from vote; -- 추천리스트

select * from starpoint;

-- ----------------------------------

-- 아름데이터(board)





INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(1, 'slow-1.jpg', 1, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(2, 'slow-2.jpg', 1, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(3, 'slow-3.jpg', 1, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(4, 'slow-4.jpg', 1, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(5, 'slow-5.jpg', 1, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(6, 'lucid-1.jpg', 2, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(7, 'lucid-2.jpg', 2, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(8, 'lucid-3.jpg', 2, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(9, 'lucid-4.jpg', 2, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(10, 'lucid-5.jpg', 2, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(11, 'delisert-1.jpg', 3, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(12, 'delisert-2.jpg', 3, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(13, 'delisert-3.jpg', 3, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(14, 'delisert-4.jpg', 3, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(15, 'delisert-5.jpg', 3, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(16, 'mansion-1.jpg', 4, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(17, 'mansion-2.jpg', 4, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(18, 'mansion-3.jpg', 4, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(19, 'mansion-4.jpg', 4, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(20, 'mansion-5.jpg', 4, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(21, 'nostalgia-1.jpg', 5, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(22, 'nostalgia-2.jpg', 5, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(23, 'nostalgia-3.jpg', 5, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(24, 'nostalgia-4.jpg', 5, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(25, 'nostalgia-5.jpg', 5, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(26, 'inthemass-1.jpg', 6, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(27, 'inthemass-2.jpg', 6, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(28, 'inthemass-3.jpg', 6, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(29, 'inthemass-4.jpg', 6, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(30, 'inthemass-5.jpg', 6, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(31, 'mama-1.jpg', 7, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(32, 'mama-2.jpg', 7, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(33, 'mama-3.jpg', 7, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(34, 'mama-4.jpg', 7, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(35, 'mama-5.jpg', 7, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(36, 'misul-1.jpg', 8, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(37, 'misul-2.jpg', 8, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(38, 'misul-3.jpg', 8, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(39, 'misul-4.jpg', 8, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(40, 'misul-5.jpg', 8, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(41, 'farm-1.jpg', 9, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(42, 'farm-2.jpg', 9, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(43, 'farm-3.jpg', 9, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(44, 'farm-4.jpg', 9, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(45, 'farm-5.jpg', 9, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(46, 'stove-1.jpg', 10, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(47, 'stove-2.jpg', 10, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(48, 'stove-3.jpg', 10, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(49, 'stove-4.jpg', 10, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(50, 'stove-5.jpg', 10, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(51, 'sungan-1.jpg', 11, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(52, 'sungan-2.jpg', 11, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(53, 'sungan-3.jpg', 11, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(54, 'coffee-1.jpg', 12, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(55, 'coffee-2.jpg', 12, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(56, 'coffee-3.jpg', 12, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(57, 'coffee-4.jpg', 12, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(58, 'coffee-5.jpg', 12, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(59, 'pocket-1.jpg', 13, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(60, 'thebridge-1.jpg', 14, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(61, 'wooz-1.jpg', 15, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(62, 'gobason-1.jpg', 16, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(63, 'chch-1.jpg', 17, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(64, 'lov-1.jpg', 18, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(65, 'chawoorim-1.jpg', 19, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(66, 'tumtree-1.jpg', 20, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(67, 'dwave-1.jpg', 21, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(68, 'stamp-1.jpg', 22, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(69, 'gam-1.jpg', 23, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(70, 'miru-1.jpg', 24, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(71, 'blind-1.jpg', 25, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(72, 'nok-1.jpg', 26, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(73, 'mery-1.jpg', 27, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(74, 'nodoubt-1.jpg', 28, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(75, 'gogae-1.jpg', 29, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(76, 'bebe-1.jpg', 30, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(77, 'coffeeu-1.jpg', 31, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(78, 'red-1.jpg', 32, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(79, 'add1446-1.jpg', 33, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(80, '23g-1.jpg', 34, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(81, 'today-1.jpg', 35, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(82, 'sept-1.jpg', 36, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(83, 'uoob-1.jpg', 37, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(84, 'thanks-1.jpg', 38, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(85, 'sigi-1.jpg', 39, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(86, 'como-1.jpg', 40, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(87, 'discovery-1.jpg', 41, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(88, 'allglad-1.jpg', 42, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(89, 'incomon-1.jpg', 43, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(90, 'raw-1.jpg', 44, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(91, 'sigong-1.jpg', 45, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(92, 'macarong-1.jpg', 46, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(93, 'baek-1.jpg', 47, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(94, 'trouve-1.jpg', 48, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(95, 'oaja-1.jpg', 49, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(96, 'plie-1.jpg', 50, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(97, 'todac-1.jpg', 51, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(98, 'yirang-1.jpg', 52, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(99, 'abiento-1.jpg', 53, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(100, 'bwoom-1.jpg', 54, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(101, 'camomile-1.jpg', 55, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(102, 'kooing-1.jpg', 56, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(103, 'panda-1.jpg', 57, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(104, 'show-1.jpg', 58, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(105, 'brown-1.jpg', 59, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(106, 'daily-1.jpg', 60, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(107, 'oasis-1.jpg', 61, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(108, 'prama-1.jpg', 62, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(109, 'popins-1.jpg', 63, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(110, 'kioki-1.jpg', 64, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(111, 'ofmore-1.jpg', 65, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(112, 'momo-1.jpg', 66, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(113, 'b1919-1.jpg', 67, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(114, 'jam-1.jpg', 68, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(115, 'chani-1.jpg', 69, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(116, 'mocco-1.jpg', 70, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(117, 'rooli-1.jpg', 71, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(118, 'dansk-1.jpg', 72, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(119, 'bo-1.jpg', 73, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(120, 'yiya-1.jpg', 74, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(121, 'yilin-1.jpg', 75, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(122, 'bas-1.jpg', 76, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(123, 'margo-1.jpg', 77, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(124, 'inmun-1.jpg', 78, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(125, 'anook-1.jpg', 79, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(126, 'inspiration-1.jpg', 80, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(127, 'vill-1.jpg', 81, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(128, 'oxley-1.jpg', 82, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(129, 'woopchunri-1.jpg', 83, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(130, 'TMR-1.jpg', 84, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(131, 'bakgumdang-1.jpg', 85, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(132, 'fence-1.jpg', 86, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(133, 'apartment-1.jpg', 87, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(134, 'kichin-1.jpg', 88, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(135, 'donot-1.jpg', 89, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(136, 'coffeehouse-1.jpg', 90, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(137, 'eum-1.jpg', 91, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(138, 'biseul-1.jpg', 92, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(139, 'little-1.jpg', 93, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(140, 'owl-1.jpg', 94, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(141, 'opongd-1.jpg', 95, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(142, 'hill-1.jpg', 96, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(143, 'carmel-1.jpg', 97, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(144, 'gable-1.jpg', 98, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(145, 'surely-1.jpg', 99, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(146, 'epanoui-1.jpg', 100, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(147, 'ryu-1.jpg', 101, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(148, 'coffeecal-1.jpg', 102, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(149, 'stay-1.jpg', 103, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(150, 'coffeesaram-1.jpg', 104, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(151, 'aplane-1.jpg', 105, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(152, 'brick62-1.jpg', 106, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(153, 'moga-1.jpg', 107, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(154, 'bbabba-1.jpg', 108, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(155, 'lumier-1.jpg', 109, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(156, 'nokum-1.jpg', 110, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(157, 'bell-1.jpg', 111, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(158, 'dorora-1.jpg', 112, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(159, 'waft-1.jpg', 113, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(160, 'koi-1.png', 114, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(161, 'mix-1.jpg', 115, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(162, 'jari-1.jpg', 116, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(163, 'moeun-1.jpg', 117, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(164, 'rawdongin-1.jpg', 118, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(165, 'mumyoung-1.jpg', 119, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(166, 'titf-1.jpg', 120, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(167, 'stone-1.jpg', 121, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(168, 'heima-1.jpg', 122, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(169, 'secret-1.jpg', 123, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(170, 'treefarm-1.jpg', 124, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(171, 'dohwazi-1.jpg', 125, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(172, 'hundred-1.jpg', 126, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(173, 'dumidi-1.jpg', 127, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(174, 'seven-1.jpg', 128, NULL);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(175, 'bake-1.jpg', 129, NULL);


INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(35, 2, NULL, 1, 6, 1, NULL, NULL, '쌍피', '2020-05-27 12:43:56.0', '2020-05-27 12:43:56.0', 0, 0, 1, '매실청 티, 밀크티, 쌍피 치즈케이크 이렇게 주문했습니다.', '대구 북구 침산로 162-9', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(36, 2, NULL, 1, 7, 4, NULL, NULL, '호롱커피', '2020-05-27 12:46:22.0', '2020-05-27 12:46:22.0', 0, 0, 1, '인스타st 카페답지 않게 편한 자리가 많아서 좋았어요. 
천의자가 많아선가 가게에서 빈티지샵 향 냄새가 나요 ㅋㅋ
 아몬드크림라떼 고소하고 괜찮았어요. 마침 저녁 때 돼서 그런가 손님들 다 가시고 저 혼자라 서비스로 블루베리 크럼블 받았는데 맛있었어요~ 
맛이 엄청 뛰어나진 않은데 분위기와 있으면서 기분이 좋아서 좋은 인상으로 남았어요 ㅎㅎㅎ 
2명이 와서 소파 자리 앉아보고 싶네요. ', '대구 중구 관덕정길 13-13', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(37, 2, NULL, 1, 9, 5, NULL, NULL, '몽펍피', '2020-05-27 12:52:48.0', '2020-05-27 12:52:48.0', 2, 0, 1, '전 개인적으로 여기 커피가 맛있어요!', '대구 남구 명덕로18길 127', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(38, 2, NULL, 1, 3, 4, NULL, NULL, '베리앙쥬', '2020-05-27 14:13:51.0', '2020-05-27 14:13:51.0', 1, 0, 1, '딸기 맛집!', '대구 달서구 성당로 3', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(39, 2, NULL, 1, 5, 5, NULL, NULL, '푸댕', '2020-05-27 14:18:42.0', '2020-05-27 14:18:42.0', 2, 0, 1, '애견동반카페 푸댕!', '대구 수성구 지범로 11', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(40, 2, NULL, 1, 7, 5, NULL, NULL, '바이반스', '2020-05-27 14:22:27.0', '2020-05-27 14:22:27.0', 1, 0, 1, '애견동반 카페다 보니 

애견인들은 사랑하는 반려견 데리고 

어서 방문해보세요! 

​

맛있는 커피도 마시면서 

사진찍기도 예뻐서 추천드립니다 : )

', '대구 중구 동덕로36길 116-2', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(41, 2, NULL, 1, 11, 5, NULL, NULL, '퍼피80', '2020-05-27 14:30:00.0', '2020-05-27 14:30:00.0', 0, 0, 1, '가끔은 날씨 좋은 날 혼자만 힙한 카페 가지 마시고~ 

강아지와 함께 마음껏 뛰어 놀 수 있는 반려견 카페를 가보시는 것도 좋을 듯 하네요~', '대구 동구 서촌로7길 7-3', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(42, 2, NULL, 1, 10, 2, NULL, NULL, '161커피스튜디오', '2020-05-27 14:31:52.0', '2020-05-27 14:31:52.0', 0, 0, 1, '불빛들이 많아서 감성사진을 찍기 좋았다. 색감도 빈티지해서 불빛의 주황과 아련하게 어울림.', '대구 달성군 현풍읍 비슬로 581', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(43, 2, NULL, 1, 1, 4, NULL, NULL, '노스폴', '2020-05-27 14:36:47.0', '2020-05-27 14:36:47.0', 0, 0, 1, '위치는 반월당역과 중앙로역 사이에 위치해있으며 저는 반월당역에서 내려서 걸어갔습니다.
반월당역 12번 또는 13번 출구로 나가셔서 10분정도 걸어가시면 됩니다!
', '대구 중구 중앙대로 392', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(44, 2, NULL, 1, 1, 6, NULL, NULL, '시즈더데이', '2020-05-27 14:39:51.0', '2020-05-27 14:39:51.0', 1, 0, 1, '스터디 하기도 좋고!
또 하나 더 좋은점은 보드게임도 가능해요^^', '대구 중구 중앙대로 412-26', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(45, 2, NULL, 1, 6, 6, NULL, NULL, '프리지아', '2020-05-27 14:42:05.0', '2020-05-27 14:42:05.0', 1, 0, 1, '공부하기 좋아요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(49, 2, NULL, 1, 6, 3, NULL, NULL, '프리지아', '2020-05-27 14:43:01.0', '2020-05-27 14:43:01.0', 0, 0, 1, '아메리카노가 좋아요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(50, 2, NULL, 1, 9, 4, NULL, NULL, '넘버더스타즈', '2020-05-27 14:43:58.0', '2020-05-27 14:43:58.0', 2, 0, 1, '맛있엉!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(51, 2, NULL, 1, 10, 6, NULL, NULL, '아이니드커피', '2020-05-27 14:44:54.0', '2020-05-27 14:44:54.0', 1, 0, 1, '공부하기 좋아요!', '대구 달성군 다사읍 달구벌대로 878', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(52, 2, NULL, 1, 6, 4, NULL, NULL, '프리지아', '2020-05-27 14:45:37.0', '2020-05-27 14:45:37.0', 1, 0, 1, '사장님이 직접 베이킹을 하세요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(53, 2, NULL, 1, 5, 1, NULL, NULL, '스완네', '2020-05-27 14:49:57.0', '2020-05-27 14:49:57.0', 0, 0, 1, '13년지기와 데이트!
임신한 친구는 커피를 피해 루이보스타를 주문 했는데~
플레이팅이 완전 찻집갬성돋는 비쥬얼~', '대구 수성구 동대구로80길 73', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(54, 2, NULL, 1, 5, 2, NULL, NULL, '스완네', '2020-05-27 14:50:52.0', '2020-05-27 14:50:52.0', 1, 0, 1, '분위기 좋아요
주택감성!', '대구 수성구 동대구로80길 73', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(55, 2, NULL, 1, 7, 2, NULL, NULL, '바하의선율', '2020-05-27 14:53:59.0', '2020-05-27 14:53:59.0', 1, 0, 1, '루프탑이 있어요!', '대구 중구 동덕로8길 40-20', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(56, 2, NULL, 1, 7, 4, NULL, NULL, '마르코폴로', '2020-05-27 14:56:22.0', '2020-05-27 14:56:22.0', 1, 0, 1, '찻잔을 고를 수 있어요!', '대구 중구 달구벌대로446길 23-10', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(57, 2, NULL, 1, 11, 4, NULL, NULL, '초이스엠', '2020-05-27 14:57:32.0', '2020-05-27 14:57:32.0', 0, 0, 1, '맛있어요!', '대구 동구 팔공산로 260', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(58, 2, NULL, 1, 6, 3, NULL, NULL, '프리지아', '2020-05-27 14:58:07.0', '2020-05-27 14:58:07.0', 2, 0, 1, '좋아요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(59, 2, NULL, 1, 8, 4, NULL, NULL, '모닉23', '2020-05-27 15:09:11.0', '2020-05-27 15:09:11.0', 1, 0, 1, '디저트가 너무 예뻐요!', '대구 동구 동부로15길 16', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(60, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-27 15:10:21.0', '2020-05-27 15:10:21.0', 1, 0, 1, '꿀잠자고 왔오요!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(61, 2, NULL, 1, 9, 4, NULL, NULL, '넘버더스타즈', '2020-05-27 15:10:53.0', '2020-05-27 15:10:53.0', 0, 0, 1, '베이커리 맛집입니다!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(62, 2, NULL, 1, 10, 3, NULL, NULL, '아이니드커피', '2020-05-27 15:11:28.0', '2020-05-27 15:11:28.0', 0, 0, 1, '복층이라서 좋아요!', '대구 달성군 다사읍 달구벌대로 878', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(63, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-27 15:12:09.0', '2020-05-27 15:12:09.0', 1, 0, 1, '넓고 좋아요!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(64, 2, NULL, 1, 8, 4, NULL, NULL, '모닉23', '2020-05-27 15:13:13.0', '2020-05-27 15:13:13.0', 1, 0, 1, '폭풍수다는 모닉23', '대구 동구 동부로15길 16', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(65, 2, NULL, 1, 9, 1, NULL, NULL, '넘버더스타즈', '2020-05-27 15:14:50.0', '2020-05-27 15:14:50.0', 1, 0, 1, '데이트하기 좋아요!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(66, 2, NULL, 1, 6, 6, NULL, NULL, '프리지아', '2020-05-27 15:15:45.0', '2020-05-27 15:15:45.0', 0, 0, 1, '좋아요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(67, 2, NULL, 1, 9, 4, NULL, NULL, '넘버더스타즈', '2020-05-27 15:16:30.0', '2020-05-27 15:16:30.0', 3, 0, 1, '맛있는 빵이 한가득!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(68, 2, NULL, 1, 9, 6, NULL, NULL, '넘버더스타즈', '2020-05-27 15:17:50.0', '2020-05-27 15:17:50.0', 1, 0, 1, '노트북들고 하루종일 일할수 있어 좋아요!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(69, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-27 15:18:23.0', '2020-05-27 15:18:23.0', 0, 0, 1, '노을이 예뻐요!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(70, 2, NULL, 1, 3, 4, NULL, NULL, '이지베', '2020-05-27 15:20:44.0', '2020-05-27 15:20:44.0', 0, 0, 1, '산딸기 케잌!', '대구 달서구 장기로12길 20', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(71, 2, NULL, 1, 4, 1, NULL, NULL, '피오레', '2020-05-27 15:22:05.0', '2020-05-27 15:22:05.0', 0, 0, 1, '퇴근하고 간만에 데이트!', '대구 달서구 송현로 26', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(72, 2, NULL, 1, 9, 6, NULL, NULL, '넬스커피', '2020-05-27 15:25:04.0', '2020-05-27 15:25:04.0', 1, 0, 1, '동생이 주문한 음료!
딸기스무디...6000원..ㄷㄷㄷ', '대구 남구 중앙대로51길 89-1', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(73, 2, NULL, 1, 1, 1, NULL, NULL, '마주봄', '2020-05-27 15:27:29.0', '2020-05-27 15:27:29.0', 0, 0, 1, '레트로감성뿜뿜', '대구 중구 중앙대로 434-8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(74, 2, NULL, 1, 1, 4, NULL, NULL, '카페나지막', '2020-05-27 15:28:49.0', '2020-05-27 15:28:49.0', 2, 0, 1, '은은한 불빛아래에서~', '대구 중구 동성로6길 46', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(75, 2, NULL, 1, 1, 6, NULL, NULL, '너에게간다', '2020-05-27 15:30:08.0', '2020-05-27 15:30:08.0', 0, 0, 1, '공부하기 좋아요!', '대구 중구 중앙대로79길 11', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(76, 2, NULL, 1, 1, 6, NULL, NULL, '시즈더데이', '2020-05-27 15:31:02.0', '2020-05-27 15:31:02.0', 0, 0, 1, '재밌게 스터디 하고 왔어요!', '대구 중구 중앙대로 412-26', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(77, 2, NULL, 1, 1, 4, NULL, NULL, '노스폴', '2020-05-27 15:33:37.0', '2020-05-27 15:33:37.0', 2, 0, 1, '님도라 웨 여기 등록도 안되어있음??
진짜 최고임. 음료 예쁨 = 맛 평범인데 여긴 걍 조조ㅠ오유유융나나 맛있음. 
딸기 우유는 상상하는 그맛인데 ㅈㄴㅈㄴ 이쁘고
절미 라떼 진심 조노로유오ㅠ오유유ㅠㅜ맛 저거 마시러 대구 가고프다.
위에 폼인가? 하여간 진심 쫀듯 그 자체', '대구 중구 중앙대로 392', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(78, 2, NULL, 1, 2, 1, NULL, NULL, '벨리시모앤틱카페', '2020-05-27 15:34:39.0', '2020-05-27 15:34:39.0', 1, 0, 1, '분위기에 취합니다!', '대구 수성구 무학로 37', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(79, 2, NULL, 1, 2, 4, NULL, NULL, '크레도 본점', '2020-05-27 15:36:07.0', '2020-05-27 15:36:07.0', 1, 0, 1, '딸기천국!', '대구 수성구 동대구로25길 24-17', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(80, 2, NULL, 1, 2, 2, NULL, NULL, '카페편 수성점', '2020-05-27 15:37:49.0', '2020-05-27 15:37:49.0', 1, 0, 1, '야경맛집', '대구 수성구 들안로 57', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(81, 2, NULL, 1, 3, 5, NULL, NULL, '그린페이스카페', '2020-05-27 15:39:30.0', '2020-05-27 15:39:30.0', 2, 0, 1, '두류공원 롤라장옆에있는 그린페이스카페의 피크닉세트
강아지랑 같이 놀러갈수도있고 인생샷도 건질수있음', '대구 달서구 성당로 117-10', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(82, 2, NULL, 1, 3, 1, NULL, NULL, '센트99', '2020-05-27 15:40:53.0', '2020-05-27 15:40:53.0', 0, 0, 1, '플라워카페!', '대구 달서구 야외음악당로 99', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(83, 2, NULL, 1, 3, 1, NULL, NULL, '이지베', '2020-05-27 15:43:30.0', '2020-05-27 15:43:30.0', 1, 0, 1, '데이트하기 좋아요!', '대구 달서구 장기로12길 20', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(84, 2, NULL, 1, 3, 4, NULL, NULL, '베리앙쥬', '2020-05-27 15:45:43.0', '2020-05-27 15:45:43.0', 1, 0, 1, '완전 디저트 맛집!', '대구 달서구 성당로 3', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(85, 2, NULL, 1, 7, 3, NULL, NULL, '쎄라비음악다방', '2020-05-27 15:48:25.0', '2020-05-27 15:48:25.0', 1, 0, 1, '분위기 최고!', '대구 중구 국채보상로102길 60', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(86, 2, NULL, 1, 7, 3, NULL, NULL, '미도다방', '2020-05-27 15:51:07.0', '2020-05-27 15:51:07.0', 0, 0, 1, '착한가격 착한공간!', '대구 중구 진골목길 14', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(87, 2, NULL, 1, 7, 1, NULL, NULL, '미도다방', '2020-05-27 15:51:30.0', '2020-05-27 15:51:30.0', 1, 0, 1, '옛날감성물씬!', '대구 중구 진골목길 14', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(88, 2, NULL, 1, 7, 1, NULL, NULL, '미도다방', '2020-05-27 15:51:54.0', '2020-05-27 15:51:54.0', 0, 0, 1, '쌍화차 맛집!', '대구 중구 진골목길 14', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(89, 2, NULL, 1, 7, 1, NULL, NULL, '호롱커피', '2020-05-27 15:53:09.0', '2020-05-27 15:53:09.0', 0, 0, 1, '현대백화점 건너편 골목들 사이에 숨어 있어 찾기 힘들었지만 
근처에 가면 커피향이 난다. 
비 오는 날 저녁에 갔는데 조명이며, 분위기가 너무 좋았다.
 약간 반지하인데 그게 또 호롱커피의 매력인 듯. 
조명을 참 잘 쓰는 카페이므로 낮보다는 저녁 방문을 권한다. 
커피는 그럭저럭 마실 만한 정도.', '대구 중구 관덕정길 13-13', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(90, 2, NULL, 1, 7, 1, NULL, NULL, '마르코폴로', '2020-05-27 15:55:08.0', '2020-05-27 15:55:08.0', 1, 0, 1, '여기는 홍차전문점!', '대구 중구 달구벌대로446길 23-10', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(91, 2, NULL, 1, 7, 4, NULL, NULL, '바하의선율', '2020-05-27 15:56:20.0', '2020-05-27 15:56:20.0', 1, 0, 1, '맛있답니다!', '대구 중구 동덕로8길 40-20', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(92, 2, NULL, 1, 7, 4, NULL, NULL, '바하의선율', '2020-05-27 15:57:27.0', '2020-05-27 15:57:27.0', 1, 0, 1, '딸기케익은 커피명가랑 비슷한맛이에요!
 촉촉한 시트에 층층이 딸기 가득~ 보이는 그대로의 맛ㅎㅎ
 근데 별생각 없이 시킨 말차 쇼콜라?였나?
 저 말차 케익이 진짜 신의 한수였어요!
 꾸덕꾸덕한 텍스춰에 찌인한 말차의 맛♡♡ 꼭 드셔보세요.
 딸기 프라페는 요거트 아이스크림을 넣어줘서 상큼하고 맛있었어요~ 커피맛은 그냥 보통?ㅎㅎ 
츄러스를 먹어보고 싶었는데 아쉽게도 제가 간날은 추러스가 안된다고 하더라구요ㅠㅠ 
곧 날풀리면 옥상 테라스에 앉아서 김광석 거리를 내려다봐도 참 좋겠어요~ :) 
친구들이랑 김광석 거리에서 사진찍고 놀다가 방문하면 딱인곳!', '대구 중구 동덕로8길 40-20', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(93, 2, NULL, 1, 8, 1, NULL, NULL, '라이브와이어커피하우스', '2020-05-27 15:58:50.0', '2020-05-27 15:58:50.0', 1, 0, 1, '커피도 맛있고 음료도 좋은 재료 써서 전체적으로 맛이 풍부해요. 
카페라떼랑 딸기 라떼 주문했었는데 좋았습니다~
 딸기 라떼는 시럽 빼달라고 했는데 올려주는 휘핑 크림과 같이 먹으니 새콤달콤 부드러운 맛이었습니다. 
-계절 메뉴가 계속 바뀌어요. 
이번엔 딸기였고 저번 여름 쯤에는 복숭아였네요. 
시즌마다 계절 음료가 두셋, 케이크가 한둘정도 되는 듯해요.
 -배달 가능. ㅂㄷ의민족에 있네요.', '대구 동구 동촌로46길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(94, 2, NULL, 1, 4, 4, NULL, NULL, '베리베리', '2020-05-27 16:00:12.0', '2020-05-27 16:00:12.0', 1, 0, 1, '달달하니 좋아요!', '대구 달서구 달구벌대로309길 8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(95, 2, NULL, 1, 4, 4, NULL, NULL, '베리베리', '2020-05-27 16:00:56.0', '2020-05-27 16:00:56.0', 0, 0, 1, '맛있습니다!', '대구 달서구 달구벌대로309길 8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(96, 2, NULL, 1, 4, 1, NULL, NULL, '카페타오름달', '2020-05-27 16:02:39.0', '2020-05-27 16:02:39.0', 1, 0, 1, '감성카페!', '대구 달서구 감삼길 28', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(97, 2, NULL, 1, 4, 1, NULL, NULL, '카페타오름달', '2020-05-27 16:03:24.0', '2020-05-27 16:03:24.0', 0, 0, 1, '남자친구랑 다녀왔오요!', '대구 달서구 감삼길 28', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(98, 2, NULL, 1, 11, 4, NULL, NULL, '프라그란자', '2020-05-27 16:12:36.0', '2020-05-27 16:12:36.0', 1, 0, 1, '빵이 엄청 많아용 브런치카페이다 보니 여러종류의 빵도 많고 맛도 있어요ㅎㅎㅎ
오징어먹물빵이 맛나네요 저는 분위기도 괜찮고 주차장도 있어서 편한것 같아요! 뷰도 괜찮음', '대구 동구 파계로 622', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(99, 2, NULL, 1, 11, 2, NULL, NULL, '프라그란자', '2020-05-27 16:14:22.0', '2020-05-27 16:14:22.0', 1, 0, 1, '분위기 시원시원합니다!', '대구 동구 파계로 622', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(100, 2, NULL, 1, 11, 1, NULL, NULL, '초이스엠', '2020-05-27 16:15:11.0', '2020-05-27 16:15:11.0', 0, 0, 1, '좋아요!', '대구 동구 팔공산로 260', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(101, 2, NULL, 1, 11, 3, NULL, NULL, '수다', '2020-05-27 16:17:07.0', '2020-05-27 16:17:07.0', 1, 0, 1, '주인아주머니도 친절하시고
커피 로스팅매장이라서그런지 커피 존맛
오늘의커피랑 케냐 핸드드립커피 먹었는데 맛있음 재방문의사 있음
분위기도 너무 좋고 앤틴카페 색다른 인테리어에 반함 팔공산 드라이브후 제대로 힐링하구감', '대구 동구 동화사2길 21-10', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(102, 2, NULL, 1, 9, 1, NULL, NULL, '1990대명', '2020-05-27 16:18:32.0', '2020-05-27 16:18:32.0', 2, 0, 1, '분위기 좋아요!', '대구 남구 대경7길 12-4', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(103, 2, NULL, 1, 9, 1, NULL, NULL, '1990대명', '2020-05-27 16:20:26.0', '2020-05-27 16:20:26.0', 0, 0, 1, '위치는 약간 뜬금 없는곳에 있지만, 
분위기가 정말 정말 좋다
 할머니 집에 온 것 같은 느낌인데 인테리어도 적당하게 세련됐다
디저트가 많이 아쉬운 부분 디피가 사서 먹고싶을 만큼 그렇게 예쁘지는 않았고,
시켰던 크램뷜레도 발란스가 약간 아쉬웠다
음료는 오늘의 차를 시켰는데 티백을 사용한다 아이스로 만들면 약간 연하다 핫 티를 추천', '대구 남구 대경7길 12-4', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(104, 2, NULL, 1, 5, 4, NULL, NULL, '스완네', '2020-05-27 16:21:57.0', '2020-05-27 16:21:57.0', 2, 0, 1, '커피와 레모니라는 레몬 케이크가 맛있는 집 요즘 감성을 한껏 담은 카페라 곧 유명해질거 같아요!
유명해지기 전에 수성구민이라면 방문해보세요', '대구 수성구 동대구로80길 73', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(105, 2, NULL, 1, 10, 6, NULL, NULL, '비욘드유어드림', '2020-05-27 16:24:00.0', '2020-05-27 16:24:00.0', 2, 0, 1, '공부하기 정말 좋아요!', '대구 달성군 다사읍 대실역남로 2', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(106, 2, NULL, 1, 5, 1, NULL, NULL, '슬로우라이프', '2020-05-27 16:25:52.0', '2020-05-27 16:25:52.0', 2, 0, 1, '카페 엄청 (생각보다 아주 많이)크고 분위기 좋음! 자리마다 분위기가 달라서 더 매력적이다.
사진찍기도 좋음 재방문예정ㅎ', '대구 수성구 동대구로77길 33-6', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(107, 2, NULL, 1, 1, 4, NULL, NULL, '아이엠폴 봉산4호점', '2020-05-27 16:30:39.0', '2020-05-27 16:30:39.0', 1, 0, 1, '녹차 빙수랑 아메리카노 먹었어요!
녹차 아이스크림이랑 견과류 떡 팥 다 올려져있는 진짜 알찬 빙수였어요!!
빙수 얼음도 녹차 맛 많이 나고 전체적으로 되게 진한 맛의 녹빙!!!!
밑으로 내려갈수록 토핑이 적어져서 덜 달아지긴했지만 얼음 자체의 녹차 맛이 있어서 끝까지 맛있게 먹었어요 카페 분위기도 좋고
의자도 나름 편했지만 카페 좌석 배치가 좀 이상하게 되어있어서 자리 잡기가 쉽지 않아요
중간에 커다란 책상을 배치해서 공간을 다 잡아먹고 있고 막상 아무도 앉지는 않구...
그 커다란 책상때문에 단체로 와서 떠들만한 자리가 없는게 단점인 것 같아요 그치만 오늘은 자리잡는거 성공해섷ㅎㅎㅎㅎ
알바분도 친절하시구 여러모로 좋은 카페에요!!', '대구 중구 동성로1길 52', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(108, 2, NULL, 1, 7, 1, NULL, NULL, '코즈', '2020-05-27 16:32:25.0', '2020-05-27 16:32:25.0', 0, 0, 1, '분위기 맛집!', '대구 중구 달구벌대로 2125-8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(109, 2, NULL, 1, 1, 4, NULL, NULL, '커피모렌', '2020-05-27 16:35:20.0', '2020-05-27 16:35:20.0', 0, 0, 1, '와플 먹을려고 친구와 함께 오게되었다
내부가 넓고 자리도 많아서 있기 편했다 !
하겐다즈 딸기 와플은 맛있었는데 빵이 좀 눅눅했던 것 같아서 아쉬웠다
이야기하기 좋고 오랜시간 있어도 눈치 보이지 않는 카페였다 !
 그리고 커피 종류가 많아 선택의 폭이 넓어서 좋았다 처음보는 메뉴를 도전할 수 있는데 내가 선택한 커피는 그냥 무난했었당
하겐다즈 딸기 와플은 한번은 먹을 만 하다', '대구 중구 동성로2길 71', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(110, 2, NULL, 1, 1, 1, NULL, NULL, '스위트앤드', '2020-05-27 16:37:02.0', '2020-05-27 16:37:02.0', 2, 0, 1, '두 번 방문했는데 두 번째는 타르트 타탕 먹으러 방문했어요.
미친 딸기는 별로...그냥 딸기를 사 먹는 게 나을 것 같다고 생각했어요. 
치즈타르트는 맛있었어요.
여기 파이지가 들어 간 미뉴가 맛있는 듯 해요.
근데 이젠 안 파는 것 같더라고요. 마지막으로 타르트 타탕.
타르트 타탕 때문에 또 갈 것 같아요.
바로 구워주셔서 나오는데 시간은 좀 오래 걸리지만 타르트 타탕을 좋아하는 사람으로서 그 정도는 기다릴 수 있어요.', '대구 중구 동성로2길 12-36', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(111, 2, NULL, 1, 2, 4, NULL, NULL, '벨리시모앤틱카페', '2020-05-27 16:50:47.0', '2020-05-27 16:50:47.0', 1, 0, 1, '벨리시모가 앤틱카페라고 해서 방문해봤는데 여기서 찻잔, 그릇, 가방 같은 소품들도 판매한다더라
곳곳에 꽃으로 꾸며진 공간도 있고 카페 분위기가 예뻐서 모든 공간이 포토존인 것 같은 느낌이다.', '대구 수성구 무학로 37', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(112, 2, NULL, 1, 2, 4, NULL, NULL, '카페편 수성점', '2020-05-27 16:52:15.0', '2020-05-27 16:52:15.0', 0, 0, 1, '맛있어요!', '대구 수성구 들안로 57', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(113, 2, NULL, 1, 2, 2, NULL, NULL, '몰토베네', '2020-05-27 16:53:58.0', '2020-05-27 16:53:58.0', 0, 0, 1, '도심속의 정원느낌이에요
정말 이뿝니다 음료도 맛이 적당합니다 ㅎ', '대구 수성구 청수로12길 9-18', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(114, 2, NULL, 1, 2, 2, NULL, NULL, '크레도 본점', '2020-05-27 16:55:46.0', '2020-05-27 16:55:46.0', 1, 0, 1, '뷰맛집!', '대구 수성구 동대구로25길 24-17', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(115, 2, NULL, 1, 2, 4, NULL, NULL, '크레도 본점', '2020-05-27 16:56:37.0', '2020-05-27 16:56:37.0', 0, 0, 1, '너무 예뻐요!', '대구 수성구 동대구로25길 24-17', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(116, 2, NULL, 1, 2, 4, NULL, NULL, '몰토베네', '2020-05-27 16:57:31.0', '2020-05-27 16:57:31.0', 1, 0, 1, '맛있어요!', '대구 수성구 청수로12길 9-18', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(117, 2, NULL, 1, 2, 1, NULL, NULL, '커피아름', '2020-05-27 16:58:52.0', '2020-05-27 16:58:52.0', 1, 0, 1, '남자친구랑 데이트하기 딱 좋아요!', '대구 수성구 무학로21안길 96', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(118, 2, NULL, 1, 2, 1, NULL, NULL, '커피아름', '2020-05-27 17:00:58.0', '2020-05-27 17:00:58.0', 0, 0, 1, '분위기 좋아요!', '대구 수성구 무학로21안길 96', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(119, 2, NULL, 1, 2, 1, NULL, NULL, '쿰', '2020-05-27 17:02:31.0', '2020-05-27 17:02:31.0', 2, 0, 1, '분위기 최고!', '대구 수성구 수성로14길 41-27', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(120, 2, NULL, 1, 2, 4, NULL, NULL, '커피아름', '2020-05-27 17:04:29.0', '2020-05-27 17:04:29.0', 0, 0, 1, '조용하고 좋아요!', '대구 수성구 무학로21안길 96', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(121, 2, NULL, 1, 3, 2, NULL, NULL, '그린페이스카페', '2020-05-27 17:06:15.0', '2020-05-27 17:06:15.0', 1, 0, 1, '여기, 분위기가 장난 아니다. 

알록달록 봄날의 색채로 치장한 카페는 화려하면서도 고풍스러웠다.

 곳곳에서 보이는 꽃과 인형들은 카페를 아늑하게 품고 있었고
인테리어용인 것이 분명한 책과 미술품들도 어수선하지 않고 카페에 녹아들어 있었다. ', '대구 달서구 성당로 117-10', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(122, 2, NULL, 1, 3, 4, NULL, NULL, '센트99', '2020-05-27 17:07:18.0', '2020-05-27 17:07:18.0', 1, 0, 1, '달달해요!', '대구 달서구 야외음악당로 99', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(123, 2, NULL, 1, 3, 4, NULL, NULL, '로지로키로드', '2020-05-27 17:08:52.0', '2020-05-27 17:08:52.0', 0, 0, 1, '복숭아 스무디가 대표메뉴!', '대구 남구 현충로 53', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(124, 2, NULL, 1, 3, 4, NULL, NULL, '금토끼', '2020-05-27 17:09:44.0', '2020-05-27 17:09:44.0', 1, 0, 1, '가게가 이쁘며 직원분이 친절하시고 디저트와 음료들도 맛있었습니다.', '대구 남구 큰골길 79', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(125, 2, NULL, 1, 3, 1, NULL, NULL, '금토끼', '2020-05-27 17:10:40.0', '2020-05-27 17:10:40.0', 1, 0, 1, '아기자기한 인테리어에 맛있는 디저트와 맛있는 커피! 티타임즐기기 최적의 장소에요~~', '대구 남구 큰골길 79', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(126, 2, NULL, 1, 3, 4, NULL, NULL, '베리앙쥬', '2020-05-27 17:12:02.0', '2020-05-27 17:12:02.0', 1, 0, 1, '야식으로 배달시켜먹었는데 디저트류가 많이 안달고 적당히 맛있었어요!', '대구 달서구 성당로 3', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(127, 2, NULL, 1, 4, 1, NULL, NULL, '그린웨이브', '2020-05-27 17:13:20.0', '2020-05-27 17:13:20.0', 0, 0, 1, '가정집을 개조해서 포근한 느낌이 들었어요 ㅎㅎ
음료는 맛잇었지만 케이크는....한번더먹지는 않을꺼같아요', '대구 달서구 감삼북길 126', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(128, 2, NULL, 1, 4, 4, NULL, NULL, '그린웨이브', '2020-05-27 17:13:53.0', '2020-05-27 17:13:53.0', 1, 0, 1, '맛있어요!', '대구 달서구 감삼북길 126', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(129, 2, NULL, 1, 1, 4, NULL, NULL, '마주봄', '2020-05-27 17:15:18.0', '2020-05-27 17:15:18.0', 2, 0, 1, '분위기는 좋았는데 커피종류는 많지 않아서 아쉬웠어용', '대구 중구 중앙대로 434-8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(130, 2, NULL, 1, 5, 3, NULL, NULL, '푸댕', '2020-05-27 17:17:09.0', '2020-05-27 17:17:09.0', 1, 0, 1, '조용하고 애견동반이라 좋아요!', '대구 수성구 지범로 11', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(131, 2, NULL, 1, 5, 3, NULL, NULL, '슬로우라이프', '2020-05-27 17:18:42.0', '2020-05-27 17:18:42.0', 1, 0, 1, '저는 혼자 갔지만 어른들이 좋아하시더라구요
음료조 맛잇고 인테리어 넘나 이뻐요!
가족들끼리 꼭가보세요!', '대구 수성구 동대구로77길 33-6', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(132, 2, NULL, 1, 7, 1, NULL, NULL, '미도다방', '2020-05-27 17:20:22.0', '2020-05-27 17:20:22.0', 0, 0, 1, '좋아요!', '대구 중구 진골목길 14', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(133, 2, NULL, 1, 3, 4, NULL, NULL, '로지로키로드', '2020-05-27 17:21:34.0', '2020-05-27 17:21:34.0', 0, 0, 1, '산딸기와 치즈 초코의 조합이 어색할 것 같지만 의외로 잘 어울렸으며 가게 분위기가 아기자기하고 예쁩니다', '대구 남구 현충로 53', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(134, 2, NULL, 1, 1, 4, NULL, NULL, '마주봄', '2020-05-27 17:23:51.0', '2020-05-27 17:23:51.0', 1, 0, 1, '또 먹고싶다!', '대구 중구 중앙대로 434-8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(135, 2, NULL, 1, 7, 5, NULL, NULL, '바이반스', '2020-05-27 17:25:09.0', '2020-05-27 17:25:09.0', 0, 0, 1, '예뽀라!', '대구 중구 동덕로36길 116-2', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(136, 2, NULL, 1, 9, 5, NULL, NULL, '몽펍피', '2020-05-27 17:27:05.0', '2020-05-27 17:27:05.0', 0, 0, 1, '인형들!', '대구 남구 명덕로18길 127', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(137, 2, NULL, 1, 11, 4, NULL, NULL, '수다', '2020-05-27 17:28:11.0', '2020-05-27 17:28:11.0', 0, 0, 1, '재방문의사있음!', '대구 동구 동화사2길 21-10', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(138, 2, NULL, 1, 7, 4, NULL, NULL, '호롱커피', '2020-05-27 17:29:06.0', '2020-05-27 17:29:06.0', 0, 0, 1, '그냥 요즘 많이 볼 수 있는 카페. 커피맛은 쏘쏘', '대구 중구 관덕정길 13-13', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(139, 2, NULL, 1, 5, 1, NULL, NULL, '유니크베뉴', '2020-05-27 17:30:06.0', '2020-05-27 17:30:06.0', 0, 0, 1, '좋아요!', '대구 수성구 수성로77길 15', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(140, 2, NULL, 1, 1, 4, NULL, NULL, '마주봄', '2020-05-27 17:30:41.0', '2020-05-27 17:30:41.0', 1, 0, 1, '좋아요!', '대구 중구 중앙대로 434-8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(141, 2, NULL, 1, 5, 4, NULL, NULL, '유니크베뉴', '2020-05-27 17:31:23.0', '2020-05-27 17:31:23.0', 1, 0, 1, '또 가고시펑... 다음엔 토스트 머글거얌', '대구 수성구 수성로77길 15', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(142, 2, NULL, 1, 6, 4, NULL, NULL, '카페디치엘로', '2020-05-27 17:34:27.0', '2020-05-27 17:34:27.0', 0, 0, 1, '좋아요!', '대구 북구 유통단지로8길 46', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(143, 2, NULL, 1, 10, 1, NULL, NULL, '스위치온', '2020-05-27 17:35:48.0', '2020-05-27 17:35:48.0', 0, 0, 1, '여기서 결혼하고 싶어요!', '대구 달성군 가창면 헐티로11길 35', 0);



























INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(229, '/2020/05/27/s_1fe9635b-d5bf-41c8-b561-c03af9b990f9_sample08.PNG', NULL, 35);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(230, '/2020/05/27/s_751758f5-ac2d-468c-bd00-2576c1934ff0_sample09.PNG', NULL, 36);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(231, '/2020/05/27/s_04860c24-63b9-4644-b7fd-73d7c864c9d4_sample10.PNG', NULL, 37);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(232, '/2020/05/27/s_fa21d689-db1f-4a29-a949-c8d462d73126_sample11.PNG', NULL, 37);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(233, '/2020/05/27/s_436dfe77-d13e-4a34-9b95-968653a4d987_sample12.PNG', NULL, 37);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(234, '/2020/05/27/s_e49c495e-13ec-4089-882f-36d9daf5f2c8_sample13.PNG', NULL, 38);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(235, '/2020/05/27/s_fa443ae2-8a67-45cc-9b4f-6ece8311f38d_sample14.PNG', NULL, 38);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(236, '/2020/05/27/s_489b3b34-a93d-4c99-a7aa-8b06758f7b88_sample15.PNG', NULL, 38);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(237, '/2020/05/27/s_76f126ff-c2d0-4f77-9d53-ac1ff362a71b_sample16.PNG', NULL, 39);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(238, '/2020/05/27/s_bd3d5fd2-00c5-4cff-b2d7-4d07e935802c_sample17.PNG', NULL, 40);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(239, '/2020/05/27/s_981c4e26-0432-43b8-b76a-57e4039bec34_sample18.PNG', NULL, 40);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(240, '/2020/05/27/s_e2c5583c-ab9a-4b64-9110-38778f07645d_sample19.PNG', NULL, 43);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(241, '/2020/05/27/s_8f920394-3b36-492f-a3fb-5ef70b0854d7_sample20.PNG', NULL, 43);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(242, '/2020/05/27/s_620189f0-1433-4fb6-aaa6-59647ecc2f2f_sample21.PNG', NULL, 43);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(243, '/2020/05/27/s_9d7711af-e336-4e93-893c-8fd32cebbbb0_1.PNG', NULL, 44);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(244, '/2020/05/27/s_f37d6e60-347e-4b2a-b509-57fdfb1c12ce_2.PNG', NULL, 44);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(245, '/2020/05/27/s_0c3e6ca0-233c-46e8-a9ae-8dfb284ec966_3.PNG', NULL, 44);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(246, '/2020/05/27/s_950ba23d-29c1-4713-aeea-5014982300a6_4.PNG', NULL, 44);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(247, '/2020/05/27/s_cccadbc3-00b9-487a-890e-49ca06b5c52d_5.PNG', NULL, 45);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(248, '/2020/05/27/s_c7e14575-4191-4fab-bf7d-eb0d2de9242b_6.PNG', NULL, 45);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(249, '/2020/05/27/s_e1240fa5-5af5-477d-b3c7-ae7a3a2fc6dc_7.jpg', NULL, 45);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(250, '/2020/05/27/s_3e37f14d-f7c1-4ba0-8870-0f2e36775ce1_8.PNG', NULL, 46);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(251, '/2020/05/27/s_dd09cd72-3318-40fc-9f6b-a597bb23553f_9.PNG', NULL, 46);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(252, '/2020/05/27/s_0c71da3c-42f5-4ed8-a1a1-e49d98d5217b_10.PNG', NULL, 46);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(253, '/2020/05/27/s_f59ecc9b-614c-4f6f-b111-8a4dfb37df9c_11.PNG', NULL, 47);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(254, '/2020/05/27/s_5fb12f30-6cd2-43ab-9a12-fe7777a9848d_12.PNG', NULL, 47);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(255, '/2020/05/27/s_22d9c8fe-6944-43d9-8832-af748fc89e6a_13.PNG', NULL, 47);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(256, '/2020/05/27/s_713dca96-097a-42cc-b3d3-3ed27a8c3da8_14.PNG', NULL, 47);



select i.cafe_no, i.image_name from image i left join cafe c on c.cafe_no = i.cafe_no where c.cafe_no =2 limit 1;

select * from cafe c left join image i on c.cafe_no  = i.cafe_no where powerlink_cdt = 1;

select * from image i where cafe_no = 38;
left join (select * from cafe c where powerlink_cdt  = 0);
select c.*, z.*, t.* from cafe c 
		left join theme t on c.theme_no = t.theme_no 
		
select i.cafe_no, i.image_name from image i left join cafe c on c.cafe_no = i.cafe_no where c.cafe_no =1;		
select * from (select * from cafe where powerlink_cdt =1) p, image i where p.cafe_no = i.cafe_no;

select * from image; where cafe_no = 1 limit 1;

select * from cafe where powerlink_cdt =0;
select c.*, z.*, t.* from cafe c 
		left join theme t on c.theme_no = t.theme_no 
		left join `zone` z on c.zone_no = z.zone_no
		where c.cafe_no=#{cafeNo}
		
		
		
select i.cafe_no, i.image_name from image i left join cafe c on c.cafe_no = i.cafe_no where c.cafe_no =1 limit 1		

select i.cafe_no, i.image_name from image i left join cafe c on c.cafe_no = i.cafe_no where c.cafe_no =125 limit 1;

select view_number, rank() over(order by view_number desc) as '순위' from board where board_no2 = 2;


select * from board b left join zone z on b.zone_no = z.zone_no left join where board_no2 = 2 order by vote_number desc limit 10;
-- 조회수
select * from board where board_no2 = 2 order by view_number desc limit 10;
-- 댓글수
select * from board where board_no2 = 2 order by reply_cnt desc limit 10;
-- 추천수
select * from board where board_no2 = 2 order by vote_number desc limit 10;


select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		where board_no2 = 2 order by vote_number desc limit 10;
		
	
select v.board_no , b.writing_title , b.reply_cnt 
			from vote v left join board b on v.board_no = b.board_no, 
				(select board_no, count(board_no) as cnt  from vote where month(vote_date) = month(now())-1 group by board_no) num
			where v.board_no = num.board_no and b.board_no2 = 1
			group by board_no
			order by num.cnt desc, v.board_no limit 10;	
		
select * from board; where board_no2=2 and adddate(curdate(),1);
-- 전체 추천수
select * from board where board_no2=2 order by vote_number desc limit 10;
-- 전월 추천수
select * from board where board_no2=2 order by vote_number desc limit 10;
-- 당월 조회순
select * from board where board_no2=2 order by view_number desc limit 10;
-- 당월 댓글순
select * from board where board_no2=2 order by reply_cnt desc limit 10;
-- 당월 추천순
select * from board where board_no2=2 order by vote_number desc limit 10;

select DATE_SUB(crudate(), interval 1 month);

SELECT left(DATE_SUB(curdate(), INTERVAL ),7);

-- 4월달 정보
select * from board where board_no2 =2 and left(DATE_SUB(curdate(), INTERVAL ),7) = left(registration_date,7) order by vote_number desc limit 10;


select substring(curdate(),7,1)-1;

select * from board;
select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		where board_no2 =2 and left(DATE_SUB(curdate(), INTERVAL 0 month),7) = left(registration_date,7) order by vote_number desc limit 10;
select * from board where board_no2 = 2;
select * from board where substring(curdate(),6,2) ;


select * from cafe c
		left join zone z on c.zone_no = z.zone_no 
		left join theme t on c.theme_no = t.theme_no order by cafe_no desc limit 3;

select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, b.reply_cnt, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		where board_no2 =2 and left(DATE_SUB(curdate(), INTERVAL 0 month),7) = left(registration_date,7) order by reply_cnt desc limit 10;
		
	
	
select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, b.reply_cnt, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		where board_no2 = 2 order by vote_number desc limit 10;
	

select * from cafe where left(DATE_SUB(curdate(), INTERVAL 0 month),7) = left(registration_date,7) order by registration_date desc limit 4;
		
select left(DATE_SUB(curdate(), INTERVAL 0 month),7); -- 2020 06

select left(DATE_SUB(curdate(), INTERVAL 1 month),7); -- 2020 05

select * from starpoint where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(registration_date,7); -- 5월달 별점

select c.cafe_name, sum(s.star_point), s.registration_date from cafe c left join starpoint s on c.cafe_no = s.cafe_no where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7);


select c.cafe_name, sum(s.star_point)/5, s.registration_date from cafe c left join starpoint s on c.cafe_no = s.cafe_no where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7) group by c.cafe_name; 

select u.nick , u.name , u.user_id , u.user_grade , g.user_grade_image , b.board_no ,
			   b.view_number , b.writing_title , b.registration_date , b.update_date,
			   b.writing_content , b.vote_number , b.reply_cnt , b.board_del_cdt, z.zone_no , z.zone_name ,
			   t.theme_no , t.theme_name , c.cafe_no, c.cafe_name , c.address, i.image_name 
			from board b left join image i on b.board_no = i.board_no 
						left join users u on b.user_no = u.user_no 
						left join grade g on u.user_grade = g.user_grade 
						left join cafe c on b.cafe_no = c.cafe_no 
						left join zone z on c.zone_no = z.zone_no 
						left join theme t on c.theme_no = t.theme_no
						where board_no2 =1 and left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(b.registration_date,7) order by vote_number desc limit 14;
						
				
select * from cafe c left join starpoint s on c.cafe_no = s.cafe_no where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date ,7) order by star_point desc limit 10;



select * from cafe where cafe_name = '차니노유메';

select c.cafe_name, s.star_point, s.registration_date from cafe c left join starpoint s on c.cafe_no = s.cafe_no where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7); -- 5월
select c.cafe_name, s.star_point, s.registration_date from cafe c left join starpoint s on c.cafe_no = s.cafe_no where left(DATE_SUB(curdate(), INTERVAL 0 month),7) = left(s.registration_date,7); -- 6월

select count(star_point) as '총별점개수'from starpoint where cafe_no = 69; -- 총개수 : 69개

select count(star_point) as '총별점개수'from starpoint where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(registration_date,7) and cafe_no = 69; -- 5월 9개



group by c.cafe_name; 

-- 전월기준 별점평균순위 : 영업중인 카페만
select *
from cafe c
left join starpoint s on c.cafe_no = s.cafe_no
left join theme t on c.theme_no = t.theme_no
left join zone z on c.zone_no = z.zone_no
where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7) and c.cafe_cdt = 1
group by c.cafe_name
order by round(sum(s.star_point)/count(s.star_point),1) desc limit 10;


select round(sum(s.star_point)/count(s.star_point),1) as 'point', c.cafe_name 
from cafe c
left join starpoint s on c.cafe_no = s.cafe_no
left join theme t on c.theme_no = t.theme_no
left join zone z on c.zone_no = z.zone_no
where c.cafe_cdt = 1 
group by c.cafe_name
order by round(sum(s.star_point)/count(s.star_point),1) desc limit 10;


select round(sum(s.star_point)/count(s.star_point), 1) as 'point'
from cafe c left join starpoint s
on c.cafe_no = s.cafe_no
where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7) and c.cafe_cdt = 1
group by c.cafe_name
order by round(sum(s.star_point)/count(s.star_point),1) desc limit 10;



select c.*, s.user_no, u.name , s.star_point_comment , i.image_name, z.zone_name, t.theme_name
from starpoint s left join cafe c on s.cafe_no = c.cafe_no 
						 left join image i on c.cafe_no = i.cafe_no
						 left join zone z on c.zone_no = z.zone_no 
					 	 left join theme t on c.theme_no = t.theme_no 
					 	 left join users u on s.user_no = u.user_no 
			, (select cafe_no, round(avg(star_point), 1) as spoint, update_date from starpoint where month(update_date) = month(now())-1 group by cafe_no) spoint
		where s.cafe_no = spoint.cafe_no and c.cafe_cdt = 1
		group by s.cafe_no
		order by spoint desc, spoint.update_date desc limit 10;
		
select * from grade;
select b.user_no, g.user_grade_image, u.nick, u.user_id, count(b.user_no) from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade group by b.user_no order by count(b.user_no) desc;

select b.user_no, g.user_grade_image, u.nick, u.user_id, count(b.user_no) from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(b.registration_date,7) group by b.user_no order by count(b.user_no) desc;


select b.user_no, g.user_grade_image, u.nick, u.user_id from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade group by b.user_no order by count(b.user_no) desc;

 select b.user_no, g.user_grade_image, u.nick, u.user_id, count(b.user_no) from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade group by b.user_no order by count(b.user_no) desc;
 


select b.board_no, b.user_no, g.user_grade_image, u.nick, u.user_id, count(b.user_no) from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade group by b.user_no order by count(b.user_no) desc;


select b.board_no, b.user_no, g.user_grade_image, u.nick, u.user_id, count(b.user_no) from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(b.registration_date,7) group by b.user_no order by count(b.user_no) desc;
select count(b.user_no) from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(b.registration_date,7) group by b.user_no order by count(b.user_no) desc;


select * from cafe c
		left join zone z on c.zone_no = z.zone_no 
		left join theme t on c.theme_no = t.theme_no where c.cafe_cdt = 1 order by cafe_no desc limit 3;
		
select * from cafe;	-- 129

select * from cafe c
		left join zone z on c.zone_no = z.zone_no 
		left join theme t on c.theme_no = t.theme_no where c.cafe_cdt = 1 and cafe_no = 129;

-- 영업으로 등록된 카페 번호
select cafe_no from cafe c
		left join zone z on c.zone_no = z.zone_no 
		left join theme t on c.theme_no = t.theme_no where c.cafe_cdt = 1;

-- 영업으로 등록된 카페 번호의 가장 마지막 숫자
select cafe_no from cafe c
		left join zone z on c.zone_no = z.zone_no 
		left join theme t on c.theme_no = t.theme_no where c.cafe_cdt = 1 order by cafe_no desc limit 1;
	
		
select cafe_no from cafe order by cafe_no desc limit 1; -- 가장 마지막 숫자 가져오기 

-- readCafe 이걸로 뿌리기
select c.*, z.*, t.* from cafe c 
		left join theme t on c.theme_no = t.theme_no 
		left join `zone` z on c.zone_no = z.zone_no
		where c.cafe_no=129;
	
select cafe_no from cafe where cafe_cdt = 1;


select c.*, z.*, t.* from cafe c 
		left join theme t on c.theme_no = t.theme_no 
		left join `zone` z on c.zone_no = z.zone_no order by c.view_number desc limit 15;
		

select c.*, z.*, t.* from cafe c 
		left join theme t on c.theme_no = t.theme_no 
		left join `zone` z on c.zone_no = z.zone_no order by c.view_number desc limit 15;
		
	
	
select round(sum(s.star_point)/count(s.star_point),1) as 'point', c.cafe_name, c.*, z.*, t.*
from cafe c


select cafe_no from cafe where cafe_cdt = 1 and theme_no = 2;
left join starpoint s on c.cafe_no = s.cafe_no
left join theme t on c.theme_no = t.theme_no
left join zone z on c.zone_no = z.zone_no
where c.cafe_cdt = 1 
group by c.cafe_name
order by round(sum(s.star_point)/count(s.star_point),1) desc limit 10;

select cafe_no from cafe where theme_no = 1 and cafe_cdt = 1;
select cafe_no from cafe where theme_no = 2 and cafe_cdt = 1;
select cafe_no from cafe where theme_no = 3 and cafe_cdt = 1;
select cafe_no from cafe where theme_no = 4 and cafe_cdt = 1;
select cafe_no from cafe where theme_no = 5 and cafe_cdt = 1;
select cafe_no from cafe where theme_no = 6 and cafe_cdt = 1;

select c.*, z.*, t.* from cafe c 
left join theme t on c.theme_no = t.theme_no 
left join `zone` z on c.zone_no = z.zone_no where t.theme_no = 1 and c.cafe_cdt = 1;





select b.*, c.*, z.*, t.*, u.*, g.* from board b
left join cafe c on b.cafe_no = c.cafe_no 
left join zone z on c.zone_no = z.zone_no
left join theme t on c.theme_no = t.theme_no
left join users u on b.user_no = u.user_no 
left join grade g on u.user_grade = g.user_grade
where board_no2 = 1 order by b.vote_number desc limit 10;

select count(*) from cafe where cafe_cdt=1;
select count(*) from board where board_no2 = 1;

select * from boardkinds;

select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt from starpoint s left join theme t on s.theme_no = t.theme_no 
		left join cafe c on s.cafe_no = c.cafe_no where s.cafe_no = 1 and s.theme_no != c.theme_no 
		group by s.theme_no order by cnt desc, s.theme_no limit 2;
		
select c.cafe_no, c.cafe_name, z.zone_name, t.theme_name, t.theme_no, c.registration_date, c.vote_number, c.view_number, c.oneline, c.address, c.detail_address from cafe c left join theme t on c.theme_no = t.theme_no 
		left join `zone` z on c.zone_no = z.zone_no where c.cafe_cdt =0 order by cafe_no;
		
select c.cafe_no, c.cafe_name, c.vote_number, c.registration_date, t.theme_no, t.theme_name from cafe c left join theme t on c.theme_no = t.theme_no where c.cafe_cdt=1 order by c.registration_date desc;


select * from starpoint where star_point = 5;

select c.cafe_no, c.cafe_name, s.registration_date, u.name ,s.star_point_comment from starpoint s left join cafe c on s.cafe_no = c.cafe_no left join users u on s.user_no = u.user_no where s.star_point = 5 and left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7) and c.cafe_cdt = 1 group by c.cafe_name order by s.registration_date desc;



select c.cafe_name, s.registration_date, u.name ,s.star_point_comment from starpoint s left join cafe c on s.cafe_no = c.cafe_no left join users u on s.user_no = u.user_no where s.star_point = 5 and left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7);

select * from cafe where left(DATE_SUB(curdate(), INTERVAL 0 month),7) = left(registration_date,7) order by registration_date desc limit 4;
		
select left(DATE_SUB(curdate(), INTERVAL 0 month),7); -- 2020 06

select left(DATE_SUB(curdate(), INTERVAL 1 month),7); -- 2020 05

select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt from starpoint s left join theme t on s.theme_no = t.theme_no 
		left join cafe c on s.cafe_no = c.cafe_no where s.cafe_no = 82 and s.theme_no != c.theme_no 
		group by s.theme_no order by cnt desc, s.theme_no limit 2;
	
select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt from starpoint s left join theme t on s.theme_no = t.theme_no 
		left join cafe c on s.cafe_no = c.cafe_no where s.cafe_no = #{cafeNo} and s.theme_no != c.theme_no
		group by s.theme_no order by cnt desc, s.theme_no limit 2;
		
	
select c.cafe_no, c.cafe_name, c.vote_number, c.registration_date, t.theme_no, t.theme_name from cafe c
		left join theme t on c.theme_no = t.theme_no
		where c.cafe_cdt=1 order by c.registration_date desc;
	
	
select c.cafe_name, z.zone_name, t.theme_name, s.star_point, count(s.star_point),s.registration_date, u.name ,s.star_point_comment from starpoint s
left join cafe c on s.cafe_no = c.cafe_no
left join zone z on c.zone_no = z.zone_no 
left join users u on s.user_no = u.user_no
left join theme t on s.theme_no = t.theme_no 
where c.cafe_cdt = 1 and s.star_point = 5 and left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7) group by c.cafe_name order by count(s.star_point) desc limit 5;

select * from starpoint;

select c.cafe_name,  t.theme_name, s.star_point, s.registration_date, u.name ,s.star_point_comment from starpoint s
left join cafe c on s.cafe_no = c.cafe_no
left join users u on s.user_no = u.user_no
left join theme t on s.theme_no = t.theme_no 
where c.cafe_cdt = 1 and s.star_point = 5 and left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7) and c.cafe_name = '오퐁드부아';

group by c.cafe_name order by count(s.star_point) desc;
		
select count(cafe_no) from cafe c;


select b.*, c.*, z.*, t.*, u.*, g.* from board b
		left join cafe c on b.cafe_no = c.cafe_no 
		left join zone z on c.zone_no = z.zone_no
		left join theme t on c.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		where board_no2 = 1 order by b.vote_number desc limit 4;

	
	
	
drop procedure if exists loopVoteInsert_test4;
delimiter $$
$$
create procedure loopVoteInsert_test4()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 2000 DO /*추천 총 갯수*/
	Insert into vote(board_no, user_no, vote_date) 
	VALUES(floor(1 + (rand() * 34)), floor(1 + (rand() * 78)), '2020-04-30 10:45:10.0');
		/* 시작 boardNo , (마지막boardNo-시작boardNo)+1 */
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopVoteInsert_test4();	


drop procedure if exists loopReplyInsert_test3;
delimiter $$
$$
create procedure loopReplyInsert_test3()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 300 DO

	insert into reply(board_no, user_no, comment_content) values(floor(635 + (rand() * 50)), floor(1 + (rand() * 78)), concat('댓글 테스트 ', i));
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopReplyInsert_test3();

drop procedure if exists loopCnt_test4;
delimiter $$
$$
create procedure loopCnt_test4()
begin
DECLARE i INT DEFAULT 1;
WHILE i <= 34 DO

	update board
		set vote_number = (select count(*) from vote where board_no = i+1)
		where board_no = i+1;
	
	update board 
		set reply_cnt = (select count(*) from reply where board_no = i+1) 
		where board_no = i+1;
	
	SET i = i + 1;
END WHILE;
end
delimiter ;

CALL loopCnt_test4();

	

select c.*, z.*, t.* , s.*, u.* from starpoint s
		left join cafe c on s.cafe_no = c.cafe_no
		left join zone z on c.zone_no = z.zone_no 
		left join users u on s.user_no = u.user_no
		left join theme t on s.theme_no = t.theme_no 
		where c.cafe_cdt = 1 and s.star_point = 5 and left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(s.registration_date,7) group by c.cafe_name order by count(s.star_point) desc limit 5;
		
select b.board_no, b.user_no, g.user_grade_image, u.nick, u.user_id, count(b.user_no) from board b
left join users u on b.user_no = u.user_no
left join grade g on u.user_grade = g.user_grade
group by b.user_no order by count(b.user_no) desc limit 10;

select * from board where user_no = 1 order by registration_date desc limit 3;


select * from board where user_no = 209 order by registration_date desc limit 3;

select * from board where user_no = 214 order by registration_date desc limit 3;

select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name, i.image_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		left join image i on b.board_no = i.board_no
		where b.board_no2 = 2 and b.board_no = #{boardNo}
		
select board_no from board where board_no2 = 2;

select count(*) from board where board_no2 = 2;

select * from board;

select left(DATE_SUB(curdate(), INTERVAL 0 month),10);-- 2020 07

select left(DATE_SUB(curdate(), INTERVAL 1 month),7); -- 2020 06

select 

select left(now(),10);

select substring(DATE_add(now(),interval -1 month) from 1 for 10);

select now(); -- 2020-07-03 16:39:57.0

select curdate(); -- 2020-07-03

select CAST(DATE_FORMAT(now(),'%Y-%m-%d')AS CHAR(11));

select DATE_FORMAT( NOW(),'%Y%m%d');
select 


select count(*) from board where substring(now(),1,10) = substring(registration_date from 1 for 10);
 b

select substring(b.registration_date,1,10) as a from board b where left(date_sub(curdate(), interval 1 month),7) = substring(b.registration_date,1,7);


select * from board;
select * from board b where substring(date_add(now(), interval -1 month) from 1 for 7) = substring(b.registration_date,1,7);

select substring(date_add(now(), interval -1 month) from 1 for 10);

;
select count(*) from board where CAST(DATE_FORMAT(registration_date, '%Y%m%d') AS CHAR(8)) = CAST( DATE_FORMAT( NOW(),'%Y%m%d' ) AS CHAR(8)) and board_no2 = 2;

select count(*) from board where CAST(DATE_FORMAT(now(),'%Y-%m-%d')AS CHAR(11));


select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt from starpoint s left join theme t on s.theme_no = t.theme_no 
		left join cafe c on s.cafe_no = c.cafe_no where s.cafe_no = #{cafeNo} and s.theme_no != c.theme_no 
		group by s.theme_no order by cnt desc, s.theme_no limit 2;
	
	
	
select c.cafe_no, c.cafe_name, c.vote_number, c.registration_date, t.theme_no, t.theme_name from cafe c
left join theme t on c.theme_no = t.theme_no
order by c.registration_date desc;

select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt from starpoint s left join theme t on s.theme_no = t.theme_no 
left join cafe c on s.cafe_no = c.cafe_no where s.cafe_no =122 and s.theme_no != c.theme_no 
group by s.theme_no order by cnt desc, s.theme_no limit 2;

	limit #{pageStart}, 16	

select count(*) from board where DATE_FORMAT(registration_date, '%Y%m%d') =  DATE_FORMAT( NOW(),'%Y%m%d' ) and board_no2 = 2;

select count(*) from board where left(now(),10) = left(registration_date, 10) and board_no2 = 2;

where board_no2 =1 and left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(b.registration_date,7) order by vote_number desc limit 15

select now();

select theme_no, cafe_no from cafe;
select count()8

select s.cafe_no , s.theme_no, t.theme_name, c.theme_no,count(s.theme_no) as cnt from starpoint s left join theme t on s.theme_no = t.theme_no 
		left join cafe c on s.cafe_no = c.cafe_no where s.cafe_no = 1 and s.theme_no != c.theme_no 
		group by s.theme_no order by cnt desc , s.theme_no limit 2
union

select c.cafe_no, c.cafe_name, c.vote_number, c.registration_date, t.theme_no, t.theme_name from cafe c
		left join theme t on c.theme_no = t.theme_no
		left join starpoint s on c.cafe_no = s.cafe_no;
	
		group by c.cafe_no order by c.registration_date desc;
	
		
select * from starpoint;
union
select * from starpoint;
select * from board;

select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name, i.image_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		left join image i on b.board_no = i.board_no
		where b.board_no2 = 2 and b.board_no = 
select count(*) from board where CAST(DATE_FORMAT(registration_date, '%Y%m%d') AS CHAR(8)) = CAST( DATE_FORMAT( NOW(),'%Y%m%d' ) AS CHAR(8)) and board_no2 = 2 and board_del_cdt = 1;
select board_no from board where board_no2 = 2 and board_del_cdt = 1;

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
select b.board_no, b.board_no2, b.writing_title, b.writing_content, b.view_number, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_id, u.name, u.nick from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no
		where b.writing_title = '프리지아' and b.address = #{address} and b.board_no != #{boardNo} and b.board_del_cdt = 1
		order by b.board_no desc;						
select * from board where user_no = 211 and board_del_cdt = 1 order by registration_date desc limit 3;						
						
	select b.board_no, b.user_no, g.user_grade_image, u.nick, u.user_id from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(b.registration_date,7) and b.board_del_cdt = 1 group by b.user_no order by count(b.user_no) desc;					
select count(b.user_no) from board b left join users u on b.user_no = u.user_no where b.board_del_cdt = 1 group by b.user_no order by count(b.user_no) desc limit 10;
select b.board_no, b.user_no, g.user_grade_image, u.nick, u.user_id, count(b.user_no) from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade where b.board_del_cdt = 1 group by b.user_no order by count(b.user_no) desc limit 10;

select count(b.user_no) from board b left join users u on b.user_no = u.user_no left join grade g on u.user_grade = g.user_grade where left(DATE_SUB(curdate(), INTERVAL 1 month),7) = left(b.registration_date,7) and b.board_del_cdt = 1 group by b.user_no order by count(b.user_no) desc;