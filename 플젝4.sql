ALTER TABLE tb_notice ADD notice_regdate varchar2(30)

ALTER TABLE tb_notice ADD filename varchar2(300)

ALTER TABLE tb_notice ADD fileurl varchar2(300)


 MEMBER_PASSWORDMEMBER_PASSWORD
 
 
 edit TB_NOTICE
 
 
 ALTER TABLE tb_community ADD board_hit NUMBER(30) DEFAULT '0' NOT NULL
 
 
 
 --- 멤버 이메일 unique 제약 추가

ALTER TABLE tb_member ADD UNIQUE (MEMBER_EMAIL);

-- 멤버 테이블 비밀번호 사이즈 변경

ALTER TABLE tb_member MODIFY (member_password VARCHAR2(100));

-- 적립금(tb_point) 테이블에서 POINT_TYPE 컬럼 추가


CREATE SEQUENCE SEQ_TB_MEMBER_MEMBER_NO


CREATE SEQUENCE SEQ_TB_MEMBER_POINT_NO