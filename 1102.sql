TB_AMD MD_IMAGE_URL MD_DETAIL_IMAGE_URL ST_AMOUNT �߰�

TB_MD MD_IMAGE_URL MD_DETAIL_IMAGE_URL ST_AMOUNT �߰�

drop table TB_ASTOCK ;
drop table TB_STOCK  ;

MD_IMAGE_URL         VARCHAR2(4000 BYTE),
  MD_DETAIL_IMAGE_URL  VARCHAR2(4000 BYTE),
  ST_AMOUNT            NUMBER
  
  --ȸ���� MD �÷� �߰�
  ALTER TABLE TB_MD ADD MD_IMAGE_URL         VARCHAR2(4000 BYTE)
    ALTER TABLE TB_MD ADD MD_DETAIL_IMAGE_URL  VARCHAR2(4000 BYTE)
      ALTER TABLE TB_MD ADD ST_AMOUNT            NUMBER
      
      --�����ڴ� MD �÷� �߰�
        ALTER TABLE TB_AMD ADD MD_IMAGE_URL         VARCHAR2(4000 BYTE)
    ALTER TABLE TB_AMD ADD MD_DETAIL_IMAGE_URL  VARCHAR2(4000 BYTE)
      ALTER TABLE TB_AMD ADD ST_AMOUNT            NUMBER
      
      --ȸ����, �����ڴ� ������̺� ����
      drop table TB_ASTOCK ;
drop table TB_STOCK  ;



-- ���� ���� ����(����Ʈ)
ALTER TABLE tb_point DROP CONSTRAINT FK_tb_member_TO_tb_point_1;

-- ���� ���� �߰�(����Ʈ)
ALTER TABLE tb_point ADD CONSTRAINT FK_tb_member_TO_tb_point_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(Ŀ�´�Ƽ)
ALTER TABLE tb_community DROP CONSTRAINT FK_tb_member_TO_tb_community_1;

-- ���� ���� �߰�(Ŀ�´�Ƽ)
ALTER TABLE tb_community ADD CONSTRAINT FK_tb_member_TO_tb_community_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(����)
ALTER TABLE tb_msg DROP CONSTRAINT FK_tb_member_TO_tb_msg_1;

-- ���� ���� �߰�(����)
ALTER TABLE tb_msg ADD CONSTRAINT FK_tb_member_TO_tb_msg_1 FOREIGN KEY (member_no2) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(ī�����)
ALTER TABLE tb_cardapi DROP CONSTRAINT FK_tb_member_TO_tb_cardapi_1;

-- ���� ���� �߰�(ī�����)
ALTER TABLE tb_cardapi ADD CONSTRAINT FK_tb_member_TO_tb_cardapi_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(�ֹ�)
ALTER TABLE tb_order DROP CONSTRAINT FK_tb_member_TO_tb_order_1;

-- ���� ���� �߰�(�ֹ�)
ALTER TABLE tb_order ADD CONSTRAINT FK_tb_member_TO_tb_order_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(���������̷�)
ALTER TABLE tb_substory DROP CONSTRAINT FK_tb_member_TO_tb_substory_1;

-- ���� ���� �߰�(���������̷�)
ALTER TABLE tb_substory ADD CONSTRAINT FK_tb_member_TO_tb_substory_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(��������)
ALTER TABLE tb_subs DROP CONSTRAINT FK_tb_member_TO_tb_subs_1;

-- ���� ���� �߰�(��������)
ALTER TABLE tb_subs ADD CONSTRAINT FK_tb_member_TO_tb_subs_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(��ǰ�ı�)
ALTER TABLE tb_mdreview DROP CONSTRAINT FK_tb_member_TO_tb_mdreview_1;

-- ���� ���� �߰�(��ǰ�ı�)
ALTER TABLE tb_mdreview ADD CONSTRAINT FK_tb_member_TO_tb_mdreview_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(ä�ø��)
ALTER TABLE tb_chatmem DROP CONSTRAINT FK_tb_member_TO_tb_chatmem_1;

-- ���� ���� �߰�(ä�ø��)
ALTER TABLE tb_chatmem ADD CONSTRAINT FK_tb_member_TO_tb_chatmem_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ȸ������ �� ������ ��õ�� �ڵ��÷�
ALTER TABLE tb_member ADD member_code VARCHAR2(200)

--ȸ������ �� ��õ�� �ڵ尡 �ִٸ� ���� �÷�
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