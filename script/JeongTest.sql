select user(), database();

show tables;

select * from cafe; -- 카페
select * from board; -- 게시판
select * from users;-- 회원 현황
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
VALUES(3, 2, NULL, 1, 1, 1, NULL, NULL, '마주봄', '2020-05-27 10:45:10.0', '2020-05-27 10:45:10.0', 4, 0, 1, '간만에 남자친구와 힐링 제대로 하고왔어요!
시간나시면 한번 가보세요!!!
초록초록하니 지금가기 딱입니다!', '대구 중구 중앙대로 434-8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(4, 2, NULL, 1, 2, 1, NULL, NULL, '벨리시모앤틱카페', '2020-05-27 10:50:03.0', '2020-05-27 10:50:03.0', 2, 0, 1, '이런 분위기 있는곳 흔하지 않고
앤틱하니 너무 좋습니다!
시간나면 한번 들려보세요!!!
전 너무 좋았어요^^', '대구 수성구 무학로 37', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(5, 2, NULL, 1, 3, 1, NULL, NULL, '그린페이스카페', '2020-05-27 10:51:53.0', '2020-05-27 10:51:53.0', 1, 0, 1, '피크닉 감성 느끼고 싶다면 전 여길 추천해드립니다!!!', '대구 달서구 성당로 117-10', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(6, 2, NULL, 1, 4, 6, NULL, NULL, '베리베리', '2020-05-27 10:55:46.0', '2020-05-27 10:55:46.0', 1, 0, 1, '혼자 조용히 책읽거나
노트북 들고 과제하기 좋은곳 같아요!', '대구 달서구 달구벌대로309길 8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(7, 2, NULL, 1, 5, 4, NULL, NULL, '슬로우라이프', '2020-05-27 11:01:40.0', '2020-05-27 11:01:40.0', 3, 0, 1, '망고빙수라면 바로 슬로우라이프를 가야한다!', '대구 수성구 동대구로77길 33-6', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(8, 2, NULL, 1, 6, 6, NULL, NULL, '프리지아', '2020-05-27 11:04:49.0', '2020-05-27 11:04:49.0', 2, 0, 1, '조용하고 작업하기 딱인곳!
지루하게 도서관만 가다가 여기서 공부하니 너무 좋네요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(9, 2, NULL, 1, 7, 1, NULL, NULL, '쎄라비음악다방', '2020-05-27 11:10:22.0', '2020-05-27 11:10:22.0', 2, 0, 1, '청라언덕쪽에 있어요!
옛스럽고 복고풍 물씬!', '대구 중구 국채보상로102길 60', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(10, 2, NULL, 1, 8, 4, NULL, NULL, '라이브와이어커피하우스', '2020-05-27 11:13:11.0', '2020-05-27 11:13:11.0', 0, 0, 1, '톰과제리 치즈케익 먹고왔습니다!', '대구 동구 동촌로46길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(11, 2, NULL, 1, 9, 5, NULL, NULL, '담소', '2020-05-27 11:17:06.0', '2020-05-27 11:17:06.0', 2, 0, 1, '댕댕이 말고 고영희 카페 키워드도 만들어주세요!!!
여기는 귀여운 고양이 담이가 맞이해줘요!!!', '대구 남구 용두길 92-5', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(12, 2, NULL, 1, 10, 6, NULL, NULL, '비욘드유어드림', '2020-05-27 11:20:04.0', '2020-05-27 11:20:04.0', 1, 0, 1, '대실역쪽 숨은 스터디 카페!
사장님이 더더욱 신경쓰셔서 스터디카페로 운영하고 있어요!', '대구 달성군 다사읍 대실역남로 2', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(13, 2, NULL, 1, 11, 4, NULL, NULL, '프라그란자', '2020-05-27 11:21:50.0', '2020-05-27 11:21:50.0', 0, 0, 1, '너무 맛있어요!
당충전 제대로!!', '대구 동구 파계로 622', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(14, 2, NULL, 1, 1, 2, NULL, NULL, '마주봄', '2020-05-27 11:22:50.0', '2020-05-27 11:22:50.0', 0, 0, 1, '루프탑에서 즐기는 초여름날씨!', '대구 중구 중앙대로 434-8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(15, 2, NULL, 1, 2, 4, NULL, NULL, '벨리시모앤틱카페', '2020-05-27 11:23:46.0', '2020-05-27 11:23:46.0', 1, 0, 1, '분위기 있고 좋아요!', '대구 수성구 무학로 37', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(16, 2, NULL, 1, 1, 1, NULL, NULL, '마주봄', '2020-05-27 11:24:28.0', '2020-05-27 11:24:28.0', 1, 0, 1, '나도 드디어 다녀왔다!!!', '대구 중구 중앙대로 434-8', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(17, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-27 11:27:18.0', '2020-05-27 11:27:18.0', 1, 0, 1, '동네감성 뷰 맛집!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(18, 2, NULL, 1, 10, 3, NULL, NULL, '아이니드커피', '2020-05-27 11:28:35.0', '2020-05-27 11:28:35.0', 1, 0, 1, '동네 숨은 착한커피집!!!
가격도 좋고
복층이라서 공간활용이 다양해요!
눈치보지 않고 즐길 수 있어요!', '대구 달성군 다사읍 달구벌대로 878', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(19, 2, NULL, 1, 6, 3, NULL, NULL, '프리지아', '2020-05-27 11:29:22.0', '2020-05-27 11:29:22.0', 1, 0, 1, '아메리카노가 정말 맛있어요!!!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(20, 2, NULL, 1, 1, 4, NULL, NULL, '카페나지막', '2020-05-27 11:31:57.0', '2020-05-27 11:31:57.0', 0, 0, 1, '쫀득쫀득 브라우니도 맛나보이고

티라미슈도 입에서 녹을 듯한 비주얼!

​그리고 여기는 특별한날을위한 케이크도 주문받는다고해요.', '대구 중구 동성로6길 46', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(21, 2, NULL, 1, 2, 4, NULL, NULL, '크레도 본점', '2020-05-27 11:34:04.0', '2020-05-27 11:34:04.0', 1, 0, 1, '공부하기도 좋고, 여러가지 다양한 빵과 음료를 맛볼수 있어요!', '대구 수성구 동대구로25길 24-17', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(22, 2, NULL, 1, 3, 4, NULL, NULL, '센트99', '2020-05-27 11:37:50.0', '2020-05-27 11:37:50.0', 2, 0, 1, 'sns감성 그대로 담은 멋진 공간이에요!

아보카도를 중심으로 베이컨과 계란이 얹어진 브런치도 최고고

몽블랑라떼와 워터폴라떼!
부드럽고 너무 달달합니다!
', '대구 달서구 야외음악당로 99', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(23, 2, NULL, 1, 4, 4, NULL, NULL, '카페타오름달', '2020-05-27 11:40:04.0', '2020-05-27 11:40:04.0', 0, 0, 1, '자꾸 눈길을 끌어서 한번 와보고 싶었는데
대학동기들하고 간만에 폭풍수다 떨고 왔습니다!', '대구 달서구 감삼길 28', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(24, 2, NULL, 1, 5, 1, NULL, NULL, '이오커피', '2020-05-27 11:43:28.0', '2020-05-27 11:43:28.0', 0, 0, 1, '라떼이즈어홀스~', '대구 수성구 파동로18길 64', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(25, 2, NULL, 1, 6, 4, NULL, NULL, '카페디치엘로', '2020-05-27 11:46:16.0', '2020-05-27 11:46:16.0', 0, 0, 1, '결혼식 마치고 폭풍수다!', '대구 북구 유통단지로8길 46', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(26, 2, NULL, 1, 7, 1, NULL, NULL, '미도다방', '2020-05-27 11:48:17.0', '2020-05-27 11:48:17.0', 2, 0, 1, '어머니랑 간만에 데이트!', '대구 중구 진골목길 14', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(27, 2, NULL, 1, 8, 6, NULL, NULL, '허그트리', '2020-05-27 11:51:03.0', '2020-05-27 11:51:03.0', 0, 0, 1, '조용하고 주차공간이 크지 않지만
나름 조용한 곳이라서 주차하는데 힘들지는 않았어요!', '대구 동구 금강로39길 24-9', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(28, 2, NULL, 1, 9, 6, NULL, NULL, '메모리인히어', '2020-05-27 11:54:30.0', '2020-05-27 11:54:30.0', 2, 0, 1, '조용하고 좋아요!', '대구 남구 영선시장1길 77', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(29, 2, NULL, 1, 6, 6, NULL, NULL, '프리지아', '2020-05-27 11:55:23.0', '2020-05-27 11:55:23.0', 1, 0, 1, '자바 공부하고 왔어요!', '대구 서구 서대구로7길 12', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(30, 2, NULL, 1, 9, 2, NULL, NULL, '넘버더스타즈', '2020-05-27 11:58:04.0', '2020-05-27 11:58:04.0', 2, 0, 1, '동네 감성 뷰 맛집!!!', '대구 남구 현충로 54', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(31, 2, NULL, 1, 1, 4, NULL, NULL, '너에게간다', '2020-05-27 12:14:53.0', '2020-05-27 12:14:53.0', 1, 0, 1, '오레오케이크는 정말 큰 오레오 조각을 먹는것 같아 좋았다
커피 맛은 나쁘지 않았는데 같이 간 친구가 왠지 모르게 남겼다
사람마다 호불호 갈릴 수 있는 맛인가?', '대구 중구 중앙대로79길 11', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(32, 2, NULL, 1, 2, 2, NULL, NULL, '카페편 수성점', '2020-05-27 12:31:46.0', '2020-05-27 12:31:46.0', 1, 0, 1, '비가 와서 하늘색이 좀 아쉽지만

확 트인 루프탑은 정말 쵝오!

야경보러 다시 꼭 가기로 했다지요ㅋ', '대구 수성구 들안로 57', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(33, 2, NULL, 1, 3, 4, NULL, NULL, '센트99', '2020-05-27 12:34:33.0', '2020-05-27 12:34:33.0', 1, 0, 1, '플라워카페랍니다!', '대구 달서구 야외음악당로 99', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(34, 2, NULL, 1, 4, 4, NULL, NULL, '그린웨이브', '2020-05-27 12:36:27.0', '2020-05-27 12:36:27.0', 3, 0, 1, '주택 개조 형식 카페! 오픈 시간에 맞춰서 방문해서 기다리지 않고 앉을 수 있었습니다 :) 
그린웨이브라떼, 레몬케이크, 시나몬애플크럼블 시켰습니당ㅎㅎ 커피도 맛있는데 베이커리류가 대박,,,
 인생 레몬케이크와 기억에 남는 크럼블을 맛봐서 행복했으니 꼭 가보시길 ㅜㅜ', '대구 달서구 감삼북길 126', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(35, 2, NULL, 1, 4, 1, NULL, NULL, '그린웨이브', '2020-05-27 12:37:21.0', '2020-05-27 12:37:21.0', 2, 0, 1, '얼그레이 쉬폰은 쉬폰 특유의 폭신폭신함이 없고 그냥 스펀지 케익 같아서 아쉬웠지만, 체리 초코 케이크는 맛있었어요. 초코케익 진한 걸 좋아하는데 초코맛이 생각보다 진해서 좋았어요. 크림도 안 느끼하고요. 블랙포레스트 파는 데가 요새 잘 없어서 반가웠어요. 초코 케익만 먹음 맛있다 줬을 것 같은데 쉬폰까지 합쳐서 괜찮다로. 그린라뗀가 그린웨이브 라뗀가 시그니처 메뉴 마셨는데 라떼도 괜찮았어요. 주택 개조한 카페라더니 외관이 진짜 그냥 일반 주택이라 입간판 안 나와있으면 모르고 지나칠 것 같아요 ㅋㅋ', '대구 달서구 감삼북길 126', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(37, 2, NULL, 1, 5, 4, NULL, NULL, '유니크베뉴', '2020-05-27 12:42:09.0', '2020-05-27 12:42:09.0', 0, 0, 1, '언니가 주말에 놀아준다고 해서!
오랜만에 여자놀이 할려고 범어동 카페 예쁜 곳으로!!!', '대구 수성구 수성로77길 15', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(38, 2, NULL, 1, 6, 1, NULL, NULL, '쌍피', '2020-05-27 12:43:56.0', '2020-05-27 12:43:56.0', 0, 0, 1, '매실청 티, 밀크티, 쌍피 치즈케이크 이렇게 주문했습니다.', '대구 북구 침산로 162-9', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(39, 2, NULL, 1, 7, 4, NULL, NULL, '호롱커피', '2020-05-27 12:46:22.0', '2020-05-27 12:46:22.0', 0, 0, 1, '인스타st 카페답지 않게 편한 자리가 많아서 좋았어요. 
천의자가 많아선가 가게에서 빈티지샵 향 냄새가 나요 ㅋㅋ
 아몬드크림라떼 고소하고 괜찮았어요. 마침 저녁 때 돼서 그런가 손님들 다 가시고 저 혼자라 서비스로 블루베리 크럼블 받았는데 맛있었어요~ 
맛이 엄청 뛰어나진 않은데 분위기와 있으면서 기분이 좋아서 좋은 인상으로 남았어요 ㅎㅎㅎ 
2명이 와서 소파 자리 앉아보고 싶네요. ', '대구 중구 관덕정길 13-13', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(40, 2, NULL, 1, 9, 5, NULL, NULL, '몽펍피', '2020-05-27 12:52:48.0', '2020-05-27 12:52:48.0', 2, 0, 1, '전 개인적으로 여기 커피가 맛있어요!', '대구 남구 명덕로18길 127', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(41, 2, NULL, 1, 3, 4, NULL, NULL, '베리앙쥬', '2020-05-27 14:13:51.0', '2020-05-27 14:13:51.0', 1, 0, 1, '딸기 맛집!', '대구 달서구 성당로 3', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(42, 2, NULL, 1, 5, 5, NULL, NULL, '푸댕', '2020-05-27 14:18:42.0', '2020-05-27 14:18:42.0', 2, 0, 1, '애견동반카페 푸댕!', '대구 수성구 지범로 11', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(43, 2, NULL, 1, 7, 5, NULL, NULL, '바이반스', '2020-05-27 14:22:27.0', '2020-05-27 14:22:27.0', 1, 0, 1, '애견동반 카페다 보니 

애견인들은 사랑하는 반려견 데리고 

어서 방문해보세요! 

​

맛있는 커피도 마시면서 

사진찍기도 예뻐서 추천드립니다 : )

', '대구 중구 동덕로36길 116-2', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(44, 2, NULL, 1, 11, 5, NULL, NULL, '퍼피80', '2020-05-27 14:30:00.0', '2020-05-27 14:30:00.0', 0, 0, 1, '가끔은 날씨 좋은 날 혼자만 힙한 카페 가지 마시고~ 

강아지와 함께 마음껏 뛰어 놀 수 있는 반려견 카페를 가보시는 것도 좋을 듯 하네요~', '대구 동구 서촌로7길 7-3', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(45, 2, NULL, 1, 10, 2, NULL, NULL, '161커피스튜디오', '2020-05-27 14:31:52.0', '2020-05-27 14:31:52.0', 0, 0, 1, '불빛들이 많아서 감성사진을 찍기 좋았다. 색감도 빈티지해서 불빛의 주황과 아련하게 어울림.', '대구 달성군 현풍읍 비슬로 581', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(46, 2, NULL, 1, 1, 4, NULL, NULL, '노스폴', '2020-05-27 14:36:47.0', '2020-05-27 14:36:47.0', 0, 0, 1, '위치는 반월당역과 중앙로역 사이에 위치해있으며 저는 반월당역에서 내려서 걸어갔습니다.
반월당역 12번 또는 13번 출구로 나가셔서 10분정도 걸어가시면 됩니다!
', '대구 중구 중앙대로 392', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(47, 2, NULL, 1, 1, 6, NULL, NULL, '시즈더데이', '2020-05-27 14:39:51.0', '2020-05-27 14:39:51.0', 1, 0, 1, '스터디 하기도 좋고!
또 하나 더 좋은점은 보드게임도 가능해요^^', '대구 중구 중앙대로 412-26', 0);
INSERT INTO coffeemukka.board
(board_no, board_no2, key_sort_no, user_no, zone_no, theme_no, cafe_no, writing_lock_condition, writing_title, registration_date, update_date, view_number, vote_number, board_del_cdt, writing_content, address, reply_cnt)
VALUES(48, 2, NULL, 1, 6, 6, NULL, NULL, '프리지아', '2020-05-27 14:42:05.0', '2020-05-27 14:42:05.0', 1, 0, 1, '공부하기 좋아요!', '대구 서구 서대구로7길 12', 0);
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
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(176, '/2020/05/27/s_5f5465c1-09d0-4db1-920d-5dd7a10694d5_sample01.PNG', NULL, 3);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(177, '/2020/05/27/s_842d7dc4-cd69-4f80-b4a6-03cba5f1efd7_sample05.PNG', NULL, 4);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(178, '/2020/05/27/s_0e761472-4b77-469a-b2a3-9d774a9e6453_sample06.PNG', NULL, 4);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(179, '/2020/05/27/s_fc95bd3d-725a-4394-84bf-6ed8b5595451_sample07.PNG', NULL, 5);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(180, '/2020/05/27/s_6bbca0dc-da36-425d-b640-55b78ff838e4_sample08.PNG', NULL, 5);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(181, '/2020/05/27/s_2beac757-0317-43ff-8730-46c684c6b914_sample09.PNG', NULL, 6);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(182, '/2020/05/27/s_c58b11e6-8fa9-40b1-a0dd-7d276b316afe_sample10.PNG', NULL, 6);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(183, '/2020/05/27/s_0e0f074f-9ba7-4bc3-b422-b2816d625c28_sample11.PNG', NULL, 6);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(184, '/2020/05/27/s_4b7761d4-34b7-48c9-af56-5cf3daad1378_sample12.PNG', NULL, 7);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(185, '/2020/05/27/s_60d431a4-733c-4b68-8c65-64020b985839_sample13.PNG', NULL, 8);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(186, '/2020/05/27/s_b4275a32-0aad-4a6d-93ff-3d6c5eeda8c6_sample14.PNG', NULL, 8);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(187, '/2020/05/27/s_07cb8b8e-b66b-4dbe-b93e-5a3e82eda600_sample15.PNG', NULL, 8);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(188, '/2020/05/27/s_a4b83b79-c125-4f26-9cb8-ef1130a58adf_sample16.PNG', NULL, 9);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(189, '/2020/05/27/s_df814ff0-7190-4b45-8a84-9a8feff1f941_sample17.PNG', NULL, 9);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(190, '/2020/05/27/s_416cccd3-1250-4024-b31a-1cef6e984f95_sample18.PNG', NULL, 9);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(191, '/2020/05/27/s_84bba61c-f584-4ff1-bea5-0398a2e3a270_sample19.PNG', NULL, 10);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(192, '/2020/05/27/s_6be22cbf-25b9-41c0-887b-754aa9195175_sample20.PNG', NULL, 11);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(193, '/2020/05/27/s_8aad805a-1f9a-499a-a91b-781aefc1ecba_sample21.PNG', NULL, 11);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(194, '/2020/05/27/s_6d1b37b4-d1cd-4124-a66a-ab3bfe8243c2_sample22.PNG', NULL, 12);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(195, '/2020/05/27/s_2fa5abc6-7b2f-4f20-9b1c-75bfcdd1eeeb_sample23.PNG', NULL, 13);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(196, '/2020/05/27/s_f2550a39-8dfc-40a7-bd63-242367cd693b_sample03.PNG', NULL, 14);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(197, '/2020/05/27/s_309bdf17-3f0f-4342-90d1-6506eb757f8a_sample04.PNG', NULL, 15);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(198, '/2020/05/27/s_44f7bcd5-790d-4ea5-be19-3095f7600b2a_sample02.PNG', NULL, 16);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(199, '/2020/05/27/s_989a5188-d1d4-40f5-880c-40b97ee41a49_sample01.jpg', NULL, 17);
INSERT INTO coffeemukka.image
(image_no, image_name, cafe_no, board_no)
VALUES(200, '/2020/05/27/s_e3c7db92-eebf-4e6c-b728-b88ccbf64746_sample02.jpg', NULL, 18);
