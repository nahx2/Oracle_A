ALTER TABLE tb_notice ADD notice_regdate varchar2(30)

ALTER TABLE tb_notice ADD filename varchar2(300)

ALTER TABLE tb_notice ADD fileurl varchar2(300)


 MEMBER_PASSWORDMEMBER_PASSWORD
 
 
 edit TB_NOTICE
 
 
 ALTER TABLE tb_community ADD board_hit NUMBER(30) DEFAULT '0' NOT NULL
 
 
 
 --- ��� �̸��� unique ���� �߰�

ALTER TABLE tb_member ADD UNIQUE (MEMBER_EMAIL);

-- ��� ���̺� ��й�ȣ ������ ����

ALTER TABLE tb_member MODIFY (member_password VARCHAR2(100));

-- ������(tb_point) ���̺��� POINT_TYPE �÷� �߰�


CREATE SEQUENCE SEQ_TB_MEMBER_MEMBER_NO


CREATE SEQUENCE SEQ_TB_MEMBER_POINT_NO