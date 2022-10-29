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
        VALUES(MD_NO_SEQ.nextval,'좋은 느낌 중형',8000,'ㅇ','ㅇ'
        ,7000,'생리대',1000,'좋은 느낌 중형','좋은 느낌',5,'ㅇ','ㅇ')
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
        VALUES(MD_NO_SEQ.nextval,'자구싶다',32,'자구싶다','자구싶다'
        ,32,'자구싶다',32,'자구싶다','자구싶다'
        ,32,'자구싶다','자구싶다')
        INTO TB_ASTOCK(MD_NO,ST_AMOUNT)
        VALUES(MD_NO_SEQ.nextval,'32')
        SELECT * FROM DUAL;
        
        UPDATE  TB_AMD, TB_ASTOCK
      SET  a.column_name = value,
              b.column_name = value
? WHERE  a.조건컬럼 = value
      AND  b.조건컬럼 = value
      
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
        
        
           UPDATE TB_AMD, TB_ASTOCK SET TB_AMD.MD_CONTENT = '자구싶다'
        ,TB_AMD.MD_PRICE = 13
        ,TB_AMD.MD_NAME = '자구싶다'
        ,TB_AMD.MD_IMAGE = '자구싶다'
        ,TB_AMD.MD_IMAGE_URL = '자구싶다'
        ,TB_AMD.MD_COST = #{MD_COST}
        ,TB_AMD.MD_CATEGORY = '자구싶다'
        ,TB_AMD.MD_DISCOUNT = 13
        ,TB_AMD.MD_BRAND = '자구싶다'
        ,TB_AMD.STORE_NO = 13
        ,TB_AMD.MD_DETAIL_IMAGE='자구싶다'
        ,TB_AMD.MD_DETAIL_IMAGE_URL='자구싶다'
        ,TB_ASTOCK.ST_AMOUNT=13
        WHERE TB_AMD.MD_NO = 13

        
        
        
        UPDATE TB_AMD M
 LEFT JOIN TB_ASTOCK
 ON TB_ASTOCK.MD_NO = M.MD_NO
   SET M.MD_CONTENT = '자구싶다'
        ,M.MD_PRICE = 13
        ,M.MD_NAME = '자구싶다'
        ,M.MD_IMAGE = '자구싶다'
        ,M.MD_IMAGE_URL = '자구싶다'
        ,M.MD_COST = 13
        ,M.MD_CATEGORY = '자구싶다'
        ,M.MD_DISCOUNT = 13
        ,M.MD_BRAND = '자구싶다'
        ,M.STORE_NO = #{STORE_NO}
        ,M.MD_DETAIL_IMAGE='자구싶다'
        ,M.MD_DETAIL_IMAGE_URL='자구싶다'
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
        A.ARTIST_ID = B.MEMBER_ID --ARTIST 테이블의 ARTIST_ID가 반드시 PK 이어야 함 (11G 이전 버전은 bypass_ujvc 힌트로 가능)
    ) -- 2개의 테이블을 join 하여 하나의 테이블로 만든다고 생각
SET
    ROLE_TEXT = ROLE_CD --해당 테이블의 컬럼을 수정
;

  UPDATE 
   (SELECT
        M.MD_NO,M.MD_CONTENT,M.MD_PRICE,M.MD_IMAGE,M.MD_DETAIL_IMAGE
        ,M.MD_COST,M.MD_CATEGORY,M.MD_DISCOUNT,M.MD_NAME,M.MD_BRAND,M.STORE_NO,M.MD_IMAGE_URL,M.MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT 
    FROM 
        TB_ASTOCK,
        TB_AMD M
    WHERE
        M.MD_NO = 13 --ARTIST 테이블의 ARTIST_ID가 반드시 PK 이어야 함 (11G 이전 버전은 bypass_ujvc 힌트로 가능)
    ) -- 2개의 테이블을 join 하여 하나의 테이블로 만든다고 생각
   SET M.MD_CONTENT = '자구싶다'
        ,M.MD_PRICE = 13
        ,M.MD_NAME = '자구싶다'
        ,M.MD_IMAGE = '자구싶다'
        ,M.MD_IMAGE_URL = '자구싶다'
        ,M.MD_COST = 13
        ,M.MD_CATEGORY = '자구싶다'
        ,M.MD_DISCOUNT = 13
        ,M.MD_BRAND = '자구싶다'
        ,M.STORE_NO = 13
        ,M.MD_DETAIL_IMAGE='자구싶다'
        ,M.MD_DETAIL_IMAGE_URL='자구싶다'
        ,TB_ASTOCK.ST_AMOUNT=13
        
        
        
        UPDATE 
   (SELECT
        M.MD_NO,M.MD_CONTENT,M.MD_PRICE,M.MD_IMAGE,M.MD_DETAIL_IMAGE
        ,M.MD_COST,M.MD_CATEGORY,M.MD_DISCOUNT,M.MD_NAME,M.MD_BRAND,M.STORE_NO,M.MD_IMAGE_URL,M.MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT 
    FROM 
        TB_ASTOCK,
        TB_AMD M
    WHERE
        M.MD_NO = 13 and M.MD_NO = TB_ASTOCK.MD_NO--ARTIST 테이블의 ARTIST_ID가 반드시 PK 이어야 함 (11G 이전 버전은 bypass_ujvc 힌트로 가능)
    ) -- 2개의 테이블을 join 하여 하나의 테이블로 만든다고 생각
   SET M.MD_CONTENT = '자구싶다'
        ,M.MD_PRICE = 13
        ,M.MD_NAME = '자구싶다'
        ,M.MD_IMAGE = '자구싶다'
        ,M.MD_IMAGE_URL = '자구싶다'
        ,M.MD_COST = 13
        ,M.MD_CATEGORY = '자구싶다'
        ,M.MD_DISCOUNT = 13
        ,M.MD_BRAND = '자구싶다'
        ,M.STORE_NO = 13
        ,M.MD_DETAIL_IMAGE='자구싶다'
        ,M.MD_DETAIL_IMAGE_URL='자구싶다';
       
        
        
        
        UPDATE 
   (SELECT
        M.MD_NO,M.MD_CONTENT,M.MD_PRICE,M.MD_IMAGE,M.MD_DETAIL_IMAGE
        ,M.MD_COST,M.MD_CATEGORY,M.MD_DISCOUNT,M.MD_NAME,M.MD_BRAND,M.STORE_NO,M.MD_IMAGE_URL,M.MD_DETAIL_IMAGE_URL,TB_ASTOCK.ST_AMOUNT 
    FROM 
        TB_ASTOCK,
        TB_AMD M )
   SET M.MD_CONTENT = '자구싶다'
        ,M.MD_PRICE = 13
        ,M.MD_NAME = '자구싶다'
        ,M.MD_IMAGE = '자구싶다'
        ,M.MD_IMAGE_URL = '자구싶다'
        ,M.MD_COST = 13
        ,M.MD_CATEGORY = '자구싶다'
        ,M.MD_DISCOUNT = 13
        ,M.MD_BRAND = '자구싶다'
        ,M.STORE_NO = 13
        ,M.MD_DETAIL_IMAGE='자구싶다'
        ,M.MD_DETAIL_IMAGE_URL='자구싶다'
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
UPDATE SET TB_AMD.MD_CONTENT = '자구싶다'
        ,TB_AMD.MD_PRICE = 13
        ,TB_AMD.MD_NAME = '자구싶다'
        ,TB_AMD.MD_IMAGE = '자구싶다'
        ,TB_AMD.MD_IMAGE_URL = '자구싶다'
        ,TB_AMD.MD_COST = 13
        ,TB_AMD.MD_CATEGORY = '자구싶다'
        ,TB_AMD.MD_DISCOUNT = 13
        ,TB_AMD.MD_BRAND = '자구싶다'
        ,TB_AMD.STORE_NO = 13
        ,TB_AMD.MD_DETAIL_IMAGE='자구싶다'
        ,TB_AMD.MD_DETAIL_IMAGE_URL='자구싶다'
        ,TB_ASTOCK.ST_AMOUNT='13'
        
        
        
        UPDATE TB_AMD T1
 LEFT JOIN TB_ASTOCK T2 ON (T2.MD_NO = T1.MD_NO)
   SET ,TB_AMD.MD_DETAIL_IMAGE_URL='자구싶다'
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


