select user(), database();

show tables;

select * from cafe; -- 카페
select * from board; -- 게시판
select * from users; -- 회원 현황
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

-- ----------------------------------

-- 아름데이터(board)
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(1, 2, NULL, 1, 6, 3, NULL, NULL, '프리지아', '2020-05-22 09:52:26.0', '2020-05-22 09:52:26.0', 5, 0, 1, '조용하고 아늑하고~
무엇보다 아메리카노가 저는 너무 괜찮더라구요!
시간나면 한번 가보세요!!!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(2, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-22 09:53:43.0', '2020-05-22 09:53:43.0', 3, 0, 1, '동네감성뷰라고 아시는지요!
옥상에서 느끼는 동네뷰 한번 느껴보세요!!!
', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(3, 2, NULL, 1, 6, 3, NULL, NULL, 'HOUSE CAFE 내당점', '2020-05-22 09:56:50.0', '2020-05-22 09:56:50.0', 4, 0, 1, '예전에 빅다방이었던 자리인데
사장님께서 하우스카페로 새롭게 오픈하셨네요!
아메리카노 테이크아웃시 2000원입니다! 좋아요!!!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(4, 2, NULL, 1, 3, 4, NULL, NULL, '그린티파파', '2020-05-22 09:58:38.0', '2020-05-22 09:58:38.0', 11, 0, 1, '여기 진짜 숨은 카페!
녹차전문점인데 정말 좋아요!!!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(5, 2, NULL, 1, 6, 4, NULL, NULL, 'Y.N. CAFE', '2020-05-22 10:00:35.0', '2020-05-22 10:00:35.0', 2, 0, 1, '찐빵이 정말 맛있어요
그자리에서 바로 흡입합니다!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(6, 2, NULL, 1, 6, 6, NULL, NULL, '프리지아', '2020-05-22 10:01:36.0', '2020-05-22 10:01:36.0', 1, 0, 1, '여기서 공부하고 왔어요~
아늑하고 좋아요!!!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(7, 2, NULL, 1, 6, 3, NULL, NULL, 'HOUSE CAFE 내당점', '2020-05-22 10:02:47.0', '2020-05-22 10:02:47.0', 9, 0, 1, '레터링신청하면 이렇게 작지만 이벤트도 할수있어요!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(8, 2, NULL, 1, 6, 1, NULL, NULL, 'Y.N. CAFE', '2020-05-22 10:03:36.0', '2020-05-22 10:03:36.0', 6, 0, 1, '라떼가 정말 예뻐요!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(9, 2, NULL, 1, 9, 1, NULL, NULL, '넘버더스타즈', '2020-05-22 10:04:29.0', '2020-05-22 10:04:29.0', 1, 0, 1, '뷰가 좋고 데이트하기에 개인적공간도 지원하고 좋아요!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(10, 2, NULL, 1, 6, 3, NULL, NULL, 'HOUSE CAFE 내당점', '2020-05-22 10:05:31.0', '2020-05-22 10:05:31.0', 3, 0, 1, '가격이 저렴해요!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(11, 2, NULL, 1, 6, 4, NULL, NULL, '프리지아', '2020-05-22 10:06:14.0', '2020-05-22 10:06:14.0', 0, 0, 1, '마들렌 사장님께서 직접 구우십니다!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(12, 2, NULL, 1, 10, 3, NULL, NULL, '아이니드커피', '2020-05-22 10:10:57.0', '2020-05-22 10:10:57.0', 2, 0, 1, '점심때가면 500원 할인까지 해줍니다!', '대구 달성군 다사읍 달구벌대로 878', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(13, 2, NULL, 1, 6, 2, NULL, NULL, 'Y.N. CAFE', '2020-05-22 10:12:07.0', '2020-05-22 10:12:07.0', 1, 0, 1, '고즉넉한 한옥뷰를 감상하기 좋습니다!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(14, 2, NULL, 1, 6, 4, NULL, NULL, 'HOUSE CAFE 내당점', '2020-05-22 10:12:45.0', '2020-05-22 10:12:45.0', 6, 0, 1, '맛있어요!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(15, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-22 10:13:41.0', '2020-05-22 10:13:41.0', 0, 0, 1, '주차공간이 넓어 좋습니다!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(16, 2, NULL, 1, 6, 1, NULL, NULL, '프리지아', '2020-05-22 10:14:32.0', '2020-05-22 10:14:32.0', 4, 0, 1, '남자친구랑 4시간이나 데이트하다 왔네요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(17, 2, NULL, 1, 10, 6, NULL, NULL, '아이니드커피', '2020-05-22 10:15:47.0', '2020-05-22 10:15:47.0', 3, 0, 1, '복층으로 되어있어 좋습니다!
가격도 괜찮아요!', '대구 달성군 다사읍 달구벌대로 878', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(18, 2, NULL, 1, 6, 1, NULL, NULL, 'HOUSE CAFE 내당점', '2020-05-22 10:16:44.0', '2020-05-22 10:16:44.0', 10, 0, 1, '한잔 사서 두류공원으로 산책갔어요!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(19, 2, NULL, 1, 6, 6, NULL, NULL, '프리지아', '2020-05-22 10:18:24.0', '2020-05-22 10:18:24.0', 4, 0, 1, '아늑합니다', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(20, 2, NULL, 1, 9, 1, NULL, NULL, '넘버더스타즈', '2020-05-22 10:19:21.0', '2020-05-22 10:19:21.0', 3, 0, 1, '넓은카페 처음인데 좋아요', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(21, 2, NULL, 1, 6, 3, NULL, NULL, 'HOUSE CAFE 내당점', '2020-05-22 10:19:55.0', '2020-05-22 10:19:55.0', 2, 0, 1, '맛있어요!', '', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(22, 2, NULL, 1, 10, 6, NULL, NULL, '아이니드커피', '2020-05-22 10:20:35.0', '2020-05-22 10:20:35.0', 9, 0, 1, '좋아요!!!', '대구 달성군 다사읍 달구벌대로 878', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(23, 2, NULL, 1, 6, 1, NULL, NULL, '프리지아', '2020-05-22 10:54:02.0', '2020-05-22 10:54:02.0', 1, 0, 1, '좋아요', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(24, 2, NULL, 1, 10, 3, NULL, NULL, '아이니드커피', '2020-05-22 10:54:52.0', '2020-05-22 10:54:52.0', 1, 0, 1, '좋아요', '대구 달성군 다사읍 달구벌대로 878', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(25, 2, NULL, 1, 6, 3, NULL, NULL, '프리지아', '2020-05-22 10:55:43.0', '2020-05-22 10:55:43.0', 0, 0, 1, '좋아요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(26, 2, NULL, 1, 9, 1, NULL, NULL, '넘버더스타즈', '2020-05-22 10:56:53.0', '2020-05-22 10:56:53.0', 2, 0, 1, '좋아요', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(27, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-22 11:10:29.0', '2020-05-22 11:10:29.0', 0, 0, 1, '', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(28, 2, NULL, 1, 9, 6, NULL, NULL, '넘버더스타즈', '2020-05-22 11:11:09.0', '2020-05-22 11:11:09.0', 0, 0, 1, '작업하기도 좋아요!!!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(29, 2, NULL, 1, 9, 1, NULL, NULL, '넘버더스타즈', '2020-05-22 11:11:42.0', '2020-05-22 11:11:42.0', 0, 0, 1, '꿀잠자고 왔오요!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(30, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-22 11:12:15.0', '2020-05-22 11:12:15.0', 1, 0, 1, '뷰가 정말 환상적입니다!!!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(31, 2, NULL, 1, 6, 1, NULL, NULL, '프리지아', '2020-05-22 11:13:15.0', '2020-05-22 11:13:15.0', 2, 0, 1, '좋아요!
바닐라라떼 최고!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(32, 2, NULL, 1, 6, 3, NULL, NULL, '프리지아', '2020-05-22 11:13:56.0', '2020-05-22 11:13:56.0', 1, 0, 1, '좋아요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(33, 2, NULL, 1, 6, 3, NULL, NULL, '프리지아', '2020-05-22 11:14:32.0', '2020-05-22 11:14:32.0', 79, 0, 1, '좋아요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(34, 2, NULL, 1, 1, 4, NULL, NULL, '망고가좋아', '2020-05-22 11:20:47.0', '2020-05-22 11:20:47.0', 63, 0, 1, '', '', 0);

-- 아름 이미지 데이터
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(176, '/2020/05/22/s_e0665151-ed71-4bb0-94e1-780f25b2cdbd_rc_sample01.PNG', NULL, 1);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(177, '/2020/05/22/s_0cc36c95-c462-4a51-b347-93dc07b88f87_rc_sample02.PNG', NULL, 1);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(178, '/2020/05/22/s_0f02ebf3-74f3-432e-8333-d860abc9a731_rc_sample03.PNG', NULL, 1);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(179, '/2020/05/22/s_cb5a2496-9389-4e51-b204-6dfd9aca2527_rc_sample16.jpg', NULL, 2);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(180, '/2020/05/22/s_1425dc31-cde6-49a0-85a6-3d27fa5087a3_rc_sample17.jpg', NULL, 2);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(181, '/2020/05/22/s_7b1ffeea-4f15-4e72-829c-1af15e2ebd30_rc_sample18.jpg', NULL, 2);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(182, '/2020/05/22/s_a9b8509f-1b66-4a1e-833d-fe922193929d_rc_sample19.jpg', NULL, 2);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(183, '/2020/05/22/s_73bec22c-11ad-449f-9545-19f61ff618aa_rc_sample23.jpg', NULL, 3);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(184, '/2020/05/22/s_96c6f69b-f405-47e1-8355-06347bac2b67_rc_sample06.PNG', NULL, 4);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(185, '/2020/05/22/s_241ef977-f941-4854-b764-21a069c57262_rc_sample22.jpg', NULL, 5);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(186, '/2020/05/22/s_ecc8abbd-e483-4aa2-a967-1bfe24c3a361_rc_sample24.jpg', NULL, 6);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(187, '/2020/05/22/s_3bf72fe1-ff2c-4e04-b37c-f1579aa618db_rc_sample25.jpg', NULL, 6);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(188, '/2020/05/22/s_ae047d6c-cfa3-4d1c-8699-6451025141f5_rc_sample52.jpg', NULL, 7);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(189, '/2020/05/22/s_d1b08df1-3ff2-4823-b0ab-5261bab75a83_rc_sample21.jpg', NULL, 8);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(190, '/2020/05/22/s_846257be-ee24-4442-a5b3-fd0d402e3b40_rc_sample37.jpg', NULL, 9);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(191, '/2020/05/22/s_fcfe849c-72c9-4d06-aeeb-b27c671372ff_rc_sample39.jpg', NULL, 9);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(192, '/2020/05/22/s_c862db9f-b77e-49d8-9b70-2c535fc04874_rc_sample50.jpg', NULL, 10);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(193, '/2020/05/22/s_d1423b08-6a7a-490b-9a68-aca6273a12ce_rc_sample27.jpg', NULL, 11);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(194, '/2020/05/22/s_4054aae2-ebe1-47a6-b706-e13e9c98d8c6_rc_sample54.jpg', NULL, 12);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(195, '/2020/05/22/s_ec69e70f-39a3-4a51-88a7-4cb366ee2934_rc_sample20.jpg', NULL, 13);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(196, '/2020/05/22/s_87abcc1f-6071-49db-9cda-7b87e5496d0b_rc_sample47.jpg', NULL, 14);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(197, '/2020/05/22/s_d85e0e1a-3ad1-478d-964f-c2e05706e76b_rc_sample32.jpg', NULL, 15);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(198, '/2020/05/22/s_260a481e-4dc0-430e-988e-209533ae571d_rc_sample33.jpg', NULL, 15);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(199, '/2020/05/22/s_cdc7303e-f81b-4163-8c5f-f6f3e941ba3a_rc_sample34.jpg', NULL, 15);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(200, '/2020/05/22/s_3b2b6b16-08a1-481a-a4fb-c0e759327cd9_rc_sample35.jpg', NULL, 15);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(201,'/2020/05/22/s_486c1279-a6f4-415b-baab-40b21f576da3_rc_sample28.jpg',NULL,16);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(202,'/2020/05/22/s_bb5b709f-80af-43d7-b3fa-972247fc07fd_rc_sample29.jpg',NULL,16);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(203,'/2020/05/22/s_e6c87939-7a84-440e-9a3c-107a97d2abcb_rc_sample56.jpg',NULL,17);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(204,'/2020/05/22/s_3e9a7ddf-b9b4-4d9f-883a-d72ac0a73123_rc_sample59.jpg',NULL,17);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(205,'/2020/05/22/s_8ee050d9-2871-46c7-a779-5c4306f2f703_rc_sample48.jpg',NULL,18);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(206,'/2020/05/22/s_0f99e91f-9598-40c0-acaa-3c39cd0337be_rc_sample30.jpg',NULL,19);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(207,'/2020/05/22/s_bb328920-fff4-4f96-8c9f-70ddf1afa0ce_rc_sample31.jpg',NULL,19);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(208,'/2020/05/22/s_f250562d-3118-436d-893a-42bcb6c65e34_rc_sample40.jpg',NULL,20);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(209,'/2020/05/22/s_403d22ce-3114-44f1-8aa7-a152d4cc27bd_rc_sample41.jpg',NULL,20);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(210,'/2020/05/22/s_3d5f7e31-d4aa-44c2-b697-14db12337fb6_rc_sample49.jpg',NULL,21);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(211,'/2020/05/22/s_68ed7f16-e3a8-431b-a795-9ca85343ef32_rc_sample57.jpg',NULL,22);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(212,'/2020/05/22/s_380838af-1577-483a-b11d-13311f4bac8f_rc_sample03.PNG',NULL,23);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(213,'/2020/05/22/s_d42abfbc-28b1-4317-9a6a-292366206dd2_rc_sample58.jpg',NULL,24);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(214,'/2020/05/22/s_10ab3cb2-bec1-4509-ba6b-40649e356e6d_rc_sample26.jpg',NULL,25);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(215,'/2020/05/22/s_0be14951-93a7-4cc6-af1d-9b16ebb77920_rc_sample43.jpg',NULL,26);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(216,'/2020/05/22/s_8adeaa16-333f-42b4-a24f-b838ae14271a_rc_sample44.jpg',NULL,26);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(217,'/2020/05/22/s_0fd4dce6-8f5b-4072-aad6-8d8b21d85033_rc_sample63.jpg',NULL,27);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(218,'/2020/05/22/s_2cb3c956-0fad-419d-afab-f7edcbae35bc_rc_sample62.jpg',NULL,28);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(219,'/2020/05/22/s_38ff4251-7056-4b42-92d3-1115ce74d412_rc_sample60.jpg',NULL,29);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(220,'/2020/05/22/s_2b0fa75e-d874-4e1e-8bd7-d617e3562886_rc_sample61.jpg',NULL,30);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(221,'/2020/05/22/s_f03d2799-9899-4fe9-a272-968c521ca92e_rc_sample29.jpg',NULL,31);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(222,'/2020/05/22/s_8a7135e4-3b0b-47aa-bded-26adfaf7fa81_rc_sample31.jpg',NULL,32);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(223,'/2020/05/22/s_a1942b24-2dc8-45f4-9e5d-56722c6a0f1a_rc_sample25.jpg',NULL,33);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(224,'/2020/05/22/s_b55a05c0-5dda-49dc-9097-a7140081c701_rc_sample26.jpg',NULL,33);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(225,'/2020/05/22/s_652a82e3-ad3b-4d45-9d0b-7e396c40dd3a_rc_sample014.PNG',NULL,34);


update board
			set zone_no = 9, theme_no = 1, writing_title = '넘버더스타즈', writing_content = '테스트입니당당아!', address = '대구 남구 현충로 54'
		where board_no = 635;
		
	
select b.board_no, b.board_no2, b.writing_title, b.view_number, z.zone_no, z.zone_name, t.theme_no, t.theme_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		where b.board_no2 = 2
		order by b.board_no desc limit 0, 9;	