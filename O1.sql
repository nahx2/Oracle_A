

SELECT WORKCD_VC, TIME_NU, RANK() OVER(ORDER BY TIME_NU ASC) RANK
FROM T_WORKTIME


--1. 영어가사만 나오게 하기
SELECT * FROM T_LETITBE
WHERE MOD(SEQ_VC,2) = 1
--2. 한글가사만 나오게 하기
SELECT * FROM T_LETITBE
WHERE MOD(SEQ_VC,2) = 0
--3. 영어가사 한글가사 번갈아 나오게 하기
SELECT * FROM
(SELECT * FROM T_LETITBE
WHERE MOD(SEQ_VC,2) = 1
UNION ALL
SELECT * FROM T_LETITBE
WHERE MOD(SEQ_VC,2) = 0 )
ORDER BY TO_NUMBER(SEQ_VC) asc

-----이건 그냥 GROUP BY하려고 노력하다 실패하고 나온 실행 가능 소스들
SELECT * FROM
(SELECT seq_vc, decode(mod(seq_vc,2),1, words_vc) E
 FROM t_letitbe
UNION ALL
SELECT
seq_vc, decode(mod(seq_vc,2),0, words_vc) E
FROM t_letitbe
INTERSECT
 SELECT * FROM  t_letitbe
WHERE words_vc IS NOT NULL)
ORDER BY TO_NUMBER(seq_vc) asc
SELECT * FROM
(SELECT seq_vc,DECODE(MOD(seq_vc,2),1,words_vc,null) E
FROM t_letitbe
UNION ALL
SELECT seq_vc,DECODE(MOD(seq_vc,2),0,words_vc,null) E
FROM t_letitbe)
WHERE E IS NOT NULL
ORDER BY TO_NUMBER(seq_vc) asc