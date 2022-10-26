-- point와 member 테이블 제약조건 삭제

ALTER TABLE tb_member DROP CONSTRAINT FK_TB_POINT_TO_TB_MEMBER_1;

-- point 테이블에 member_no 컬럼 추가, member 테이블에 point_no 컬럼 삭제 후에 
ALTER TABLE tb_point ADD MEMBER_NO NUMBER(20) 


ALTER TABLE tb_point ADD CONSTRAINT FK_tb_member_TO_tb_point_1 FOREIGN KEY (
    MEMBER_NO
)
REFERENCES tb_member (
    MEMBER_NO
);

-- 다시 참조키 조건 설정

edit TB_POINT 

commit

ALTER TABLE SANA.TB_STORE ADD (
  CONSTRAINT PK_TB_STORE
  PRIMARY KEY
  (STORE_NO)
  USING INDEX SANA.PK_TB_STORE
  ENABLE VALIDATE);

ALTER TABLE SANA.TB_STORE ADD (
  CONSTRAINT FK_TB_AMD_TO_TB_STORE_1 
  FOREIGN KEY (MD_NO) 
  REFERENCES SANA.TB_AMD (MD_NO)
  ENABLE VALIDATE);

]


-- tb_amd와 tb_store 테이블 제약조건 삭제

ALTER TABLE TB_STORE DROP CONSTRAINT FK_TB_AMD_TO_TB_STORE_1;

-- tb_amd 테이블에 store_no 컬럼 추가
ALTER TABLE tb_amd ADD STORE_NO NUMBER(20) 
--, tb_store 테이블에 md_no 컬럼 삭제 후에 
ALTER TABLE TB_STORE  DROP COLUMN MD_NO


-- 다시 참조키 조건 설정

ALTER TABLE TB_AMD ADD 
  CONSTRAINT FK_TB_STORE_TO_TB_AMD_1
  FOREIGN KEY (STORE_NO) 
  REFERENCES TB_STORE  (STORE_NO);
  
--

COMMIT;
  







ALTER TABLE TB_AMD DROP COLUMN store_no

edit TB_STORE  

edit TB_AMD 

commit


