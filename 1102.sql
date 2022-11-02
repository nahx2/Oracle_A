TB_AMD MD_IMAGE_URL MD_DETAIL_IMAGE_URL ST_AMOUNT 추가

TB_MD MD_IMAGE_URL MD_DETAIL_IMAGE_URL ST_AMOUNT 추가

drop table TB_ASTOCK ;
drop table TB_STOCK  ;

MD_IMAGE_URL         VARCHAR2(4000 BYTE),
  MD_DETAIL_IMAGE_URL  VARCHAR2(4000 BYTE),
  ST_AMOUNT            NUMBER
  
  --회원단 MD 컬럼 추가
  ALTER TABLE TB_MD ADD MD_IMAGE_URL         VARCHAR2(4000 BYTE)
    ALTER TABLE TB_MD ADD MD_DETAIL_IMAGE_URL  VARCHAR2(4000 BYTE)
      ALTER TABLE TB_MD ADD ST_AMOUNT            NUMBER
      
      --관리자단 MD 컬럼 추가
        ALTER TABLE TB_AMD ADD MD_IMAGE_URL         VARCHAR2(4000 BYTE)
    ALTER TABLE TB_AMD ADD MD_DETAIL_IMAGE_URL  VARCHAR2(4000 BYTE)
      ALTER TABLE TB_AMD ADD ST_AMOUNT            NUMBER
      
      --회원단, 관리자단 재고테이블 삭제
      drop table TB_ASTOCK ;
drop table TB_STOCK  ;



-- 제약 조건 삭제(포인트)
ALTER TABLE tb_point DROP CONSTRAINT FK_tb_member_TO_tb_point_1;

-- 제약 조건 추가(포인트)
ALTER TABLE tb_point ADD CONSTRAINT FK_tb_member_TO_tb_point_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 제약 조건 삭제(커뮤니티)
ALTER TABLE tb_community DROP CONSTRAINT FK_tb_member_TO_tb_community_1;

-- 제약 조건 추가(커뮤니티)
ALTER TABLE tb_community ADD CONSTRAINT FK_tb_member_TO_tb_community_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 제약 조건 삭제(쪽지)
ALTER TABLE tb_msg DROP CONSTRAINT FK_tb_member_TO_tb_msg_1;

-- 제약 조건 추가(쪽지)
ALTER TABLE tb_msg ADD CONSTRAINT FK_tb_member_TO_tb_msg_1 FOREIGN KEY (member_no2) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 제약 조건 삭제(카드결제)
ALTER TABLE tb_cardapi DROP CONSTRAINT FK_tb_member_TO_tb_cardapi_1;

-- 제약 조건 추가(카드결제)
ALTER TABLE tb_cardapi ADD CONSTRAINT FK_tb_member_TO_tb_cardapi_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 제약 조건 삭제(주문)
ALTER TABLE tb_order DROP CONSTRAINT FK_tb_member_TO_tb_order_1;

-- 제약 조건 추가(주문)
ALTER TABLE tb_order ADD CONSTRAINT FK_tb_member_TO_tb_order_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 제약 조건 삭제(구독정보이력)
ALTER TABLE tb_substory DROP CONSTRAINT FK_tb_member_TO_tb_substory_1;

-- 제약 조건 추가(구독정보이력)
ALTER TABLE tb_substory ADD CONSTRAINT FK_tb_member_TO_tb_substory_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 제약 조건 삭제(구독정보)
ALTER TABLE tb_subs DROP CONSTRAINT FK_tb_member_TO_tb_subs_1;

-- 제약 조건 추가(구독정보)
ALTER TABLE tb_subs ADD CONSTRAINT FK_tb_member_TO_tb_subs_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 제약 조건 삭제(상품후기)
ALTER TABLE tb_mdreview DROP CONSTRAINT FK_tb_member_TO_tb_mdreview_1;

-- 제약 조건 추가(상품후기)
ALTER TABLE tb_mdreview ADD CONSTRAINT FK_tb_member_TO_tb_mdreview_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 제약 조건 삭제(채팅멤버)
ALTER TABLE tb_chatmem DROP CONSTRAINT FK_tb_member_TO_tb_chatmem_1;

-- 제약 조건 추가(채팅멤버)
ALTER TABLE tb_chatmem ADD CONSTRAINT FK_tb_member_TO_tb_chatmem_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- 회원가입 시 생성된 추천인 코드컬럼
ALTER TABLE tb_member ADD member_code VARCHAR2(200)

--회원가입 시 추천인 코드가 있다면 담을 컬럼
ALTER TABLE tb_member ADD member_recommend VARCHAR2(200)

ALTER TABLE tb_reply DROP COLUMN reply_writer

ALTER TABLE tb_reply ADD member_no NUMBER(20) NOT NULL

ALTER TABLE tb_reply ADD CONSTRAINT FK_tb_member_TO_tb_reply_1 FOREIGN KEY (
    member_no
)
REFERENCES tb_member (
    member_no
);

COMMIT

edit TB_MEMBER 

edit TB_ORDER 