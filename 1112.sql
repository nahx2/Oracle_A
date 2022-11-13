edit TB_CART 

edit TB_ORDER 

edit TB_ORDER_DE 

edit TB_CART 

SELECT ord.order_no "�ֹ���ȣ", ord.order_date "�ֹ���¥"
       , car.order_type "�ֹ�����", car.cart_quantity "�ֹ�����"
       , md.md_name "��ǰ��", md.md_brand "�귣��", md.md_price "��ǰ����"
       , md.md_image_url, del.delivery_status, del.delivery_fee
       , del.delivery_date, del.delivery_no, del.delivery_company
FROM tb_order ord, tb_delivery del, tb_cart car, tb_md md
WHERE ORD.ORDER_NO = DEL.ORDER_NO
AND car.member_no = ord.member_no
AND car.md_no = md.md_no
AND car.order_type = ord.order_type
AND ord.member_no = 2
ORDER BY ORD.ORDER_NO

SELECT car.member_no, car.cart_no, car.order_type, car.cart_quantity
        , md.md_name, md.md_brand, md.md_price, md.md_image_url,md.md_discount
        FROM tb_cart car, tb_md md
        WHERE car.md_no = md.md_no
        AND car.order_type = 'O'
        AND car.member_no = 2
        
        
        
        -- member_no2 nn
ALTER TABLE tb_report MODIFY member_no2 NOT NULL

-- report_reason�� n
ALTER TABLE tb_report MODIFY report_reason NULL;

COMMIT


-- �Ű��� �� / �Ű��� ��� / �Ű��� ȸ�� ��ȣ�� �ޱ�
     -- (board_no / reply_no / member_no2)
-- �Ű��� ȸ��(member_no)�� �Ű� ����(report_sort)�� �Ű��� ����(report_reason) �ۼ�
     -- �Ű� ��¥(report_date), �Ű� ��ȣ(report_no)�� �ڵ� ä���ϱ�

-- ** �߰��� �÷� reply_no
     ALTER TABLE tb_report ADD reply_no NUMBER(20) NULL

-- ** ������ ���� board_no, member_no2 null ���� (�� ���/��/ȸ�� ��ȣ�� ���� �Ű� �� ä�� ����)
     ALTER TABLE tb_report MODIFY board_no NULL;

     ALTER TABLE tb_report MODIFY member_no2 NULL;

-- ** ������ ���� report_sort ������ Ÿ�� number -> varchar(200)
     ALTER TABLE tb_report MODIFY report_sort VARCHAR(200)

-- ** ������ ���� report_date ������ Ÿ�� timestamp -> varchar(200)
     ALTER TABLE tb_report MODIFY report_date VARCHAR(200)

     COMMIT
     
     
     
         MERGE INTO TB_POINT
        USING
        (SELECT TB_ORDER.ORDER_NO, TB_ORDER.ORDER_USED_POINT
        , TB_POINT.MEMBER_NO,POINT_USED_SAVED
        FROM TB_ORDER INNER JOIN TB_POINT
        ON TB_POINT.MEMBER_NO = TB_ORDER.MEMBER_NO
        WHERE TB_POINT.MEMBER_NO = 11) TB_ORDER
        ON (TB_POINT.MEMBER_NO = 11
        AND TB_ORDER.ORDER_NO = #{ORDER_NO})
        WHEN MATCHED THEN UPDATE SET
        TB_POINT.POINT_USED_SAVED =
        (TB_ORDER.POINT_USED_SAVED-TB_ORDER.ORDER_USED_POINT)