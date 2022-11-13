edit TB_CART 

edit TB_ORDER 

edit TB_ORDER_DE 

edit TB_CART 

SELECT ord.order_no "주문번호", ord.order_date "주문날짜"
       , car.order_type "주문종류", car.cart_quantity "주문수량"
       , md.md_name "상품명", md.md_brand "브랜드", md.md_price "상품가격"
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

-- report_reason을 n
ALTER TABLE tb_report MODIFY report_reason NULL;

COMMIT


-- 신고할 글 / 신고할 댓글 / 신고할 회원 번호를 받기
     -- (board_no / reply_no / member_no2)
-- 신고한 회원(member_no)은 신고 종류(report_sort)와 신고한 이유(report_reason) 작성
     -- 신고 날짜(report_date), 신고 번호(report_no)는 자동 채번하기

-- ** 추가할 컬럼 reply_no
     ALTER TABLE tb_report ADD reply_no NUMBER(20) NULL

-- ** 변경할 내용 board_no, member_no2 null 가능 (각 댓글/글/회원 번호에 따른 신고 수 채번 위해)
     ALTER TABLE tb_report MODIFY board_no NULL;

     ALTER TABLE tb_report MODIFY member_no2 NULL;

-- ** 변경할 내용 report_sort 데이터 타입 number -> varchar(200)
     ALTER TABLE tb_report MODIFY report_sort VARCHAR(200)

-- ** 변경할 내용 report_date 데이터 타입 timestamp -> varchar(200)
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