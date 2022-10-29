SELECT TB_STORE.STORE_NO,MD_NO,MD_NAME,STORE_CONTACT,STORE_MANAGER,STORE_MEMO,STORE_YN,STORE_START_DATE,FIELD
FROM TB_STORE LEFT JOIN TB_AMD
ON TB_STORE.STORE_NO = TB_AMD.STORE_NO



SELECT TB_AMD.MD_NO,MD_CONTENT,MD_PRICE,MD_IMAGE,MD_DETAIL_IMAGE
        ,MD_COST,MD_CATEGORY,MD_DISCOUNT,MD_NAME,MD_BRAND,STORE_NO,MD_IMAGE_URL,MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT
        FROM TB_AMD LEFT JOIN TB_ASTOCK
        ON TB_AMD.MD_NO = TB_ASTOCK.MD_NO 
        EDIT TB_STORE 
        
        EDIT TB_AMD
        edit TB_ASTOCK
        EDIT DUAL
        
        INSERT INTO TB_AMD(MD_NO,MD_CONTENT,MD_PRICE,MD_IMAGE,MD_DETAIL_IMAGE
        ,MD_COST,MD_CATEGORY,MD_DISCOUNT,MD_NAME,MD_BRAND,STORE_NO,MD_IMAGE_URL,MD_DETAIL_IMAGE_URL)
        VALUES(MD_NO_SEQ.nextval,#{MD_CONTENT},#{MD_PRICE},#{MD_IMAGE},#{MD_DETAIL_IMAGE}
        ,#{MD_COST},#{MD_CATEGORY},#{MD_DISCOUNT},#{MD_NAME},#{MD_BRAND},#{STORE_NO},#{MD_IMAGE_URL},#{MD_DETAIL_IMAGE_URL})
        
        INSERT ALL
        INTO TB_AMD(MD_NO,MD_CONTENT,MD_PRICE,MD_IMAGE,MD_DETAIL_IMAGE
        ,MD_COST,MD_CATEGORY,MD_DISCOUNT,MD_NAME,MD_BRAND,STORE_NO,MD_IMAGE_URL,MD_DETAIL_IMAGE_URL)
        VALUES(MD_NO_SEQ.nextval,#{MD_CONTENT},#{MD_PRICE},#{MD_IMAGE},#{MD_DETAIL_IMAGE}
        ,#{MD_COST},#{MD_CATEGORY},#{MD_DISCOUNT},#{MD_NAME},#{MD_BRAND},#{STORE_NO},#{MD_IMAGE_URL},#{MD_DETAIL_IMAGE_URL})
        INTO TB_ASTOCK(MD_NO,ST_AMOUNT)
        VALUES(MD_NO_SEQ.nextval,#{ST_AMOUNT})
        SELECT * FROM DUAL;
        
        INSERT ALL
        INTO TB_AMD(MD_NO,MD_CONTENT,MD_PRICE,MD_IMAGE,MD_DETAIL_IMAGE
        ,MD_COST,MD_CATEGORY,MD_DISCOUNT,MD_NAME,MD_BRAND,STORE_NO,MD_IMAGE_URL,MD_DETAIL_IMAGE_URL)
        VALUES(MD_NO_SEQ.nextval,'���� ���� ����',8000,'��','��'
        ,7000,'������',1000,'���� ���� ����','���� ����',5,'��','��')
        INTO TB_ASTOCK(MD_NO,ST_AMOUNT)
        VALUES(MD_NO_SEQ.nextval,5)
        SELECT * FROM DUAL;
        
        SELECT TB_AMD.MD_NO,MD_CONTENT,MD_PRICE,MD_IMAGE,MD_DETAIL_IMAGE
        ,MD_COST,MD_CATEGORY,MD_DISCOUNT,MD_NAME,MD_BRAND,STORE_NO,MD_IMAGE_URL,MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT
        FROM TB_AMD LEFT JOIN TB_ASTOCK
        ON TB_AMD.MD_NO = TB_ASTOCK.MD_NO
        
        edit TB_STORE 
        
        
         INSERT ALL
        INTO TB_AMD(MD_NO,MD_CONTENT,MD_PRICE,MD_IMAGE,MD_DETAIL_IMAGE
        ,MD_COST,MD_CATEGORY,MD_DISCOUNT,MD_NAME,MD_BRAND
        ,STORE_NO,MD_IMAGE_URL,MD_DETAIL_IMAGE_URL)
        VALUES(MD_NO_SEQ.nextval,'�ڱ��ʹ�',32,'�ڱ��ʹ�','�ڱ��ʹ�'
        ,32,'�ڱ��ʹ�',32,'�ڱ��ʹ�','�ڱ��ʹ�'
        ,32,'�ڱ��ʹ�','�ڱ��ʹ�')
        INTO TB_ASTOCK(MD_NO,ST_AMOUNT)
        VALUES(MD_NO_SEQ.nextval,'32')
        SELECT * FROM DUAL;
        
        UPDATE  TB_AMD, TB_ASTOCK
      SET  a.column_name = value,
              b.column_name = value
? WHERE  a.�����÷� = value
      AND  b.�����÷� = value
      
      UPDATE TB_AMD, TB_ASTOCK
        SET TB_AMD.MD_CONTENT = #{MD_CONTENT}
        ,TB_AMD.MD_PRICE = #{MD_PRICE}
        ,TB_AMD.MD_NAME = #{MD_NAME}
        ,TB_AMD.MD_IMAGE = #{MD_IMAGE}
        ,TB_AMD.MD_IMAGE_URL = #{MD_IMAGE_URL}
        ,TB_AMD.MD_COST = #{MD_COST}
        ,TB_AMD.MD_CATEGORY = #{MD_CATEGORY}
        ,TB_AMD.MD_DISCOUNT = #{MD_DISCOUNT}
        ,TB_AMD.MD_BRAND = #{MD_BRAND}
        ,TB_AMD.STORE_NO = #{STORE_NO}
        ,TB_AMD.MD_DETAIL_IMAGE=#{MD_DETAIL_IMAGE}
        ,TB_AMD.MD_DETAIL_IMAGE_URL=#{MD_DETAIL_IMAGE_URL}
        ,TB_ASTOCK.ST_AMOUNT=#{ST_AMOUNT}
        WHERE TB_AMD.MD_NO = #{MD_NO}
        AND TB_ASTOCK.MD_NO = #{MD_NO}
        
        
           UPDATE TB_AMD, TB_ASTOCK SET TB_AMD.MD_CONTENT = '�ڱ��ʹ�'
        ,TB_AMD.MD_PRICE = 13
        ,TB_AMD.MD_NAME = '�ڱ��ʹ�'
        ,TB_AMD.MD_IMAGE = '�ڱ��ʹ�'
        ,TB_AMD.MD_IMAGE_URL = '�ڱ��ʹ�'
        ,TB_AMD.MD_COST = #{MD_COST}
        ,TB_AMD.MD_CATEGORY = '�ڱ��ʹ�'
        ,TB_AMD.MD_DISCOUNT = 13
        ,TB_AMD.MD_BRAND = '�ڱ��ʹ�'
        ,TB_AMD.STORE_NO = 13
        ,TB_AMD.MD_DETAIL_IMAGE='�ڱ��ʹ�'
        ,TB_AMD.MD_DETAIL_IMAGE_URL='�ڱ��ʹ�'
        ,TB_ASTOCK.ST_AMOUNT=13
        WHERE TB_AMD.MD_NO = 13

        
        
        
        UPDATE TB_AMD M
 LEFT JOIN TB_ASTOCK
 ON TB_ASTOCK.MD_NO = M.MD_NO
   SET M.MD_CONTENT = '�ڱ��ʹ�'
        ,M.MD_PRICE = 13
        ,M.MD_NAME = '�ڱ��ʹ�'
        ,M.MD_IMAGE = '�ڱ��ʹ�'
        ,M.MD_IMAGE_URL = '�ڱ��ʹ�'
        ,M.MD_COST = 13
        ,M.MD_CATEGORY = '�ڱ��ʹ�'
        ,M.MD_DISCOUNT = 13
        ,M.MD_BRAND = '�ڱ��ʹ�'
        ,M.STORE_NO = #{STORE_NO}
        ,M.MD_DETAIL_IMAGE='�ڱ��ʹ�'
        ,M.MD_DETAIL_IMAGE_URL='�ڱ��ʹ�'
        ,TB_ASTOCK.ST_AMOUNT='13'
 WHERE M.MD_NO = 13
 
  UPDATE TB_AMD
 RIGHT JOIN TB_ASTOCK ON (TB_ASTOCK.MD_NO = TB_AMD.MD_NO)
   SET TB_AMD.MD_CONTENT = #{MD_CONTENT}
        ,TB_AMD.MD_PRICE = #{MD_PRICE}
        ,TB_AMD.MD_NAME = #{MD_NAME}
        ,TB_AMD.MD_IMAGE = #{MD_IMAGE}
        ,TB_AMD.MD_IMAGE_URL = #{MD_IMAGE_URL}
        ,TB_AMD.MD_COST = #{MD_COST}
        ,TB_AMD.MD_CATEGORY = #{MD_CATEGORY}
        ,TB_AMD.MD_DISCOUNT = #{MD_DISCOUNT}
        ,TB_AMD.MD_BRAND = #{MD_BRAND}
        ,TB_AMD.STORE_NO = #{STORE_NO}
        ,TB_AMD.MD_DETAIL_IMAGE=#{MD_DETAIL_IMAGE}
        ,TB_AMD.MD_DETAIL_IMAGE_URL=#{MD_DETAIL_IMAGE_URL}
        ,TB_ASTOCK.ST_AMOUNT=#{ST_AMOUNT}
 WHERE A.MD_NO = #{MD_NO}
 
 
 
 UPDATE /*+ bypass_ujvc */
    (SELECT
        M.MD_NO,M.MD_CONTENT,M.MD_PRICE,M.MD_IMAGE,M.MD_DETAIL_IMAGE
        ,M.MD_COST,M.MD_CATEGORY,M.MD_DISCOUNT,M.MD_NAME,M.MD_BRAND,M.STORE_NO,M.MD_IMAGE_URL,M.MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT
    FROM 
        ARTIST  A,
        ARTIST_GRP B
    WHERE
        A.ARTIST_ID = B.MEMBER_ID --ARTIST ���̺��� ARTIST_ID�� �ݵ�� PK �̾�� �� (11G ���� ������ bypass_ujvc ��Ʈ�� ����)
    ) -- 2���� ���̺��� join �Ͽ� �ϳ��� ���̺�� ����ٰ� ����
SET
    ROLE_TEXT = ROLE_CD --�ش� ���̺��� �÷��� ����
;

  UPDATE 
   (SELECT
        M.MD_NO,M.MD_CONTENT,M.MD_PRICE,M.MD_IMAGE,M.MD_DETAIL_IMAGE
        ,M.MD_COST,M.MD_CATEGORY,M.MD_DISCOUNT,M.MD_NAME,M.MD_BRAND,M.STORE_NO,M.MD_IMAGE_URL,M.MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT 
    FROM 
        TB_ASTOCK,
        TB_AMD M
    WHERE
        M.MD_NO = 13 --ARTIST ���̺��� ARTIST_ID�� �ݵ�� PK �̾�� �� (11G ���� ������ bypass_ujvc ��Ʈ�� ����)
    ) -- 2���� ���̺��� join �Ͽ� �ϳ��� ���̺�� ����ٰ� ����
   SET M.MD_CONTENT = '�ڱ��ʹ�'
        ,M.MD_PRICE = 13
        ,M.MD_NAME = '�ڱ��ʹ�'
        ,M.MD_IMAGE = '�ڱ��ʹ�'
        ,M.MD_IMAGE_URL = '�ڱ��ʹ�'
        ,M.MD_COST = 13
        ,M.MD_CATEGORY = '�ڱ��ʹ�'
        ,M.MD_DISCOUNT = 13
        ,M.MD_BRAND = '�ڱ��ʹ�'
        ,M.STORE_NO = 13
        ,M.MD_DETAIL_IMAGE='�ڱ��ʹ�'
        ,M.MD_DETAIL_IMAGE_URL='�ڱ��ʹ�'
        ,TB_ASTOCK.ST_AMOUNT=13
        
        
        
        UPDATE 
   (SELECT
        M.MD_NO,M.MD_CONTENT,M.MD_PRICE,M.MD_IMAGE,M.MD_DETAIL_IMAGE
        ,M.MD_COST,M.MD_CATEGORY,M.MD_DISCOUNT,M.MD_NAME,M.MD_BRAND,M.STORE_NO,M.MD_IMAGE_URL,M.MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT 
    FROM 
        TB_ASTOCK,
        TB_AMD M
    WHERE
        M.MD_NO = 13 and M.MD_NO = TB_ASTOCK.MD_NO--ARTIST ���̺��� ARTIST_ID�� �ݵ�� PK �̾�� �� (11G ���� ������ bypass_ujvc ��Ʈ�� ����)
    ) -- 2���� ���̺��� join �Ͽ� �ϳ��� ���̺�� ����ٰ� ����
   SET M.MD_CONTENT = '�ڱ��ʹ�'
        ,M.MD_PRICE = 13
        ,M.MD_NAME = '�ڱ��ʹ�'
        ,M.MD_IMAGE = '�ڱ��ʹ�'
        ,M.MD_IMAGE_URL = '�ڱ��ʹ�'
        ,M.MD_COST = 13
        ,M.MD_CATEGORY = '�ڱ��ʹ�'
        ,M.MD_DISCOUNT = 13
        ,M.MD_BRAND = '�ڱ��ʹ�'
        ,M.STORE_NO = 13
        ,M.MD_DETAIL_IMAGE='�ڱ��ʹ�'
        ,M.MD_DETAIL_IMAGE_URL='�ڱ��ʹ�';
       
        
        
        
        UPDATE 
   (SELECT
        M.MD_NO,M.MD_CONTENT,M.MD_PRICE,M.MD_IMAGE,M.MD_DETAIL_IMAGE
        ,M.MD_COST,M.MD_CATEGORY,M.MD_DISCOUNT,M.MD_NAME,M.MD_BRAND,M.STORE_NO,M.MD_IMAGE_URL,M.MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT 
    FROM 
        TB_ASTOCK,
        TB_AMD M )
   SET M.MD_CONTENT = '�ڱ��ʹ�'
        ,M.MD_PRICE = 13
        ,M.MD_NAME = '�ڱ��ʹ�'
        ,M.MD_IMAGE = '�ڱ��ʹ�'
        ,M.MD_IMAGE_URL = '�ڱ��ʹ�'
        ,M.MD_COST = 13
        ,M.MD_CATEGORY = '�ڱ��ʹ�'
        ,M.MD_DISCOUNT = 13
        ,M.MD_BRAND = '�ڱ��ʹ�'
        ,M.STORE_NO = 13
        ,M.MD_DETAIL_IMAGE='�ڱ��ʹ�'
        ,M.MD_DETAIL_IMAGE_URL='�ڱ��ʹ�'
        ,TB_ASTOCK.ST_AMOUNT='13'
        WHERE
        MD_NO = 13;
        
        
        MERGE INTO TB_AMD A

USING TB_ASTOCK B

ON ( A.MD_NO = B.MD_NO )

WHERE MATCHED AND MD_NOTHEN

UPDATE SET A.COL3= B.COL3, A.COL4=B.COL4




 MERGE INTO TB_AMD
USING TB_ASTOCK
ON ( TB_AMD.MD_NO = TB_ASTOCK.MD_NO )
when MATCHED AND TB_AMD.MD_NO =13 THEN
UPDATE SET TB_AMD.MD_CONTENT = '�ڱ��ʹ�'
        ,TB_AMD.MD_PRICE = 13
        ,TB_AMD.MD_NAME = '�ڱ��ʹ�'
        ,TB_AMD.MD_IMAGE = '�ڱ��ʹ�'
        ,TB_AMD.MD_IMAGE_URL = '�ڱ��ʹ�'
        ,TB_AMD.MD_COST = 13
        ,TB_AMD.MD_CATEGORY = '�ڱ��ʹ�'
        ,TB_AMD.MD_DISCOUNT = 13
        ,TB_AMD.MD_BRAND = '�ڱ��ʹ�'
        ,TB_AMD.STORE_NO = 13
        ,TB_AMD.MD_DETAIL_IMAGE='�ڱ��ʹ�'
        ,TB_AMD.MD_DETAIL_IMAGE_URL='�ڱ��ʹ�'
        ,TB_ASTOCK.ST_AMOUNT='13'
        
        
        
        UPDATE TB_AMD T1
 LEFT JOIN TB_ASTOCK T2 ON (T2.MD_NO = T1.MD_NO)
   SET ,TB_AMD.MD_DETAIL_IMAGE_URL='�ڱ��ʹ�'
        ,TB_ASTOCK.ST_AMOUNT='13'
 WHERE T1.MD_NO = 13
 AND T2..MD_NO = 13
 
 
 UPDATE TB_AMD, TB_ASTOCK
        SET TB_AMD.MD_CONTENT = #{MD_CONTENT}
        ,TB_AMD.MD_PRICE = #{MD_PRICE}
        ,TB_AMD.MD_NAME = #{MD_NAME}
        ,TB_AMD.MD_IMAGE = #{MD_IMAGE}
        ,TB_AMD.MD_IMAGE_URL = #{MD_IMAGE_URL}
        ,TB_AMD.MD_COST = #{MD_COST}
        ,TB_AMD.MD_CATEGORY = #{MD_CATEGORY}
        ,TB_AMD.MD_DISCOUNT = #{MD_DISCOUNT}
        ,TB_AMD.MD_BRAND = #{MD_BRAND}
        ,TB_AMD.STORE_NO = #{STORE_NO}
        ,TB_AMD.MD_DETAIL_IMAGE=#{MD_DETAIL_IMAGE}
        ,TB_AMD.MD_DETAIL_IMAGE_URL=#{MD_DETAIL_IMAGE_URL}
        ,TB_ASTOCK.ST_AMOUNT=#{ST_AMOUNT}
        WHERE TB_AMD.MD_NO = #{MD_NO}
        AND TB_ASTOCK.MD_NO = #{MD_NO}
        
        EDIT TB_AMD 
        EDIT TB_ASTOCK 


