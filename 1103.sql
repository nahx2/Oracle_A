-- 컬럼명변경

ALTER TABLE tb_msg RENAME COLUMN member_no2 TO member_no 

        --오더데이트 바차로 바꾸기 완
        
        ALTER TABLE TB_ORDER MODIFY ORDER_DATE VARCHAR2(200);
        commit
        
        ----------------
        
        ALTER TABLE TB_MEMBER MODIFY member_address null;

ALTER TABLE TB_MEMBER MODIFY member_password null;

ALTER TABLE TB_MEMBER MODIFY member_phone null;

ALTER TABLE TB_MEMBER MODIFY member_address VARCHAR2(500)

commit;
        ----------------------------------------
        
        
        ALTER TABLE TB_DELIVERY  DROP PRIMARY KEY; 
        
        commit
        
        
        -------------------------------------

edit TB_MEMBER 

edit TB_MD 

edit TB_CART 

edit TB_ORDER

-----------------------------


 INSERT ALL
        INTO TB_AMD(MD_NO,MD_CONTENT,MD_PRICE,MD_IMAGE,MD_DETAIL_IMAGE
        ,MD_COST,MD_CATEGORY,MD_DISCOUNT,MD_NAME,MD_BRAND
        ,STORE_NO,MD_IMAGE_URL,MD_DETAIL_IMAGE_URL)
        VALUES(MD_NO_SEQ.nextval,#{MD_CONTENT},#{MD_PRICE},#{MD_IMAGE},#{MD_DETAIL_IMAGE}
        ,#{MD_COST},#{MD_CATEGORY},#{MD_DISCOUNT},#{MD_NAME},#{MD_BRAND}
        ,#{STORE_NO},#{MD_IMAGE_URL},#{MD_DETAIL_IMAGE_URL})
        INTO TB_ASTOCK(MD_NO,ST_AMOUNT)
        VALUES(MD_NO_SEQ.nextval,#{ST_AMOUNT})ORDER_DATE
        SELECT * FROM DUAL
        
        edit TB_ORDER
        
         edit TB_ORDER_DE 
         
          edit TB_DELIVERY 
        
         edit TB_PURCHASE 
        

        
         INSERT ALL
        INTO TB_ORDER (ORDER_NO, MEMBER_NO, CART_NO, ORDER_PAYMENT
        , ORDER_DATE, ORDER_AMOUNT, ORDER_USED_POINT)
        VALUES('1', 1, '1', 100
        ,to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 100, 0)
        INTO TB_PURCHASE (PURCHASE_NO, ORDER_NO, PURCHASE_METHOD)
        VALUES( '1', '1', '1')
        SELECT * FROM DUAL
        
        
        
        INSERT ALL
        INTO TB_ORDER (ORDER_NO, MEMBER_NO, CART_NO, ORDER_PAYMENT
        , ORDER_DATE, ORDER_AMOUNT, ORDER_USED_POINT)
        VALUES(#{ORDER_NO}, #{MEMBER_NO},#{CART_NO}, #{ORDER_PAYMENT}
        ,to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), #{ORDER_AMOUNT}, #{ORDER_USED_POINT})
        INTO TB_PURCHASE (PURCHASE_NO, ORDER_NO, PURCHASE_METHOD)
        VALUES( #{PURCHASE_NO}, #{ORDER_NO}, #{PURCHASE_METHOD})
        SELECT * FROM DUAL
        
        --주문번호 o_
        --결제번호 po_
        --주문상세번호 do_
        
         INSERT ALL
        INTO TB_ORDER (ORDER_NO, MEMBER_NO, CART_NO, ORDER_PAYMENT
        , ORDER_DATE, ORDER_AMOUNT, ORDER_USED_POINT)
        VALUES('o_545', 1, '1', 500
        ,to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 500, 0)
        INTO TB_PURCHASE (PURCHASE_NO, ORDER_NO, PURCHASE_METHOD)
        VALUES( 'po_545', 'o_545', 'card')
         INTO TB_ORDER_DE   (ORDER_DE_NO, ORDER_NO, ORDER_DE_QUANTITY
         ,ORDER_DE_PRICE,ORDER_DE_CANCEL)
        VALUES( 'do_545', 'o_545', 5,500,'N')
         INTO TB_DELIVERY  (DELIVERY_STATUS, ORDER_NO)
        VALUES( '상품준비중', 'o_545')
        SELECT * FROM DUAL
        
        
          
        INSERT ALL
        INTO TB_ORDER (ORDER_NO, MEMBER_NO, CART_NO, ORDER_PAYMENT
        , ORDER_DATE, ORDER_AMOUNT, ORDER_USED_POINT)
        VALUES(#{ORDER_NO}, #{MEMBER_NO},#{CART_NO}, #{ORDER_PAYMENT}
        ,to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), #{ORDER_AMOUNT}, #{ORDER_USED_POINT})
        INTO TB_PURCHASE (PURCHASE_NO, ORDER_NO, PURCHASE_METHOD)
        VALUES( #{PURCHASE_NO}, #{ORDER_NO}, #{PURCHASE_METHOD})
         INTO TB_ORDER_DE   (ORDER_DE_NO, ORDER_NO, ORDER_DE_QUANTITY
         ,ORDER_DE_PRICE,ORDER_DE_CANCEL)
        VALUES( #{ORDER_DE_NO}, #{ORDER_NO}, #{ORDER_DE_QUANTITY}, #{ORDER_DE_PRICE}, #{ORDER_DE_CANCEL})
         INTO TB_DELIVERY  (DELIVERY_STATUS, ORDER_NO)
        VALUES( #{DELIVERY_STATUS}, #{ORDER_NO})
        SELECT * FROM DUAL
        
        
         INSERT ALL
        INTO TB_ORDER (ORDER_NO, MEMBER_NO, CART_NO, ORDER_PAYMENT
        , ORDER_DATE, ORDER_AMOUNT, ORDER_USED_POINT)
        VALUES('o_54577', 1, '1', 500
        ,to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), 500, 0)
        INTO TB_PURCHASE (PURCHASE_NO, ORDER_NO, PURCHASE_METHOD)
        VALUES( 'po_54577', 'o_545', 'card')
         INTO TB_ORDER_DE   (ORDER_DE_NO, ORDER_NO, ORDER_DE_QUANTITY
         ,ORDER_DE_PRICE,ORDER_DE_CANCEL)
        VALUES( 'do_54577', 'o_545', 5,500,'N')
         INTO TB_DELIVERY  (DELIVERY_STATUS, ORDER_NO)
        VALUES( '상품준비중', 'o_545')
        SELECT * FROM DUAL
        
        
         INSERT ALL
        INTO TB_ORDER (ORDER_NO, MEMBER_NO, CART_NO, ORDER_PAYMENT
        , ORDER_DATE, ORDER_AMOUNT, ORDER_USED_POINT)
        VALUES(#{ORDER_NO}, #{MEMBER_NO},#{CART_NO}, #{ORDER_PAYMENT}
        ,to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS'), #{ORDER_AMOUNT}, #{ORDER_USED_POINT})
        INTO TB_PURCHASE (PURCHASE_NO, ORDER_NO, PURCHASE_METHOD)
        VALUES( #{PURCHASE_NO}, #{ORDER_NO}, #{PURCHASE_METHOD})
         INTO TB_ORDER_DE   (ORDER_DE_NO, ORDER_NO, ORDER_DE_QUANTITY
         ,ORDER_DE_PRICE,ORDER_DE_CANCEL)
        VALUES( #{ORDER_DE_NO}, #{ORDER_NO}, #{ORDER_DE_QUANTITY}, #{ORDER_DE_PRICE}, #{ORDER_DE_CANCEL})
         INTO TB_DELIVERY  (DELIVERY_STATUS, ORDER_NO)
        VALUES( #{DELIVERY_STATUS}, #{ORDER_NO})
        SELECT * FROM DUAL