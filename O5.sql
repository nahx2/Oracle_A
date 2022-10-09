
SELECT COLL,DECODE(R2,1,'고분자공학과',2,'기계공학과',3,'산업공학과',4,'섬유공학과',5,'자동화공학과',6,'재료공학과'
        ,7,'전기공학과',8,'전자공학과',9,'조선공학과',10,'컴퓨터공학과',11,'항공우주공학과',12,'화학공학과') DEPT,
        DECODE(MOD(JR,4),1,'1학년',2,'2학년',3,'3학년',0,'4학년') KEY3,KEY4
         FROM(SELECT DECODE((R2-R1),0,FRE,-1,SUP,-2,JUN,-3,SEN,NULL) KEY4,R1,COLL, DEPT,R2,FRE,SUP,JUN,SEN,ROWNUM JR
FROM(SELECT ROWNUM R1,COLL, DEPT
        FROM TEST11) R1,(SELECT ROWNUM R2,FRE,SUP,JUN,SEN
        FROM (SELECT * FROM TEST11 ORDER BY DEPT))
        WHERE DECODE((R2-R1),0,FRE,-1,SUP,-2,JUN,-3,SEN,NULL) IS NOT NULL)
        WHERE ROWNUM<27

SELECT COLL,DECODE(R2,1,'고분자공학과',2,'기계공학과',3,'산업공학과',4,'섬유공학과',5,'자동화공학과',6,'재료공학과'
        ,7,'전기공학과',8,'전자공학과',9,'조선공학과',10,'컴퓨터공학과',11,'항공우주공학과',12,'화학공학과') DEPT,
        DECODE(MOD(JR,4),1,'1학년',2,'2학년',3,'3학년',0,'4학년') KEY3,KEY4
                FROM( SELECT DECODE((R1),1,FRE,2,SUP,3,JUN,4,SEN,NULL) KEY4,R1,COLL, DEPT,R2,FRE,SUP,JUN,SEN,ROWNUM JR
                     FROM ( SELECT R1,COLL, DEPT,R2,FRE,SUP,JUN,SEN,ROWNUM JR
                            FROM (SELECT ROWNUM R1,COLL, DEPT
                                         FROM TEST11)
                                ,(SELECT ROWNUM R2,FRE,SUP,JUN,SEN
                                         FROM (SELECT * FROM TEST11 ORDER BY DEPT))
                                                        WHERE DECODE((R1),1,FRE,2,SUP,3,JUN,4,SEN,NULL) IS NOT NULL))


SELECT COLL,DECODE(R2,1,'고분자공학과',2,'기계공학과',3,'산업공학과',4,'섬유공학과',5,'자동화공학과',6,'재료공학과'
        ,7,'전기공학과',8,'전자공학과',9,'조선공학과',10,'컴퓨터공학과',11,'항공우주공학과',12,'화학공학과') DEPT
                ,DECODE(R1,1,'1학년',2,'2학년',3,'3학년',4,'4학년') KEY3,DECODE(R1,1,FRE,2,SUP,3,JUN,4,SEN,NULL) KEY4
                     FROM ( SELECT R1,COLL, R2,FRE,SUP,JUN,SEN
                            FROM (SELECT ROWNUM R1,COLL, DEPT
                                         FROM TEST11)
                                ,(SELECT ROWNUM R2,FRE,SUP,JUN,SEN
                                         FROM (SELECT * FROM TEST11 ORDER BY DEPT))
                                                        WHERE DECODE((R1),1,FRE,2,SUP,3,JUN,4,SEN,NULL) IS NOT NULL)


SELECT COLL,DEPT
                        ,DECODE(R1,1,'1학년',2,'2학년',3,'3학년',4,'4학년') KEY3,DECODE(R1,1,FRE,2,SUP,3,JUN,4,SEN) KEY4
                         FROM ( SELECT R1,COLL, DEPT, FRE,SUP,JUN,SEN
                                FROM (SELECT ROWNUM R1
                                             FROM TEST11)
                                     ,(SELECT * FROM TEST11))
                                       WHERE R1<5
                                       ORDER BY DEPT ,KEY3
                    SELECT COLL,DEPT
                        ,DECODE(R1,1,'1학년',2,'2학년',3,'3학년',4,'4학년') KEY3,DECODE(R1,1,FRE,2,SUP,3,JUN,4,SEN) KEY4
                         FROM ( SELECT R1,COLL, DEPT, FRE,SUP,JUN,SEN
                                FROM (SELECT ROWNUM R1
                                             FROM TEST11)
                                     ,(SELECT COLL, DEPT,FRE,SUP,JUN,SEN
                                               FROM (SELECT * FROM TEST11 ORDER BY DEPT)))
                                       WHERE R1<5
                      SELECT COLL,DEPT
                        ,DECODE(R1,1,'1학년',2,'2학년',3,'3학년',4,'4학년') KEY3,DECODE(R1,1,FRE,2,SUP,3,JUN,4,SEN) KEY4
                         FROM ( SELECT R1,COLL, DEPT, FRE,SUP,JUN,SEN
                                FROM (SELECT ROWNUM R1
                                             FROM TEST11
                                             WHERE ROWNUM<5)
                                     ,(SELECT COLL, DEPT,FRE,SUP,JUN,SEN
                                               FROM (SELECT * FROM TEST11 ORDER BY DEPT)))
                                               ORDER BY DEPT ,KEY3

