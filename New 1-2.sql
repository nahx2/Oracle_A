-- point�� member ���̺� �������� ����

ALTER TABLE tb_member DROP CONSTRAINT FK_TB_POINT_TO_TB_MEMBER_1;

-- point ���̺� member_no �÷� �߰�, member ���̺� point_no �÷� ���� �Ŀ� 
ALTER TABLE tb_point ADD MEMBER_NO NUMBER(20) 


ALTER TABLE tb_point ADD CONSTRAINT FK_tb_member_TO_tb_point_1 FOREIGN KEY (
    MEMBER_NO
)
REFERENCES tb_member (
    MEMBER_NO
);

-- �ٽ� ����Ű ���� ����

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


-- tb_amd�� tb_store ���̺� �������� ����

ALTER TABLE TB_STORE DROP CONSTRAINT FK_TB_AMD_TO_TB_STORE_1;

-- tb_amd ���̺� store_no �÷� �߰�
ALTER TABLE tb_amd ADD STORE_NO NUMBER(20) 
--, tb_store ���̺� md_no �÷� ���� �Ŀ� 
ALTER TABLE TB_STORE  DROP COLUMN MD_NO


-- �ٽ� ����Ű ���� ����

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


