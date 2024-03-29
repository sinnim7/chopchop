-- 회원
DROP TABLE IF EXISTS member RESTRICT;

-- 반려동물 정보
DROP TABLE IF EXISTS pet RESTRICT;

-- 상품
DROP TABLE IF EXISTS product RESTRICT;

-- 레시피
DROP TABLE IF EXISTS recipe RESTRICT;

-- 레시피댓글
DROP TABLE IF EXISTS recipe_comment RESTRICT;

-- 후기
DROP TABLE IF EXISTS review RESTRICT;

-- 즐겨찾기
DROP TABLE IF EXISTS bookmark RESTRICT;

-- 공지
DROP TABLE IF EXISTS notice RESTRICT;

-- 이벤트
DROP TABLE IF EXISTS event RESTRICT;

-- 레시피랭킹
DROP TABLE IF EXISTS recipe_ranking RESTRICT;

-- 찹톡
DROP TABLE IF EXISTS gallery RESTRICT;

-- 장바구니
DROP TABLE IF EXISTS cart RESTRICT;

-- 주문
DROP TABLE IF EXISTS store_order RESTRICT;

-- 구독회원
DROP TABLE IF EXISTS subscriptior RESTRICT;

-- 이벤트사진
DROP TABLE IF EXISTS photo RESTRICT;

-- 후기사진
DROP TABLE IF EXISTS review_photo RESTRICT;

-- 후기댓글
DROP TABLE IF EXISTS review_comment RESTRICT;

-- 찹톡사진
DROP TABLE IF EXISTS gallery_photo RESTRICT;

-- 동물분류
DROP TABLE IF EXISTS category RESTRICT;

-- 동물품종
DROP TABLE IF EXISTS breed RESTRICT;

-- 반려동물사진
DROP TABLE IF EXISTS pet_photo RESTRICT;

-- 주문상품
DROP TABLE IF EXISTS order_product RESTRICT;

-- 회원랭킹
DROP TABLE IF EXISTS member_ranking RESTRICT;

-- 조리과정
DROP TABLE IF EXISTS cooking RESTRICT;

-- 재료
DROP TABLE IF EXISTS ingredient RESTRICT;

-- 레시피좋아요
DROP TABLE IF EXISTS recipe_like RESTRICT;

-- 상품사진
DROP TABLE IF EXISTS store_photo RESTRICT;

-- 상품문의
DROP TABLE IF EXISTS product_comment RESTRICT;

-- 회원
CREATE TABLE member (
  member_id      INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  password       VARCHAR(255) NOT NULL COMMENT '비밀번호', -- 비밀번호
  email          VARCHAR(40)  NOT NULL COMMENT '이메일', -- 이메일
  photo          VARCHAR(50)  NULL     COMMENT '회원사진', -- 회원사진
  nickname       VARCHAR(8)   NOT NULL COMMENT '닉네임', -- 닉네임
  tel            VARCHAR(30)  NOT NULL COMMENT '전화번호', -- 전화번호
  post_no        VARCHAR(255) NULL     COMMENT '우편번호', -- 우편번호
  base_address   VARCHAR(255) NULL     COMMENT '기본주소', -- 기본주소
  detail_address VARCHAR(255) NULL     COMMENT '상세주소', -- 상세주소
  grade          INTEGER      NOT NULL DEFAULT 1 COMMENT '등급' -- 등급
)
COMMENT '회원';

-- 회원
ALTER TABLE member
  ADD CONSTRAINT PK_member -- 회원 기본키
    PRIMARY KEY (
      member_id -- 회원번호
    );

-- 회원 유니크 인덱스
CREATE UNIQUE INDEX UIX_member
  ON member ( -- 회원
    email ASC,    -- 이메일
    nickname ASC  -- 닉네임
  );

ALTER TABLE member
  MODIFY COLUMN member_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 반려동물 정보
CREATE TABLE pet (
  pet_id       INTEGER      NOT NULL COMMENT '반려동물 번호', -- 반려동물 번호
  member_id    INTEGER      NOT NULL COMMENT '회원 번호', -- 회원 번호
  breed_id     INTEGER      NULL     COMMENT '동물품종번호', -- 동물품종번호
  name         VARCHAR(50)  NOT NULL COMMENT '이름', -- 이름
  created_date DATE         NOT NULL DEFAULT now() COMMENT '등록일', -- 등록일
  register_no  VARCHAR(255) NULL     COMMENT '등록번호' -- 등록번호
)
COMMENT '반려동물 정보';

-- 반려동물 정보
ALTER TABLE pet
  ADD CONSTRAINT PK_pet -- 반려동물 정보 기본키
    PRIMARY KEY (
      pet_id -- 반려동물 번호
    );

-- 반려동물 정보 유니크 인덱스
CREATE UNIQUE INDEX UIX_pet
  ON pet ( -- 반려동물 정보
    register_no ASC -- 등록번호
  );

ALTER TABLE pet
  MODIFY COLUMN pet_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '반려동물 번호';

-- 상품
CREATE TABLE product (
  product_id INTEGER     NOT NULL COMMENT '상품 번호', -- 상품 번호
  title      VARCHAR(50) NOT NULL COMMENT '이름', -- 이름
  price      INTEGER     NOT NULL COMMENT '가격', -- 가격
  detail     TEXT        NOT NULL COMMENT '상세', -- 상세
  stock      INTEGER     NOT NULL COMMENT '재고', -- 재고
  discount   INTEGER     NOT NULL COMMENT '할인률', -- 할인률
  view_count INTEGER     NOT NULL DEFAULT 0 COMMENT '조회수', -- 조회수
  category   VARCHAR(50) NOT NULL COMMENT '카테고리' -- 카테고리
)
COMMENT '상품';

-- 상품
ALTER TABLE product
  ADD CONSTRAINT PK_product -- 상품 기본키
    PRIMARY KEY (
      product_id -- 상품 번호
    );

ALTER TABLE product
  MODIFY COLUMN product_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '상품 번호';

-- 레시피
CREATE TABLE recipe (
  recipe_id    INTEGER      NOT NULL COMMENT '레시피 번호', -- 레시피 번호
  member_id    INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  title        VARCHAR(255) NOT NULL COMMENT '이름', -- 이름
  created_date DATE         NOT NULL DEFAULT now() COMMENT '작성일', -- 작성일
  view_count   INTEGER      NOT NULL DEFAULT 0 COMMENT '조회수', -- 조회수
  content      TEXT         NOT NULL COMMENT '내용', -- 내용
  thumbnail    VARCHAR(50)  NOT NULL COMMENT '대표사진', -- 대표사진
  category     VARCHAR(255) NOT NULL COMMENT '카테고리', -- 카테고리
  tag          VARCHAR(255) NULL     COMMENT '태그', -- 태그
  other_info   VARCHAR(255) NULL     COMMENT '기타정보', -- 기타정보
  scrap        INTEGER      NULL     COMMENT '스크랩' -- 스크랩
)
COMMENT '레시피';

-- 레시피
ALTER TABLE recipe
  ADD CONSTRAINT PK_recipe -- 레시피 기본키
    PRIMARY KEY (
      recipe_id -- 레시피 번호
    );

ALTER TABLE recipe
  MODIFY COLUMN recipe_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '레시피 번호';

-- 레시피댓글
CREATE TABLE recipe_comment (
  comment_id   INTEGER NOT NULL COMMENT '레시피댓글번호', -- 레시피댓글번호
  recipe_id    INTEGER NOT NULL COMMENT '레시피 번호', -- 레시피 번호
  member_id    INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  content      TEXT    NOT NULL COMMENT '댓글 내용', -- 댓글 내용
  created_date DATE    NOT NULL DEFAULT now() COMMENT '작성일' -- 작성일
)
COMMENT '레시피댓글';

-- 레시피댓글
ALTER TABLE recipe_comment
  ADD CONSTRAINT PK_recipe_comment -- 레시피댓글 기본키
    PRIMARY KEY (
      comment_id -- 레시피댓글번호
    );

ALTER TABLE recipe_comment
  MODIFY COLUMN comment_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '레시피댓글번호';

-- 후기
CREATE TABLE review (
  review_id    INTEGER NOT NULL COMMENT '후기번호', -- 후기번호
  recipe_id    INTEGER NOT NULL COMMENT '레시피 번호', -- 레시피 번호
  member_id    INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  content      TEXT    NOT NULL COMMENT '내용', -- 내용
  created_date DATE    NOT NULL DEFAULT now() COMMENT '작성일' -- 작성일
)
COMMENT '후기';

-- 후기
ALTER TABLE review
  ADD CONSTRAINT PK_review -- 후기 기본키
    PRIMARY KEY (
      review_id -- 후기번호
    );

ALTER TABLE review
  MODIFY COLUMN review_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '후기번호';

-- 즐겨찾기
CREATE TABLE bookmark (
  recipe_id    INTEGER NOT NULL COMMENT '레시피 번호', -- 레시피 번호
  member_id    INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  created_date DATE    NOT NULL DEFAULT now() COMMENT '등록일' -- 등록일
)
COMMENT '즐겨찾기';

-- 즐겨찾기
ALTER TABLE bookmark
  ADD CONSTRAINT PK_bookmark -- 즐겨찾기 기본키
    PRIMARY KEY (
      recipe_id, -- 레시피 번호
      member_id  -- 회원번호
    );

-- 공지
CREATE TABLE notice (
  notice_id    INTEGER     NOT NULL COMMENT '공지번호', -- 공지번호
  title        VARCHAR(50) NOT NULL COMMENT '공지제목', -- 공지제목
  content      TEXT        NOT NULL COMMENT '공지내용', -- 공지내용
  created_date DATE        NOT NULL DEFAULT now() COMMENT '작성일', -- 작성일
  view_count   INTEGER     NOT NULL DEFAULT 0 COMMENT '조회수' -- 조회수
)
COMMENT '공지';

-- 공지
ALTER TABLE notice
  ADD CONSTRAINT PK_notice -- 공지 기본키
    PRIMARY KEY (
      notice_id -- 공지번호
    );

ALTER TABLE notice
  MODIFY COLUMN notice_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '공지번호';

-- 이벤트
CREATE TABLE event (
  event_id     INTEGER     NOT NULL COMMENT '이벤트 번호', -- 이벤트 번호
  title        VARCHAR(50) NOT NULL COMMENT '이벤트제목', -- 이벤트제목
  content      TEXT        NOT NULL COMMENT '이벤트내용', -- 이벤트내용
  start_date   CHAR(8)     NOT NULL COMMENT '시작일', -- 시작일
  end_date     CHAR(8)     NULL     COMMENT '종료일', -- 종료일
  created_date DATE        NOT NULL DEFAULT now() COMMENT '작성일', -- 작성일
  view_count   INTEGER     NOT NULL DEFAULT 0 COMMENT '조회수' -- 조회수
)
COMMENT '이벤트';

-- 이벤트
ALTER TABLE event
  ADD CONSTRAINT PK_event -- 이벤트 기본키
    PRIMARY KEY (
      event_id -- 이벤트 번호
    );

ALTER TABLE event
  MODIFY COLUMN event_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '이벤트 번호';

-- 레시피랭킹
CREATE TABLE recipe_ranking (
  recipe_raking_id INTEGER NOT NULL COMMENT '레시피랭킹번호', -- 레시피랭킹번호
  recipe_id        INTEGER NOT NULL COMMENT '레시피 번호', -- 레시피 번호
  date             DATE    NOT NULL COMMENT '년월', -- 년월
  week             INTEGER NOT NULL COMMENT '주차', -- 주차
  rank             INTEGER NOT NULL COMMENT '등수' -- 등수
)
COMMENT '레시피랭킹';

-- 레시피랭킹
ALTER TABLE recipe_ranking
  ADD CONSTRAINT PK_recipe_ranking -- 레시피랭킹 기본키
    PRIMARY KEY (
      recipe_raking_id -- 레시피랭킹번호
    );

-- 레시피랭킹 유니크 인덱스
CREATE UNIQUE INDEX UIX_recipe_ranking
  ON recipe_ranking ( -- 레시피랭킹
    date ASC, -- 년월
    week ASC, -- 주차
    rank ASC  -- 등수
  );

-- 레시피랭킹 유니크 인덱스2
CREATE UNIQUE INDEX UIX_recipe_ranking2
  ON recipe_ranking ( -- 레시피랭킹
    date ASC,      -- 년월
    week ASC,      -- 주차
    rank ASC,      -- 등수
    recipe_id ASC  -- 레시피 번호
  );

ALTER TABLE recipe_ranking
  MODIFY COLUMN recipe_raking_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '레시피랭킹번호';

-- 찹톡
CREATE TABLE gallery (
  gallery_id   INTEGER NOT NULL COMMENT '찹톡 번호', -- 찹톡 번호
  member_id    INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  content      TEXT    NOT NULL COMMENT '내용', -- 내용
  view_count   INTEGER NOT NULL DEFAULT 0 COMMENT '조회수', -- 조회수
  created_date DATE    NOT NULL DEFAULT now() COMMENT '작성일' -- 작성일
)
COMMENT '찹톡';

-- 찹톡
ALTER TABLE gallery
  ADD CONSTRAINT PK_gallery -- 찹톡 기본키
    PRIMARY KEY (
      gallery_id -- 찹톡 번호
    );

ALTER TABLE gallery
  MODIFY COLUMN gallery_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '찹톡 번호';

-- 장바구니
CREATE TABLE cart (
  member_id    INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  product_id   INTEGER NOT NULL COMMENT '상품 번호', -- 상품 번호
  quantity     INTEGER NOT NULL DEFAULT 1 COMMENT '수량', -- 수량
  created_date DATE    NOT NULL DEFAULT now() COMMENT '등록일' -- 등록일
)
COMMENT '장바구니';

-- 장바구니
ALTER TABLE cart
  ADD CONSTRAINT PK_cart -- 장바구니 기본키
    PRIMARY KEY (
      member_id,  -- 회원번호
      product_id  -- 상품 번호
    );

-- 주문
CREATE TABLE store_order (
  order_id       INTEGER      NOT NULL COMMENT '주문번호', -- 주문번호
  member_id      INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
  post_no        VARCHAR(255) NOT NULL COMMENT '배송지우편번호', -- 배송지우편번호
  base_address   VARCHAR(255) NOT NULL COMMENT '배송지기본주소', -- 배송지기본주소
  detail_address VARCHAR(255) NOT NULL COMMENT '배송지상세주소', -- 배송지상세주소
  payment_date   DATE         NOT NULL DEFAULT now() COMMENT '주문일', -- 주문일
  payment_method VARCHAR(255) NOT NULL COMMENT '결제수단', -- 결제수단
  ship_date      VARCHAR(255) NOT NULL COMMENT '상태', -- 상태
  invoice        VARCHAR(255) NULL     COMMENT '운송장번호' -- 운송장번호
)
COMMENT '주문';

-- 주문
ALTER TABLE store_order
  ADD CONSTRAINT PK_store_order -- 주문 기본키
    PRIMARY KEY (
      order_id -- 주문번호
    );

-- 주문 유니크 인덱스
CREATE UNIQUE INDEX UIX_store_order
  ON store_order ( -- 주문
    invoice ASC -- 운송장번호
  );

ALTER TABLE store_order
  MODIFY COLUMN order_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '주문번호';

-- 구독회원
CREATE TABLE subscriptior (
  chef   INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  viewer INTEGER NOT NULL COMMENT '구독자' -- 구독자
)
COMMENT '구독회원';

-- 구독회원
ALTER TABLE subscriptior
  ADD CONSTRAINT PK_subscriptior -- 구독회원 기본키
    PRIMARY KEY (
      chef,   -- 회원번호
      viewer  -- 구독자
    );

-- 이벤트사진
CREATE TABLE photo (
  photo_id  INTEGER     NOT NULL COMMENT '이벤트사진번호', -- 이벤트사진번호
  event_id  INTEGER     NOT NULL COMMENT '이벤트 번호', -- 이벤트 번호
  file_path VARCHAR(50) NOT NULL COMMENT '파일 경로' -- 파일 경로
)
COMMENT '이벤트사진';

-- 이벤트사진
ALTER TABLE photo
  ADD CONSTRAINT PK_photo -- 이벤트사진 기본키
    PRIMARY KEY (
      photo_id -- 이벤트사진번호
    );

ALTER TABLE photo
  MODIFY COLUMN photo_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '이벤트사진번호';

-- 후기사진
CREATE TABLE review_photo (
  photo_id  INTEGER     NOT NULL COMMENT '사진 번호', -- 사진 번호
  review_id INTEGER     NOT NULL COMMENT '후기번호', -- 후기번호
  file_path VARCHAR(50) NOT NULL COMMENT '파일 경로' -- 파일 경로
)
COMMENT '후기사진';

-- 후기사진
ALTER TABLE review_photo
  ADD CONSTRAINT PK_review_photo -- 후기사진 기본키
    PRIMARY KEY (
      photo_id -- 사진 번호
    );

ALTER TABLE review_photo
  MODIFY COLUMN photo_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '사진 번호';

-- 후기댓글
CREATE TABLE review_comment (
  comment_id   INTEGER NOT NULL COMMENT '후기댓글번호', -- 후기댓글번호
  review_id    INTEGER NOT NULL COMMENT '후기번호', -- 후기번호
  member_id    INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  content      TEXT    NOT NULL COMMENT '댓글 내용', -- 댓글 내용
  created_date DATE    NOT NULL DEFAULT now() COMMENT '작성일' -- 작성일
)
COMMENT '후기댓글';

-- 후기댓글
ALTER TABLE review_comment
  ADD CONSTRAINT PK_review_comment -- 후기댓글 기본키
    PRIMARY KEY (
      comment_id -- 후기댓글번호
    );

ALTER TABLE review_comment
  MODIFY COLUMN comment_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '후기댓글번호';

-- 찹톡사진
CREATE TABLE gallery_photo (
  photo_id   INTEGER     NOT NULL COMMENT '찹톡사진번호', -- 찹톡사진번호
  gallery_id INTEGER     NOT NULL COMMENT '찹톡 번호', -- 찹톡 번호
  file_path  VARCHAR(50) NOT NULL COMMENT '파일 경로' -- 파일 경로
)
COMMENT '찹톡사진';

-- 찹톡사진
ALTER TABLE gallery_photo
  ADD CONSTRAINT PK_gallery_photo -- 찹톡사진 기본키
    PRIMARY KEY (
      photo_id -- 찹톡사진번호
    );

ALTER TABLE gallery_photo
  MODIFY COLUMN photo_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '찹톡사진번호';

-- 동물분류
CREATE TABLE category (
  category_id INTEGER      NOT NULL COMMENT '동물분류번호', -- 동물분류번호
  category    VARCHAR(255) NOT NULL COMMENT '분류명' -- 분류명
)
COMMENT '동물분류';

-- 동물분류
ALTER TABLE category
  ADD CONSTRAINT PK_category -- 동물분류 기본키
    PRIMARY KEY (
      category_id -- 동물분류번호
    );

ALTER TABLE category
  MODIFY COLUMN category_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '동물분류번호';

-- 동물품종
CREATE TABLE breed (
  breed_id    INTEGER      NOT NULL COMMENT '동물품종번호', -- 동물품종번호
  breed       VARCHAR(255) NOT NULL COMMENT '품종명', -- 품종명
  category_id INTEGER      NOT NULL COMMENT '동물분류번호' -- 동물분류번호
)
COMMENT '동물품종';

-- 동물품종
ALTER TABLE breed
  ADD CONSTRAINT PK_breed -- 동물품종 기본키
    PRIMARY KEY (
      breed_id -- 동물품종번호
    );

ALTER TABLE breed
  MODIFY COLUMN breed_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '동물품종번호';

-- 반려동물사진
CREATE TABLE pet_photo (
  photo_id     INTEGER     NOT NULL COMMENT '반려동물사진번호', -- 반려동물사진번호
  pet_id       INTEGER     NOT NULL COMMENT '반려동물 번호', -- 반려동물 번호
  file_path    VARCHAR(50) NOT NULL COMMENT '파일 경로', -- 파일 경로
  created_date DATE        NOT NULL DEFAULT now() COMMENT '등록일' -- 등록일
)
COMMENT '반려동물사진';

-- 반려동물사진
ALTER TABLE pet_photo
  ADD CONSTRAINT PK_pet_photo -- 반려동물사진 기본키
    PRIMARY KEY (
      photo_id -- 반려동물사진번호
    );

ALTER TABLE pet_photo
  MODIFY COLUMN photo_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '반려동물사진번호';

-- 주문상품
CREATE TABLE order_product (
  order_id       INTEGER NOT NULL COMMENT '주문번호', -- 주문번호
  product_id     INTEGER NOT NULL COMMENT '상품 번호', -- 상품 번호
  quantity       INTEGER NOT NULL COMMENT '수량', -- 수량
  discount_price INTEGER NOT NULL COMMENT '단위가격' -- 단위가격
)
COMMENT '주문상품';

-- 주문상품
ALTER TABLE order_product
  ADD CONSTRAINT PK_order_product -- 주문상품 기본키
    PRIMARY KEY (
      order_id,   -- 주문번호
      product_id  -- 상품 번호
    );

-- 회원랭킹
CREATE TABLE member_ranking (
  member_raking_id INTEGER NOT NULL COMMENT '회원랭킹번호', -- 회원랭킹번호
  member_id        INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  date             DATE    NOT NULL COMMENT '년월', -- 년월
  week             INTEGER NOT NULL COMMENT '주차', -- 주차
  rank             INTEGER NOT NULL COMMENT '등수' -- 등수
)
COMMENT '회원랭킹';

-- 회원랭킹
ALTER TABLE member_ranking
  ADD CONSTRAINT PK_member_ranking -- 회원랭킹 기본키
    PRIMARY KEY (
      member_raking_id -- 회원랭킹번호
    );

-- 회원랭킹 유니크 인덱스
CREATE UNIQUE INDEX UIX_member_ranking
  ON member_ranking ( -- 회원랭킹
    date ASC,      -- 년월
    week ASC,      -- 주차
    rank ASC,      -- 등수
    member_id ASC  -- 회원번호
  );

-- 회원랭킹 유니크 인덱스2
CREATE UNIQUE INDEX UIX_member_ranking2
  ON member_ranking ( -- 회원랭킹
    date ASC, -- 년월
    week ASC, -- 주차
    rank ASC  -- 등수
  );

ALTER TABLE member_ranking
  MODIFY COLUMN member_raking_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원랭킹번호';

-- 조리과정
CREATE TABLE cooking (
  cooking_id INTEGER     NOT NULL COMMENT '조리과정번호', -- 조리과정번호
  recipe_id  INTEGER     NOT NULL COMMENT '레시피 번호', -- 레시피 번호
  process    INTEGER     NOT NULL COMMENT '조리순서', -- 조리순서
  file_path  VARCHAR(50) NOT NULL COMMENT '파일 경로', -- 파일 경로
  content    TEXT        NOT NULL COMMENT '내용' -- 내용
)
COMMENT '조리과정';

-- 조리과정
ALTER TABLE cooking
  ADD CONSTRAINT PK_cooking -- 조리과정 기본키
    PRIMARY KEY (
      cooking_id -- 조리과정번호
    );

ALTER TABLE cooking
  MODIFY COLUMN cooking_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '조리과정번호';

-- 재료
CREATE TABLE ingredient (
  ingredient_id INTEGER     NOT NULL COMMENT '재료번호', -- 재료번호
  recipe_id     INTEGER     NOT NULL COMMENT '레시피 번호', -- 레시피 번호
  ingredient    VARCHAR(50) NOT NULL COMMENT '재료', -- 재료
  quantity      VARCHAR(50) NOT NULL COMMENT '용량' -- 용량
)
COMMENT '재료';

-- 재료
ALTER TABLE ingredient
  ADD CONSTRAINT PK_ingredient -- 재료 기본키
    PRIMARY KEY (
      ingredient_id -- 재료번호
    );

ALTER TABLE ingredient
  MODIFY COLUMN ingredient_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '재료번호';

-- 레시피좋아요
CREATE TABLE recipe_like (
  like_id   INTEGER NOT NULL COMMENT '좋아요번호', -- 좋아요번호
  member_id INTEGER NOT NULL COMMENT '회원번호', -- 회원번호
  recipe_id INTEGER NOT NULL COMMENT '레시피 번호' -- 레시피 번호
)
COMMENT '레시피좋아요';

-- 레시피좋아요
ALTER TABLE recipe_like
  ADD CONSTRAINT PK_recipe_like -- 레시피좋아요 기본키
    PRIMARY KEY (
      like_id,   -- 좋아요번호
      member_id, -- 회원번호
      recipe_id  -- 레시피 번호
    );

ALTER TABLE recipe_like
  MODIFY COLUMN like_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '좋아요번호';

-- 상품사진
CREATE TABLE store_photo (
  photo_id   INTEGER     NOT NULL COMMENT '찹톡사진번호', -- 찹톡사진번호
  product_id INTEGER     NOT NULL COMMENT '상품 번호', -- 상품 번호
  file_path  VARCHAR(50) NOT NULL COMMENT '파일 경로' -- 파일 경로
)
COMMENT '상품사진';

-- 상품사진
ALTER TABLE store_photo
  ADD CONSTRAINT PK_store_photo -- 상품사진 기본키
    PRIMARY KEY (
      photo_id -- 찹톡사진번호
    );

ALTER TABLE store_photo
  MODIFY COLUMN photo_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '찹톡사진번호';

-- 상품문의
CREATE TABLE product_comment (
  comment_id   INTEGER     NOT NULL COMMENT '상품문의번호', -- 상품문의번호
  product_id   INTEGER     NOT NULL COMMENT '상품 번호', -- 상품 번호
  member_id    INTEGER     NOT NULL COMMENT '회원번호', -- 회원번호
  title        VARCHAR(50) NOT NULL COMMENT '제목', -- 제목
  content      TEXT        NOT NULL COMMENT '댓글 내용', -- 댓글 내용
  created_date DATE        NOT NULL DEFAULT now() COMMENT '작성일' -- 작성일
)
COMMENT '상품문의';

-- 상품문의
ALTER TABLE product_comment
  ADD CONSTRAINT PK_product_comment -- 상품문의 기본키
    PRIMARY KEY (
      comment_id -- 상품문의번호
    );

ALTER TABLE product_comment
  MODIFY COLUMN comment_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '상품문의번호';

-- 반려동물 정보
ALTER TABLE pet
  ADD CONSTRAINT FK_member_TO_pet -- 회원 -> 반려동물 정보
    FOREIGN KEY (
      member_id -- 회원 번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 반려동물 정보
ALTER TABLE pet
  ADD CONSTRAINT FK_breed_TO_pet -- 동물품종 -> 반려동물 정보
    FOREIGN KEY (
      breed_id -- 동물품종번호
    )
    REFERENCES breed ( -- 동물품종
      breed_id -- 동물품종번호
    );

-- 레시피
ALTER TABLE recipe
  ADD CONSTRAINT FK_member_TO_recipe -- 회원 -> 레시피
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 레시피댓글
ALTER TABLE recipe_comment
  ADD CONSTRAINT FK_recipe_TO_recipe_comment -- 레시피 -> 레시피댓글
    FOREIGN KEY (
      recipe_id -- 레시피 번호
    )
    REFERENCES recipe ( -- 레시피
      recipe_id -- 레시피 번호
    );

-- 레시피댓글
ALTER TABLE recipe_comment
  ADD CONSTRAINT FK_member_TO_recipe_comment -- 회원 -> 레시피댓글
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 후기
ALTER TABLE review
  ADD CONSTRAINT FK_recipe_TO_review -- 레시피 -> 후기
    FOREIGN KEY (
      recipe_id -- 레시피 번호
    )
    REFERENCES recipe ( -- 레시피
      recipe_id -- 레시피 번호
    );

-- 후기
ALTER TABLE review
  ADD CONSTRAINT FK_member_TO_review -- 회원 -> 후기
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 즐겨찾기
ALTER TABLE bookmark
  ADD CONSTRAINT FK_recipe_TO_bookmark -- 레시피 -> 즐겨찾기
    FOREIGN KEY (
      recipe_id -- 레시피 번호
    )
    REFERENCES recipe ( -- 레시피
      recipe_id -- 레시피 번호
    );

-- 즐겨찾기
ALTER TABLE bookmark
  ADD CONSTRAINT FK_member_TO_bookmark -- 회원 -> 즐겨찾기
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 레시피랭킹
ALTER TABLE recipe_ranking
  ADD CONSTRAINT FK_recipe_TO_recipe_ranking -- 레시피 -> 레시피랭킹
    FOREIGN KEY (
      recipe_id -- 레시피 번호
    )
    REFERENCES recipe ( -- 레시피
      recipe_id -- 레시피 번호
    );

-- 찹톡
ALTER TABLE gallery
  ADD CONSTRAINT FK_member_TO_gallery -- 회원 -> 찹톡
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 장바구니
ALTER TABLE cart
  ADD CONSTRAINT FK_member_TO_cart -- 회원 -> 장바구니
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 장바구니
ALTER TABLE cart
  ADD CONSTRAINT FK_product_TO_cart -- 상품 -> 장바구니
    FOREIGN KEY (
      product_id -- 상품 번호
    )
    REFERENCES product ( -- 상품
      product_id -- 상품 번호
    );

-- 주문
ALTER TABLE store_order
  ADD CONSTRAINT FK_member_TO_store_order -- 회원 -> 주문
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 구독회원
ALTER TABLE subscriptior
  ADD CONSTRAINT FK_member_TO_subscriptior -- 회원 -> 구독회원
    FOREIGN KEY (
      chef -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 구독회원
ALTER TABLE subscriptior
  ADD CONSTRAINT FK_member_TO_subscriptior2 -- 회원 -> 구독회원2
    FOREIGN KEY (
      viewer -- 구독자
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 이벤트사진
ALTER TABLE photo
  ADD CONSTRAINT FK_event_TO_photo -- 이벤트 -> 이벤트사진
    FOREIGN KEY (
      event_id -- 이벤트 번호
    )
    REFERENCES event ( -- 이벤트
      event_id -- 이벤트 번호
    );

-- 후기사진
ALTER TABLE review_photo
  ADD CONSTRAINT FK_review_TO_review_photo -- 후기 -> 후기사진
    FOREIGN KEY (
      review_id -- 후기번호
    )
    REFERENCES review ( -- 후기
      review_id -- 후기번호
    );

-- 후기댓글
ALTER TABLE review_comment
  ADD CONSTRAINT FK_review_TO_review_comment -- 후기 -> 후기댓글
    FOREIGN KEY (
      review_id -- 후기번호
    )
    REFERENCES review ( -- 후기
      review_id -- 후기번호
    );

-- 후기댓글
ALTER TABLE review_comment
  ADD CONSTRAINT FK_member_TO_review_comment -- 회원 -> 후기댓글
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 찹톡사진
ALTER TABLE gallery_photo
  ADD CONSTRAINT FK_gallery_TO_gallery_photo -- 찹톡 -> 찹톡사진
    FOREIGN KEY (
      gallery_id -- 찹톡 번호
    )
    REFERENCES gallery ( -- 찹톡
      gallery_id -- 찹톡 번호
    );

-- 동물품종
ALTER TABLE breed
  ADD CONSTRAINT FK_category_TO_breed -- 동물분류 -> 동물품종
    FOREIGN KEY (
      category_id -- 동물분류번호
    )
    REFERENCES category ( -- 동물분류
      category_id -- 동물분류번호
    );

-- 반려동물사진
ALTER TABLE pet_photo
  ADD CONSTRAINT FK_pet_TO_pet_photo -- 반려동물 정보 -> 반려동물사진
    FOREIGN KEY (
      pet_id -- 반려동물 번호
    )
    REFERENCES pet ( -- 반려동물 정보
      pet_id -- 반려동물 번호
    );

-- 주문상품
ALTER TABLE order_product
  ADD CONSTRAINT FK_store_order_TO_order_product -- 주문 -> 주문상품
    FOREIGN KEY (
      order_id -- 주문번호
    )
    REFERENCES store_order ( -- 주문
      order_id -- 주문번호
    );

-- 주문상품
ALTER TABLE order_product
  ADD CONSTRAINT FK_product_TO_order_product -- 상품 -> 주문상품
    FOREIGN KEY (
      product_id -- 상품 번호
    )
    REFERENCES product ( -- 상품
      product_id -- 상품 번호
    );

-- 회원랭킹
ALTER TABLE member_ranking
  ADD CONSTRAINT FK_member_TO_member_ranking -- 회원 -> 회원랭킹
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 조리과정
ALTER TABLE cooking
  ADD CONSTRAINT FK_recipe_TO_cooking -- 레시피 -> 조리과정
    FOREIGN KEY (
      recipe_id -- 레시피 번호
    )
    REFERENCES recipe ( -- 레시피
      recipe_id -- 레시피 번호
    );

-- 재료
ALTER TABLE ingredient
  ADD CONSTRAINT FK_recipe_TO_ingredient -- 레시피 -> 재료
    FOREIGN KEY (
      recipe_id -- 레시피 번호
    )
    REFERENCES recipe ( -- 레시피
      recipe_id -- 레시피 번호
    );

-- 레시피좋아요
ALTER TABLE recipe_like
  ADD CONSTRAINT FK_member_TO_recipe_like -- 회원 -> 레시피좋아요
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );

-- 레시피좋아요
ALTER TABLE recipe_like
  ADD CONSTRAINT FK_recipe_TO_recipe_like -- 레시피 -> 레시피좋아요
    FOREIGN KEY (
      recipe_id -- 레시피 번호
    )
    REFERENCES recipe ( -- 레시피
      recipe_id -- 레시피 번호
    );

-- 상품사진
ALTER TABLE store_photo
  ADD CONSTRAINT FK_product_TO_store_photo -- 상품 -> 상품사진
    FOREIGN KEY (
      product_id -- 상품 번호
    )
    REFERENCES product ( -- 상품
      product_id -- 상품 번호
    );

-- 상품문의
ALTER TABLE product_comment
  ADD CONSTRAINT FK_product_TO_product_comment -- 상품 -> 상품문의
    FOREIGN KEY (
      product_id -- 상품 번호
    )
    REFERENCES product ( -- 상품
      product_id -- 상품 번호
    );

-- 상품문의
ALTER TABLE product_comment
  ADD CONSTRAINT FK_member_TO_product_comment -- 회원 -> 상품문의
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES member ( -- 회원
      member_id -- 회원번호
    );