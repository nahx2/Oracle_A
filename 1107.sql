
--�÷� ����
ALTER TABLE TB_MD  ADD STORE_NO NUMBER(20) ;

--�θ�Ű  ����
ALTER TABLE SANA.TB_MD ADD (
  CONSTRAINT FK_TB_STORE_TO_TB_MD_1 
  FOREIGN KEY (STORE_NO) 
  REFERENCES SANA.TB_STORE (STORE_NO)
  ENABLE VALIDATE);
 
--���� fk ����
ALTER TABLE TB_SALES drop constraint FK_TB_AMD_TO_TB_SALES_1;

--���� fk ����
ALTER TABLE SANA.TB_SALES ADD (
  CONSTRAINT FK_TB_MD_TO_TB_SALES_1 
  FOREIGN KEY (MD_NO) 
  REFERENCES SANA.TB_MD (MD_NO)
  ENABLE VALIDATE);
  
  
  ALTER TABLE TB_MEMBER  MODIFY   POINT_NO NULL
  
  commit;
  
  edit TB_MD
  
  edit TB_ORDER 
  
  edit TB_SALES 
  
  edit TB_CART  
  
  edit TB_ORDER_DE   
  edit TB_DELIVERY   
  edit TB_PURCHASE   
  
  CREATE SEQUENCE SEQ_FAQ_NO

CREATE SEQUENCE SEQ_TB_POINT_NO

-- ����ƮŸ�� �÷��� ERD���� �ִµ� ����Ŭ�� ��� �߰���
alter table tb_point add point_type number(20)

-- ȸ������Ʈ�� �÷� ���� sum����
ALTER TABLE tb_point DROP column member_point
  
  
  CREATE SEQUENCE md_review_no_seq

ALTER TABLE TB_MDREVIEW DROP COLUMN MD_REVIEW_TITLE;

ALTER TABLE TB_MDREVIEW DROP COLUMN purchase_detail_no;

select TB_ORDER.ORDER_NO,TB_ORDER.ORDER_PAYMENT, TB_ORDER.ORDER_DATE
            , TB_ORDER.ORDER_USED_POINT,TB_ORDER.CART_NO
            , TB_MEMBER.MEMBER_NAME,TB_MEMBER.MEMBER_NO
            , TB_CART.MD_NO, TB_CART.CART_QUANTITY, TB_CART.ORDER_TYPE
            , TB_MD.MD_PRICE, TB_MD.MD_IMAGE, TB_MD.MD_NAME, TB_MD.MD_BRAND, TB_MD.MD_IMAGE_URL
        from TB_ORDER
            inner join TB_MEMBER
                on TB_ORDER.MEMBER_NO = TB_MEMBER.MEMBER_NO
            inner join TB_CART
                on TB_ORDER.CART_NO = TB_CART.CART_NO
            inner join TB_MD
                on TB_MD.MD_NO = TB_CART.MD_NO
                
                edit TB_MEMBER 
                
                select * from TB_MEMBER
                -- ȸ�����Խ� ���ּ� �÷� �߰�

ALTER TABLE TB_MEMBER ADD (MEMBER_ADDRESS_DETAIL VARCHAR2(100 BYTE));

-- ȸ������ ��ȭ��ȣ Ÿ�� varchar2 �� ����

ALTER TABLE TB_MEMBER  MODIFY member_phone VARCHAR2(200);

-- ȸ������ �����ȣ Ÿ�� varchar2 �� ����

ALTER TABLE TB_MEMBER  MODIFY member_zipcode VARCHAR2(200);


SELECT car.member_no, car.cart_no, car.order_type, car.cart_quantity
               , md.md_name, md.md_brand, md.md_price, md.md_image_url
        FROM tb_cart car, tb_md md
        WHERE car.md_no = md.md_no
        AND car.order_type = '��������'
        AND car.member_no = 1
        
        select * from tb_cart 
        
         edit tb_cart 
         
         SELECT 
               DISTINCT sum(md_price*cart_quantity) OVER (PARTITION BY order_type) as order_amount
        FROM tb_cart car, tb_md md
        WHERE car.md_no = md.md_no
        AND car.order_type = '��������'
        AND car.member_no =  1
        
        
        select car.member_no, car.cart_no, car.order_type, car.cart_quantity
               , md.md_name, md.md_brand, md.md_price, md.md_image_url
               , MEM.MEMBER_ADDRESS, MEM.MEMBER_ADDRESS_DETAIL
               , MEM.MEMBER_EMAIL, MEM.MEMBER_NAME, MEM.MEMBER_PHONE
               , MEM.MEMBER_ZIPCODE
        FROM tb_cart car, tb_md md, TB_MEMBER mem
        WHERE car.md_no = md.md_no
        AND car.order_type = '��������'
        AND car.member_no = 1