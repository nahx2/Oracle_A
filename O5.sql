
SELECT COLL,DECODE(R2,1,'����ڰ��а�',2,'�����а�',3,'������а�',4,'�������а�',5,'�ڵ�ȭ���а�',6,'�����а�'
        ,7,'������а�',8,'���ڰ��а�',9,'�������а�',10,'��ǻ�Ͱ��а�',11,'�װ����ְ��а�',12,'ȭ�а��а�') DEPT,
        DECODE(MOD(JR,4),1,'1�г�',2,'2�г�',3,'3�г�',0,'4�г�') KEY3,KEY4
         FROM(SELECT DECODE((R2-R1),0,FRE,-1,SUP,-2,JUN,-3,SEN,NULL) KEY4,R1,COLL, DEPT,R2,FRE,SUP,JUN,SEN,ROWNUM JR
FROM(SELECT ROWNUM R1,COLL, DEPT
        FROM TEST11) R1,(SELECT ROWNUM R2,FRE,SUP,JUN,SEN
        FROM (SELECT * FROM TEST11 ORDER BY DEPT))
        WHERE DECODE((R2-R1),0,FRE,-1,SUP,-2,JUN,-3,SEN,NULL) IS NOT NULL)
        WHERE ROWNUM<27

SELECT COLL,DECODE(R2,1,'����ڰ��а�',2,'�����а�',3,'������а�',4,'�������а�',5,'�ڵ�ȭ���а�',6,'�����а�'
        ,7,'������а�',8,'���ڰ��а�',9,'�������а�',10,'��ǻ�Ͱ��а�',11,'�װ����ְ��а�',12,'ȭ�а��а�') DEPT,
        DECODE(MOD(JR,4),1,'1�г�',2,'2�г�',3,'3�г�',0,'4�г�') KEY3,KEY4
                FROM( SELECT DECODE((R1),1,FRE,2,SUP,3,JUN,4,SEN,NULL) KEY4,R1,COLL, DEPT,R2,FRE,SUP,JUN,SEN,ROWNUM JR
                     FROM ( SELECT R1,COLL, DEPT,R2,FRE,SUP,JUN,SEN,ROWNUM JR
                            FROM (SELECT ROWNUM R1,COLL, DEPT
                                         FROM TEST11)
                                ,(SELECT ROWNUM R2,FRE,SUP,JUN,SEN
                                         FROM (SELECT * FROM TEST11 ORDER BY DEPT))
                                                        WHERE DECODE((R1),1,FRE,2,SUP,3,JUN,4,SEN,NULL) IS NOT NULL))


SELECT COLL,DECODE(R2,1,'����ڰ��а�',2,'�����а�',3,'������а�',4,'�������а�',5,'�ڵ�ȭ���а�',6,'�����а�'
        ,7,'������а�',8,'���ڰ��а�',9,'�������а�',10,'��ǻ�Ͱ��а�',11,'�װ����ְ��а�',12,'ȭ�а��а�') DEPT
                ,DECODE(R1,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') KEY3,DECODE(R1,1,FRE,2,SUP,3,JUN,4,SEN,NULL) KEY4
                     FROM ( SELECT R1,COLL, R2,FRE,SUP,JUN,SEN
                            FROM (SELECT ROWNUM R1,COLL, DEPT
                                         FROM TEST11)
                                ,(SELECT ROWNUM R2,FRE,SUP,JUN,SEN
                                         FROM (SELECT * FROM TEST11 ORDER BY DEPT))
                                                        WHERE DECODE((R1),1,FRE,2,SUP,3,JUN,4,SEN,NULL) IS NOT NULL)


SELECT COLL,DEPT
                        ,DECODE(R1,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') KEY3,DECODE(R1,1,FRE,2,SUP,3,JUN,4,SEN) KEY4
                         FROM ( SELECT R1,COLL, DEPT, FRE,SUP,JUN,SEN
                                FROM (SELECT ROWNUM R1
                                             FROM TEST11)
                                     ,(SELECT * FROM TEST11))
                                       WHERE R1<5
                                       ORDER BY DEPT ,KEY3
                    SELECT COLL,DEPT
                        ,DECODE(R1,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') KEY3,DECODE(R1,1,FRE,2,SUP,3,JUN,4,SEN) KEY4
                         FROM ( SELECT R1,COLL, DEPT, FRE,SUP,JUN,SEN
                                FROM (SELECT ROWNUM R1
                                             FROM TEST11)
                                     ,(SELECT COLL, DEPT,FRE,SUP,JUN,SEN
                                               FROM (SELECT * FROM TEST11 ORDER BY DEPT)))
                                       WHERE R1<5
                      SELECT COLL,DEPT
                        ,DECODE(R1,1,'1�г�',2,'2�г�',3,'3�г�',4,'4�г�') KEY3,DECODE(R1,1,FRE,2,SUP,3,JUN,4,SEN) KEY4
                         FROM ( SELECT R1,COLL, DEPT, FRE,SUP,JUN,SEN
                                FROM (SELECT ROWNUM R1
                                             FROM TEST11
                                             WHERE ROWNUM<5)
                                     ,(SELECT COLL, DEPT,FRE,SUP,JUN,SEN
                                               FROM (SELECT * FROM TEST11 ORDER BY DEPT)))
                                               ORDER BY DEPT ,KEY3

