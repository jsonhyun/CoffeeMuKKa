-- 커피무까
DROP SCHEMA IF EXISTS CoffeeMuKKa;

-- 커피무까
CREATE SCHEMA CoffeeMuKKa;

-- 카페
CREATE TABLE CoffeeMuKKa.Cafe (
	cafe_no           INT          NOT NULL COMMENT '카페번호', -- 카페번호
	cafe_name         VARCHAR(100) NOT NULL COMMENT '카페이름', -- 카페이름
	theme_no          INT          NOT NULL COMMENT '테마번호', -- 테마번호
	zone_no           INT          NOT NULL COMMENT '지역번호', -- 지역번호
	user_no           INT          NOT NULL COMMENT '회원번호', -- 회원번호
	address           VARCHAR(255) NOT NULL COMMENT '주소', -- 주소
	detail_address    VARCHAR(255) NULL     COMMENT '상세주소', -- 상세주소
	tel               VARCHAR(30)  NULL     COMMENT '전화번호', -- 전화번호
	wkd_opentime      VARCHAR(255) NOT NULL COMMENT '평일영업시간', -- 평일영업시간
	wknd_opentime     VARCHAR(255) NOT NULL COMMENT '주말영업시간', -- 주말영업시간
	closed_day        VARCHAR(255) NULL     COMMENT '휴무일', -- 휴무일
	sns               VARCHAR(255) NULL     COMMENT 'SNS계정', -- SNS계정
	table_number      INTEGER      NULL     COMMENT '테이블수', -- 테이블수
	socket_number     INTEGER      NULL     COMMENT '콘센트수', -- 콘센트수
	toilet_cdt        TINYINT      NULL     COMMENT '화장실 여부', -- 화장실 여부
	mkdessert_cdt     TINYINT      NULL     COMMENT '디저트 제작 여부', -- 디저트 제작 여부
	terras_cdt        TINYINT      NULL     COMMENT '테라스 여부', -- 테라스 여부
	reservation_cdt   TINYINT      NULL     COMMENT '예약룸 여부', -- 예약룸 여부
	wondoo_buy_cdt    TINYINT      NULL     COMMENT '원두구매 가능 여부', -- 원두구매 가능 여부
	book_cdt          TINYINT      NULL     COMMENT '도서보유여부', -- 도서보유여부
	beer_cdt          TINYINT      NULL     COMMENT '술 판매 여부', -- 술 판매 여부
	goods_cdt         TINYINT      NULL     COMMENT '굿즈 판매 여부', -- 굿즈 판매 여부
	wifi_cdt          TINYINT      NULL     COMMENT '와이파이 설치 여부', -- 와이파이 설치 여부
	puppy_cdt         TINYINT      NULL     COMMENT '반려견 동반 가능 여부', -- 반려견 동반 가능 여부
	reserveok_cdt     TINYINT      NULL     COMMENT '예약 가능 여부', -- 예약 가능 여부
	parking_cdt       TINYINT      NULL     COMMENT '주차 공간 여부', -- 주차 공간 여부
	nokids_cdt        TINYINT      NULL     COMMENT '노키즈존 여부', -- 노키즈존 여부
	registration_date TIMESTAMP    NOT NULL DEFAULT now() COMMENT '등록일자', -- 등록일자
	update_date       TIMESTAMP    NOT NULL DEFAULT now() COMMENT '수정일자', -- 수정일자
	view_number       INT          NOT NULL DEFAULT 0 COMMENT '조회수', -- 조회수
	content           TEXT         NULL     COMMENT '내용', -- 내용
	oneline           VARCHAR(255) NOT NULL COMMENT '한줄소개', -- 한줄소개
	vote_number       INT          NOT NULL DEFAULT 0 COMMENT '추천수', -- 추천수
	powerlink_cdt     TINYINT      NULL     COMMENT '파워링크여부', -- 파워링크여부
	cafe_cdt          TINYINT      NOT NULL COMMENT '카페상태', -- 카페상태
	owner_license_no  VARCHAR(255) NOT NULL COMMENT '사업자 등록번호' -- 사업자 등록번호
)
COMMENT '카페';

-- 카페
ALTER TABLE CoffeeMuKKa.Cafe
	ADD CONSTRAINT PK_Cafe -- 카페 기본키
		PRIMARY KEY (
			cafe_no -- 카페번호
		);

ALTER TABLE CoffeeMuKKa.Cafe
	MODIFY COLUMN cafe_no INT NOT NULL AUTO_INCREMENT COMMENT '카페번호';

-- 게시판
CREATE TABLE CoffeeMuKKa.Board (
	board_no               INT          NOT NULL COMMENT '게시글번호', -- 게시글번호
	board_no2              INT          NOT NULL COMMENT '게시판번호', -- 게시판번호
	key_sort_no            INT          NULL     COMMENT '키워드분류번호', -- 키워드분류번호
	user_no                INT          NOT NULL COMMENT '회원번호', -- 회원번호
	zone_no                INT          NULL     COMMENT '지역번호', -- 지역번호
	theme_no               INT          NULL     COMMENT '테마번호', -- 테마번호
	cafe_no                INT          NULL     COMMENT '카페번호', -- 카페번호
	writing_lock_condition TINYINT      NULL     COMMENT '글잠금여부', -- 글잠금여부
	writing_title          VARCHAR(255) NOT NULL COMMENT '글제목', -- 글제목
	registration_date      TIMESTAMP    NOT NULL DEFAULT now() COMMENT '작성일', -- 작성일
	update_date            TIMESTAMP    NOT NULL DEFAULT now() COMMENT '수정일', -- 수정일
	view_number            INTEGER      NOT NULL DEFAULT 0 COMMENT '조회수', -- 조회수
	vote_number            INTEGER      NOT NULL DEFAULT 0 COMMENT '추천수', -- 추천수
	board_del_cdt          TINYINT      NOT NULL DEFAULT 1 COMMENT '삭제여부 판단', -- 삭제여부 판단
	writing_content        LONGTEXT     NULL     COMMENT '글내용', -- 글내용
	address                VARCHAR(255) NULL     COMMENT '주소', -- 주소
	reply_cnt              INTEGER      NULL     DEFAULT 0 COMMENT '댓글수' -- 댓글수
)
COMMENT '게시판';

-- 게시판
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT PK_Board -- 게시판 기본키
		PRIMARY KEY (
			board_no -- 게시글번호
		);

ALTER TABLE CoffeeMuKKa.Board
	MODIFY COLUMN board_no INT NOT NULL AUTO_INCREMENT COMMENT '게시글번호';

-- 상품정보
CREATE TABLE CoffeeMuKKa.Product (
	product_no      INT          NOT NULL COMMENT '상품코드', -- 상품코드
	product_sort    INT          NOT NULL COMMENT '상품분류', -- 상품분류
	product_name    VARCHAR(50)  NOT NULL COMMENT '상품명', -- 상품명
	product_price   INTEGER      NOT NULL COMMENT '상품가격', -- 상품가격
	supplier        INT          NOT NULL COMMENT '공급업체', -- 공급업체
	product_content LONGTEXT     NOT NULL COMMENT '상품설명', -- 상품설명
	product_image   VARCHAR(255) NOT NULL COMMENT '상품이미지', -- 상품이미지
	valid           TIMESTAMP    NOT NULL COMMENT '상품유효기간', -- 상품유효기간
	order_count     INTEGER      NOT NULL COMMENT '판매횟수' -- 판매횟수
)
COMMENT '상품정보';

-- 상품정보
ALTER TABLE CoffeeMuKKa.Product
	ADD CONSTRAINT PK_Product -- 상품정보 기본키
		PRIMARY KEY (
			product_no -- 상품코드
		);

ALTER TABLE CoffeeMuKKa.Product
	MODIFY COLUMN product_no INT NOT NULL AUTO_INCREMENT COMMENT '상품코드';

-- 쿠폰구매
CREATE TABLE CoffeeMuKKa.BuyCoupon (
	buy_no      INT       NOT NULL COMMENT '구매코드', -- 구매코드
	buy_product INT       NOT NULL COMMENT '구매상품', -- 구매상품
	user_no     INT       NOT NULL COMMENT '회원번호', -- 회원번호
	buy_date    TIMESTAMP NOT NULL DEFAULT now() COMMENT '구매일자', -- 구매일자
	validity    TIMESTAMP NOT NULL COMMENT '유효일자', -- 유효일자
	use_cdt     TINYINT   NOT NULL COMMENT '사용여부' -- 사용여부
)
COMMENT '쿠폰구매';

-- 쿠폰구매
ALTER TABLE CoffeeMuKKa.BuyCoupon
	ADD CONSTRAINT PK_BuyCoupon -- 쿠폰구매 기본키
		PRIMARY KEY (
			buy_no -- 구매코드
		);

ALTER TABLE CoffeeMuKKa.BuyCoupon
	MODIFY COLUMN buy_no INT NOT NULL AUTO_INCREMENT COMMENT '구매코드';

-- 회원현황
CREATE TABLE CoffeeMuKKa.Users (
	user_no              INT          NOT NULL COMMENT '회원번호', -- 회원번호
	user_id              VARCHAR(30)  NOT NULL COMMENT '회원아이디', -- 회원아이디
	password             VARCHAR(30)  NOT NULL COMMENT '비밀번호', -- 비밀번호
	name                 VARCHAR(50)  NOT NULL COMMENT '이름', -- 이름
	nick                 VARCHAR(50)  NOT NULL COMMENT '닉네임', -- 닉네임
	gender               TINYINT      NULL     COMMENT '성별', -- 성별
	birthday             TIMESTAMP    NOT NULL COMMENT '생년월일', -- 생년월일
	user_join_date       TIMESTAMP    NOT NULL DEFAULT now() COMMENT '회원가입일자', -- 회원가입일자
	user_leave_condition TINYINT      NULL     COMMENT '회원 탈퇴유무', -- 회원 탈퇴유무
	point                INTEGER      NULL     DEFAULT 0 COMMENT '포인트', -- 포인트
	tel                  VARCHAR(30)  NOT NULL COMMENT '전화번호', -- 전화번호
	address              VARCHAR(255) NOT NULL COMMENT '주소', -- 주소
	detail_address       VARCHAR(255) NULL     COMMENT '상세주소', -- 상세주소
	email                VARCHAR(255) NOT NULL COMMENT '이메일', -- 이메일
	user_type            INT          NOT NULL COMMENT '회원타입', -- 회원타입
	user_grade           INT          NOT NULL COMMENT '회원등급' -- 회원등급
)
COMMENT '회원현황';

-- 회원현황
ALTER TABLE CoffeeMuKKa.Users
	ADD CONSTRAINT PK_Users -- 회원현황 기본키
		PRIMARY KEY (
			user_no -- 회원번호
		);

ALTER TABLE CoffeeMuKKa.Users
	MODIFY COLUMN user_no INT NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 관리자현황
CREATE TABLE CoffeeMuKKa.Admin (
	ano_no           INT          NOT NULL COMMENT '관리자번호', -- 관리자번호
	ano_id           VARCHAR(30)  NOT NULL COMMENT '관리자아이디', -- 관리자아이디
	ano_password     VARCHAR(30)  NOT NULL COMMENT '관리자비밀번호', -- 관리자비밀번호
	ano_image        VARCHAR(255) NOT NULL COMMENT '관리자이미지', -- 관리자이미지
	ano_authority_no INT          NOT NULL COMMENT '관리자권한번호' -- 관리자권한번호
)
COMMENT '관리자현황';

-- 관리자현황
ALTER TABLE CoffeeMuKKa.Admin
	ADD CONSTRAINT PK_Admin -- 관리자현황 기본키
		PRIMARY KEY (
			ano_no -- 관리자번호
		);

ALTER TABLE CoffeeMuKKa.Admin
	MODIFY COLUMN ano_no INT NOT NULL AUTO_INCREMENT COMMENT '관리자번호';

-- 상품분류
CREATE TABLE CoffeeMuKKa.Category (
	sort_no   INT         NOT NULL COMMENT '분류번호', -- 분류번호
	sort_name VARCHAR(50) NOT NULL COMMENT '분류이름' -- 분류이름
)
COMMENT '상품분류';

-- 상품분류
ALTER TABLE CoffeeMuKKa.Category
	ADD CONSTRAINT PK_Category -- 상품분류 기본키
		PRIMARY KEY (
			sort_no -- 분류번호
		);

ALTER TABLE CoffeeMuKKa.Category
	MODIFY COLUMN sort_no INT NOT NULL AUTO_INCREMENT COMMENT '분류번호';

-- 공급업체
CREATE TABLE CoffeeMuKKa.Supplier (
	supplier_no    INT          NOT NULL COMMENT '공급업체번호', -- 공급업체번호
	supplier_name  VARCHAR(50)  NOT NULL COMMENT '공급업체이름', -- 공급업체이름
	supplier_image VARCHAR(255) NOT NULL COMMENT '공급업체이미지' -- 공급업체이미지
)
COMMENT '공급업체';

-- 공급업체
ALTER TABLE CoffeeMuKKa.Supplier
	ADD CONSTRAINT PK_Supplier -- 공급업체 기본키
		PRIMARY KEY (
			supplier_no -- 공급업체번호
		);

ALTER TABLE CoffeeMuKKa.Supplier
	MODIFY COLUMN supplier_no INT NOT NULL AUTO_INCREMENT COMMENT '공급업체번호';

-- 테마분류
CREATE TABLE CoffeeMuKKa.Theme (
	theme_no   INT         NOT NULL COMMENT '테마번호', -- 테마번호
	theme_name VARCHAR(50) NOT NULL COMMENT '테마이름' -- 테마이름
)
COMMENT '테마분류';

-- 테마분류
ALTER TABLE CoffeeMuKKa.Theme
	ADD CONSTRAINT PK_Theme -- 테마분류 기본키
		PRIMARY KEY (
			theme_no -- 테마번호
		);

ALTER TABLE CoffeeMuKKa.Theme
	MODIFY COLUMN theme_no INT NOT NULL AUTO_INCREMENT COMMENT '테마번호';

-- 지역분류
CREATE TABLE CoffeeMuKKa.Zone (
	zone_no   INT         NOT NULL COMMENT '지역번호', -- 지역번호
	zone_name VARCHAR(50) NOT NULL COMMENT '지역이름' -- 지역이름
)
COMMENT '지역분류';

-- 지역분류
ALTER TABLE CoffeeMuKKa.Zone
	ADD CONSTRAINT PK_Zone -- 지역분류 기본키
		PRIMARY KEY (
			zone_no -- 지역번호
		);

ALTER TABLE CoffeeMuKKa.Zone
	MODIFY COLUMN zone_no INT NOT NULL AUTO_INCREMENT COMMENT '지역번호';

-- FAQ
CREATE TABLE CoffeeMuKKa.FAQ (
	faq_no            INT          NOT NULL COMMENT 'FAQ번호', -- FAQ번호
	writing_title     VARCHAR(255) NOT NULL COMMENT '글제목', -- 글제목
	registration_date TIMESTAMP    NOT NULL DEFAULT now() COMMENT '작성일', -- 작성일
	update_date       TIMESTAMP    NOT NULL DEFAULT now() COMMENT '수정일', -- 수정일
	view_number       INTEGER      NOT NULL DEFAULT 0 COMMENT '조회수', -- 조회수
	questian          LONGTEXT     NOT NULL COMMENT '질문', -- 질문
	answer            LONGTEXT     NOT NULL COMMENT '답변', -- 답변
	faq_sort_no       INT          NOT NULL COMMENT 'FAQ분류번호' -- FAQ분류번호
)
COMMENT 'FAQ';

-- FAQ
ALTER TABLE CoffeeMuKKa.FAQ
	ADD CONSTRAINT PK_FAQ -- FAQ 기본키
		PRIMARY KEY (
			faq_no -- FAQ번호
		);

ALTER TABLE CoffeeMuKKa.FAQ
	MODIFY COLUMN faq_no INT NOT NULL AUTO_INCREMENT COMMENT 'FAQ번호';

-- FAQ분류
CREATE TABLE CoffeeMuKKa.FAQCate (
	sort_no   INT         NOT NULL COMMENT '분류번호', -- 분류번호
	sort_name VARCHAR(50) NOT NULL COMMENT '분류이름' -- 분류이름
)
COMMENT 'FAQ분류';

-- FAQ분류
ALTER TABLE CoffeeMuKKa.FAQCate
	ADD CONSTRAINT PK_FAQCate -- FAQ분류 기본키
		PRIMARY KEY (
			sort_no -- 분류번호
		);

ALTER TABLE CoffeeMuKKa.FAQCate
	MODIFY COLUMN sort_no INT NOT NULL AUTO_INCREMENT COMMENT '분류번호';

-- 댓글 테이블
CREATE TABLE CoffeeMuKKa.Reply (
	comment_no        INT       NOT NULL COMMENT '댓글번호', -- 댓글번호
	board_no          INT       NOT NULL COMMENT '게시글번호', -- 게시글번호
	user_no           INT       NOT NULL COMMENT '회원번호', -- 회원번호
	comment_content   TEXT      NOT NULL COMMENT '댓글내용', -- 댓글내용
	registration_date TIMESTAMP NOT NULL DEFAULT now() COMMENT '작성일', -- 작성일
	update_date       TIMESTAMP NOT NULL DEFAULT now() COMMENT '수정일' -- 수정일
)
COMMENT '댓글 테이블';

-- 댓글 테이블
ALTER TABLE CoffeeMuKKa.Reply
	ADD CONSTRAINT PK_Reply -- 댓글 테이블 기본키
		PRIMARY KEY (
			comment_no -- 댓글번호
		);

ALTER TABLE CoffeeMuKKa.Reply
	MODIFY COLUMN comment_no INT NOT NULL AUTO_INCREMENT COMMENT '댓글번호';

-- 게시판 분류
CREATE TABLE CoffeeMuKKa.BoardKinds (
	board_no   INT         NOT NULL COMMENT '게시판번호', -- 게시판번호
	board_name VARCHAR(50) NOT NULL COMMENT '게시판이름' -- 게시판이름
)
COMMENT '게시판 분류';

-- 게시판 분류
ALTER TABLE CoffeeMuKKa.BoardKinds
	ADD CONSTRAINT PK_BoardKinds -- 게시판 분류 기본키
		PRIMARY KEY (
			board_no -- 게시판번호
		);

ALTER TABLE CoffeeMuKKa.BoardKinds
	MODIFY COLUMN board_no INT NOT NULL AUTO_INCREMENT COMMENT '게시판번호';

-- 메뉴 분류
CREATE TABLE CoffeeMuKKa.MenuKinds (
	sort_no   INT         NOT NULL COMMENT '분류번호', -- 분류번호
	sort_name VARCHAR(50) NOT NULL COMMENT '분류이름' -- 분류이름
)
COMMENT '메뉴 분류';

-- 메뉴 분류
ALTER TABLE CoffeeMuKKa.MenuKinds
	ADD CONSTRAINT PK_MenuKinds -- 메뉴 분류 기본키
		PRIMARY KEY (
			sort_no -- 분류번호
		);

ALTER TABLE CoffeeMuKKa.MenuKinds
	MODIFY COLUMN sort_no INT NOT NULL AUTO_INCREMENT COMMENT '분류번호';

-- 메뉴
CREATE TABLE CoffeeMuKKa.Menu (
	menu_no         INT         NOT NULL COMMENT '메뉴번호', -- 메뉴번호
	cafe_no         INT         NOT NULL COMMENT '카페번호', -- 카페번호
	menukinds       INT         NOT NULL COMMENT '메뉴분류', -- 메뉴분류
	menu_name       VARCHAR(50) NOT NULL COMMENT '메뉴이름', -- 메뉴이름
	h_i             TINYINT     NOT NULL COMMENT 'Hot&Iced 가격 차이', -- Hot&Iced 가격 차이
	price           INTEGER     NOT NULL COMMENT '가격', -- 가격
	iced_menu_price INTEGER     NULL     COMMENT '아이스메뉴가격' -- 아이스메뉴가격
)
COMMENT '메뉴';

-- 메뉴
ALTER TABLE CoffeeMuKKa.Menu
	ADD CONSTRAINT PK_Menu -- 메뉴 기본키
		PRIMARY KEY (
			menu_no -- 메뉴번호
		);

ALTER TABLE CoffeeMuKKa.Menu
	MODIFY COLUMN menu_no INT NOT NULL AUTO_INCREMENT COMMENT '메뉴번호';

-- 별점
CREATE TABLE CoffeeMuKKa.Starpoint (
	star_point_no      INT       NOT NULL COMMENT '별점번호', -- 별점번호
	cafe_no            INT       NOT NULL COMMENT '카페번호', -- 카페번호
	theme_no           INT       NOT NULL COMMENT '테마번호', -- 테마번호
	user_no            INT       NOT NULL COMMENT '회원번호', -- 회원번호
	star_point         INTEGER   NOT NULL COMMENT '별점', -- 별점
	star_point_comment TEXT      NULL     COMMENT '별점댓글', -- 별점댓글
	registration_date  TIMESTAMP NOT NULL DEFAULT now() COMMENT '등록일자', -- 등록일자
	update_date        TIMESTAMP NOT NULL DEFAULT now() COMMENT '수정일자' -- 수정일자
)
COMMENT '별점';

-- 별점
ALTER TABLE CoffeeMuKKa.Starpoint
	ADD CONSTRAINT PK_Starpoint -- 별점 기본키
		PRIMARY KEY (
			star_point_no -- 별점번호
		);

ALTER TABLE CoffeeMuKKa.Starpoint
	MODIFY COLUMN star_point_no INT NOT NULL AUTO_INCREMENT COMMENT '별점번호';

-- 회원타입
CREATE TABLE CoffeeMuKKa.Type (
	user_type      INT         NOT NULL COMMENT '회원타입', -- 회원타입
	user_type_name VARCHAR(50) NOT NULL COMMENT '회원타입이름' -- 회원타입이름
)
COMMENT '회원타입';

-- 회원타입
ALTER TABLE CoffeeMuKKa.Type
	ADD CONSTRAINT PK_Type -- 회원타입 기본키
		PRIMARY KEY (
			user_type -- 회원타입
		);

ALTER TABLE CoffeeMuKKa.Type
	MODIFY COLUMN user_type INT NOT NULL AUTO_INCREMENT COMMENT '회원타입';

-- 회원등급
CREATE TABLE CoffeeMuKKa.Grade (
	user_grade       INT          NOT NULL COMMENT '회원등급', -- 회원등급
	user_grade_name  VARCHAR(50)  NOT NULL COMMENT '회원등급이름', -- 회원등급이름
	user_grade_image VARCHAR(255) NOT NULL COMMENT '회원등급이미지' -- 회원등급이미지
)
COMMENT '회원등급';

-- 회원등급
ALTER TABLE CoffeeMuKKa.Grade
	ADD CONSTRAINT PK_Grade -- 회원등급 기본키
		PRIMARY KEY (
			user_grade -- 회원등급
		);

ALTER TABLE CoffeeMuKKa.Grade
	MODIFY COLUMN user_grade INT NOT NULL AUTO_INCREMENT COMMENT '회원등급';

-- 관리자권한
CREATE TABLE CoffeeMuKKa.Authority (
	ano_authority_no   INT         NOT NULL COMMENT '관리자권한번호', -- 관리자권한번호
	ano_authority_name VARCHAR(50) NOT NULL COMMENT '관리자권한이름' -- 관리자권한이름
)
COMMENT '관리자권한';

-- 관리자권한
ALTER TABLE CoffeeMuKKa.Authority
	ADD CONSTRAINT PK_Authority -- 관리자권한 기본키
		PRIMARY KEY (
			ano_authority_no -- 관리자권한번호
		);

ALTER TABLE CoffeeMuKKa.Authority
	MODIFY COLUMN ano_authority_no INT NOT NULL AUTO_INCREMENT COMMENT '관리자권한번호';

-- 키워드분류
CREATE TABLE CoffeeMuKKa.Keywordcate (
	key_sort_no INT         NOT NULL COMMENT '키워드분류번호', -- 키워드분류번호
	board_no    INT         NOT NULL COMMENT '게시판번호', -- 게시판번호
	key_name    VARCHAR(50) NOT NULL COMMENT '키워드이름' -- 키워드이름
)
COMMENT '키워드분류';

-- 키워드분류
ALTER TABLE CoffeeMuKKa.Keywordcate
	ADD CONSTRAINT PK_Keywordcate -- 키워드분류 기본키
		PRIMARY KEY (
			key_sort_no -- 키워드분류번호
		);

ALTER TABLE CoffeeMuKKa.Keywordcate
	MODIFY COLUMN key_sort_no INT NOT NULL AUTO_INCREMENT COMMENT '키워드분류번호';

-- 위시리스트
CREATE TABLE CoffeeMuKKa.Wishlist (
	wish_no INT NOT NULL COMMENT '위시번호', -- 위시번호
	cafe_no INT NOT NULL COMMENT '카페번호', -- 카페번호
	user_no INT NOT NULL COMMENT '회원번호' -- 회원번호
)
COMMENT '위시리스트';

-- 위시리스트
ALTER TABLE CoffeeMuKKa.Wishlist
	ADD CONSTRAINT PK_Wishlist -- 위시리스트 기본키
		PRIMARY KEY (
			wish_no -- 위시번호
		);

ALTER TABLE CoffeeMuKKa.Wishlist
	MODIFY COLUMN wish_no INT NOT NULL AUTO_INCREMENT COMMENT '위시번호';

-- 이미지
CREATE TABLE CoffeeMuKKa.Image (
	image_no   INT          NOT NULL COMMENT '이미지번호', -- 이미지번호
	image_name VARCHAR(255) NOT NULL COMMENT '이미지이름', -- 이미지이름
	cafe_no    INT          NULL     COMMENT '카페번호', -- 카페번호
	board_no   INT          NULL     COMMENT '게시글번호' -- 게시글번호
)
COMMENT '이미지';

-- 이미지
ALTER TABLE CoffeeMuKKa.Image
	ADD CONSTRAINT PK_Image -- 이미지 기본키
		PRIMARY KEY (
			image_no -- 이미지번호
		);

ALTER TABLE CoffeeMuKKa.Image
	MODIFY COLUMN image_no INT NOT NULL AUTO_INCREMENT COMMENT '이미지번호';

-- 추천리스트
CREATE TABLE CoffeeMuKKa.Vote (
	vote_no   INT       NOT NULL COMMENT '추천번호', -- 추천번호
	board_no  INT       NOT NULL COMMENT '게시글번호', -- 게시글번호
	user_no   INT       NOT NULL COMMENT '회원번호', -- 회원번호
	vote_date TIMESTAMP NOT NULL COMMENT '추천일자' -- 추천일자
)
COMMENT '추천리스트';

-- 추천리스트
ALTER TABLE CoffeeMuKKa.Vote
	ADD CONSTRAINT PK_Vote -- 추천리스트 기본키
		PRIMARY KEY (
			vote_no -- 추천번호
		);

ALTER TABLE CoffeeMuKKa.Vote
	MODIFY COLUMN vote_no INT NOT NULL AUTO_INCREMENT COMMENT '추천번호';

-- 파워링크
CREATE TABLE CoffeeMuKKa.PowerLink (
	pow_no    INT       NOT NULL COMMENT '파워링크번호', -- 파워링크번호
	cafe_no   INT       NOT NULL COMMENT '카페번호', -- 카페번호
	reg_date  TIMESTAMP NOT NULL DEFAULT now() COMMENT '등록일자', -- 등록일자
	post_date TIMESTAMP NOT NULL COMMENT '게시일자', -- 게시일자
	pow_cdt   TINYINT   NOT NULL COMMENT '파워링크여부' -- 파워링크여부
)
COMMENT '파워링크';

-- 파워링크
ALTER TABLE CoffeeMuKKa.PowerLink
	ADD CONSTRAINT PK_PowerLink -- 파워링크 기본키
		PRIMARY KEY (
			pow_no -- 파워링크번호
		);

ALTER TABLE CoffeeMuKKa.PowerLink
	MODIFY COLUMN pow_no INT NOT NULL AUTO_INCREMENT COMMENT '파워링크번호';

-- 사업자등록번호 조회
CREATE TABLE CoffeeMuKKa.License (
	no         INT          NOT NULL COMMENT '번호', -- 번호
	owner_name VARCHAR(50)  NOT NULL COMMENT '사업자이름', -- 사업자이름
	cafe_name  VARCHAR(50)  NOT NULL COMMENT '카페이름', -- 카페이름
	owner_no   VARCHAR(255) NOT NULL COMMENT '사업자번호' -- 사업자번호
)
COMMENT '사업자등록번호 조회';

-- 사업자등록번호 조회
ALTER TABLE CoffeeMuKKa.License
	ADD CONSTRAINT PK_License -- 사업자등록번호 조회 기본키
		PRIMARY KEY (
			no -- 번호
		);

-- 카페
ALTER TABLE CoffeeMuKKa.Cafe
	ADD CONSTRAINT FK_Theme_TO_Cafe -- 테마분류 -> 카페
		FOREIGN KEY (
			theme_no -- 테마번호
		)
		REFERENCES CoffeeMuKKa.Theme ( -- 테마분류
			theme_no -- 테마번호
		);

-- 카페
ALTER TABLE CoffeeMuKKa.Cafe
	ADD CONSTRAINT FK_Zone_TO_Cafe -- 지역분류 -> 카페
		FOREIGN KEY (
			zone_no -- 지역번호
		)
		REFERENCES CoffeeMuKKa.Zone ( -- 지역분류
			zone_no -- 지역번호
		);

-- 카페
ALTER TABLE CoffeeMuKKa.Cafe
	ADD CONSTRAINT FK_Users_TO_Cafe -- 회원현황 -> 카페
		FOREIGN KEY (
			user_no -- 회원번호
		)
		REFERENCES CoffeeMuKKa.Users ( -- 회원현황
			user_no -- 회원번호
		);

-- 게시판
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_BoardKinds_TO_Board -- 게시판 분류 -> 게시판
		FOREIGN KEY (
			board_no2 -- 게시판번호
		)
		REFERENCES CoffeeMuKKa.BoardKinds ( -- 게시판 분류
			board_no -- 게시판번호
		);

-- 게시판
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Zone_TO_Board -- 지역분류 -> 게시판
		FOREIGN KEY (
			zone_no -- 지역번호
		)
		REFERENCES CoffeeMuKKa.Zone ( -- 지역분류
			zone_no -- 지역번호
		);

-- 게시판
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Theme_TO_Board -- 테마분류 -> 게시판
		FOREIGN KEY (
			theme_no -- 테마번호
		)
		REFERENCES CoffeeMuKKa.Theme ( -- 테마분류
			theme_no -- 테마번호
		);

-- 게시판
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Users_TO_Board -- 회원현황 -> 게시판
		FOREIGN KEY (
			user_no -- 회원번호
		)
		REFERENCES CoffeeMuKKa.Users ( -- 회원현황
			user_no -- 회원번호
		);

-- 게시판
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Keywordcate_TO_Board -- 키워드분류 -> 게시판
		FOREIGN KEY (
			key_sort_no -- 키워드분류번호
		)
		REFERENCES CoffeeMuKKa.Keywordcate ( -- 키워드분류
			key_sort_no -- 키워드분류번호
		);

-- 게시판
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Cafe_TO_Board -- 카페 -> 게시판
		FOREIGN KEY (
			cafe_no -- 카페번호
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- 카페
			cafe_no -- 카페번호
		);

-- 상품정보
ALTER TABLE CoffeeMuKKa.Product
	ADD CONSTRAINT FK_Category_TO_Product -- 상품분류 -> 상품정보
		FOREIGN KEY (
			product_sort -- 상품분류
		)
		REFERENCES CoffeeMuKKa.Category ( -- 상품분류
			sort_no -- 분류번호
		);

-- 상품정보
ALTER TABLE CoffeeMuKKa.Product
	ADD CONSTRAINT FK_Supplier_TO_Product -- 공급업체 -> 상품정보
		FOREIGN KEY (
			supplier -- 공급업체
		)
		REFERENCES CoffeeMuKKa.Supplier ( -- 공급업체
			supplier_no -- 공급업체번호
		);

-- 쿠폰구매
ALTER TABLE CoffeeMuKKa.BuyCoupon
	ADD CONSTRAINT FK_Product_TO_BuyCoupon -- 상품정보 -> 쿠폰구매
		FOREIGN KEY (
			buy_product -- 구매상품
		)
		REFERENCES CoffeeMuKKa.Product ( -- 상품정보
			product_no -- 상품코드
		);

-- 쿠폰구매
ALTER TABLE CoffeeMuKKa.BuyCoupon
	ADD CONSTRAINT FK_Users_TO_BuyCoupon -- 회원현황 -> 쿠폰구매
		FOREIGN KEY (
			user_no -- 회원번호
		)
		REFERENCES CoffeeMuKKa.Users ( -- 회원현황
			user_no -- 회원번호
		);

-- 회원현황
ALTER TABLE CoffeeMuKKa.Users
	ADD CONSTRAINT FK_Type_TO_Users -- 회원타입 -> 회원현황
		FOREIGN KEY (
			user_type -- 회원타입
		)
		REFERENCES CoffeeMuKKa.Type ( -- 회원타입
			user_type -- 회원타입
		);

-- 회원현황
ALTER TABLE CoffeeMuKKa.Users
	ADD CONSTRAINT FK_Grade_TO_Users -- 회원등급 -> 회원현황
		FOREIGN KEY (
			user_grade -- 회원등급
		)
		REFERENCES CoffeeMuKKa.Grade ( -- 회원등급
			user_grade -- 회원등급
		);

-- 관리자현황
ALTER TABLE CoffeeMuKKa.Admin
	ADD CONSTRAINT FK_Authority_TO_Admin -- 관리자권한 -> 관리자현황
		FOREIGN KEY (
			ano_authority_no -- 관리자권한번호
		)
		REFERENCES CoffeeMuKKa.Authority ( -- 관리자권한
			ano_authority_no -- 관리자권한번호
		);

-- FAQ
ALTER TABLE CoffeeMuKKa.FAQ
	ADD CONSTRAINT FK_FAQCate_TO_FAQ -- FAQ분류 -> FAQ
		FOREIGN KEY (
			faq_sort_no -- FAQ분류번호
		)
		REFERENCES CoffeeMuKKa.FAQCate ( -- FAQ분류
			sort_no -- 분류번호
		);

-- 댓글 테이블
ALTER TABLE CoffeeMuKKa.Reply
	ADD CONSTRAINT FK_Board_TO_Reply -- 게시판 -> 댓글 테이블
		FOREIGN KEY (
			board_no -- 게시글번호
		)
		REFERENCES CoffeeMuKKa.Board ( -- 게시판
			board_no -- 게시글번호
		);

-- 댓글 테이블
ALTER TABLE CoffeeMuKKa.Reply
	ADD CONSTRAINT FK_Users_TO_Reply -- 회원현황 -> 댓글 테이블
		FOREIGN KEY (
			user_no -- 회원번호
		)
		REFERENCES CoffeeMuKKa.Users ( -- 회원현황
			user_no -- 회원번호
		);

-- 메뉴
ALTER TABLE CoffeeMuKKa.Menu
	ADD CONSTRAINT FK_MenuKinds_TO_Menu -- 메뉴 분류 -> 메뉴
		FOREIGN KEY (
			menukinds -- 메뉴분류
		)
		REFERENCES CoffeeMuKKa.MenuKinds ( -- 메뉴 분류
			sort_no -- 분류번호
		);

-- 메뉴
ALTER TABLE CoffeeMuKKa.Menu
	ADD CONSTRAINT FK_Cafe_TO_Menu -- 카페 -> 메뉴
		FOREIGN KEY (
			cafe_no -- 카페번호
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- 카페
			cafe_no -- 카페번호
		);

-- 별점
ALTER TABLE CoffeeMuKKa.Starpoint
	ADD CONSTRAINT FK_Cafe_TO_Starpoint -- 카페 -> 별점
		FOREIGN KEY (
			cafe_no -- 카페번호
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- 카페
			cafe_no -- 카페번호
		);

-- 별점
ALTER TABLE CoffeeMuKKa.Starpoint
	ADD CONSTRAINT FK_Theme_TO_Starpoint -- 테마분류 -> 별점
		FOREIGN KEY (
			theme_no -- 테마번호
		)
		REFERENCES CoffeeMuKKa.Theme ( -- 테마분류
			theme_no -- 테마번호
		);

-- 별점
ALTER TABLE CoffeeMuKKa.Starpoint
	ADD CONSTRAINT FK_Users_TO_Starpoint -- 회원현황 -> 별점
		FOREIGN KEY (
			user_no -- 회원번호
		)
		REFERENCES CoffeeMuKKa.Users ( -- 회원현황
			user_no -- 회원번호
		);

-- 키워드분류
ALTER TABLE CoffeeMuKKa.Keywordcate
	ADD CONSTRAINT FK_BoardKinds_TO_Keywordcate -- 게시판 분류 -> 키워드분류
		FOREIGN KEY (
			board_no -- 게시판번호
		)
		REFERENCES CoffeeMuKKa.BoardKinds ( -- 게시판 분류
			board_no -- 게시판번호
		);

-- 위시리스트
ALTER TABLE CoffeeMuKKa.Wishlist
	ADD CONSTRAINT FK_Users_TO_Wishlist -- 회원현황 -> 위시리스트
		FOREIGN KEY (
			user_no -- 회원번호
		)
		REFERENCES CoffeeMuKKa.Users ( -- 회원현황
			user_no -- 회원번호
		);

-- 위시리스트
ALTER TABLE CoffeeMuKKa.Wishlist
	ADD CONSTRAINT FK_Cafe_TO_Wishlist -- 카페 -> 위시리스트
		FOREIGN KEY (
			cafe_no -- 카페번호
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- 카페
			cafe_no -- 카페번호
		);

-- 이미지
ALTER TABLE CoffeeMuKKa.Image
	ADD CONSTRAINT FK_Board_TO_Image -- 게시판 -> 이미지
		FOREIGN KEY (
			board_no -- 게시글번호
		)
		REFERENCES CoffeeMuKKa.Board ( -- 게시판
			board_no -- 게시글번호
		);

-- 이미지
ALTER TABLE CoffeeMuKKa.Image
	ADD CONSTRAINT FK_Cafe_TO_Image -- 카페 -> 이미지
		FOREIGN KEY (
			cafe_no -- 카페번호
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- 카페
			cafe_no -- 카페번호
		);

-- 추천리스트
ALTER TABLE CoffeeMuKKa.Vote
	ADD CONSTRAINT FK_Board_TO_Vote -- 게시판 -> 추천리스트
		FOREIGN KEY (
			board_no -- 게시글번호
		)
		REFERENCES CoffeeMuKKa.Board ( -- 게시판
			board_no -- 게시글번호
		);

-- 추천리스트
ALTER TABLE CoffeeMuKKa.Vote
	ADD CONSTRAINT FK_Users_TO_Vote -- 회원현황 -> 추천리스트
		FOREIGN KEY (
			user_no -- 회원번호
		)
		REFERENCES CoffeeMuKKa.Users ( -- 회원현황
			user_no -- 회원번호
		);

-- 파워링크
ALTER TABLE CoffeeMuKKa.PowerLink
	ADD CONSTRAINT FK_Cafe_TO_PowerLink -- 카페 -> 파워링크
		FOREIGN KEY (
			cafe_no -- 카페번호
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- 카페
			cafe_no -- 카페번호
		);