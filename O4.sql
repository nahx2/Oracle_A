
SELECT INDATE_VC �Ǹų�¥, SUM(QTY_NU)||'��' �ǸŰ���, SUM(QTY_NU*PRICE_NU)||'��' �ǸŰ���
FROM T_ORDERBASKET
GROUP BY INDATE_VC
UNION ALL
SELECT NVL2(A.�Ǹų�¥,'�Ѱ�',NULL) �Ǹų�¥,SUM(A.�ǸŰ���)||'��' �ǸŰ���, SUM(A.�ǸŰ���)||'��' �ǸŰ���
FROM( SELECT INDATE_VC �Ǹų�¥, SUM(QTY_NU) �ǸŰ���, SUM(QTY_NU*PRICE_NU) �ǸŰ���
FROM T_ORDERBASKET
GROUP BY INDATE_VC) A
GROUP BY NVL2(A.�Ǹų�¥,'�Ѱ�',NULL)


SELECT INDATE_VC �Ǹų�¥, SUM(QTY_NU)||'��' �ǸŰ���, SUM(QTY_NU*PRICE_NU)||'��' �ǸŰ���
FROM T_ORDERBASKET
GROUP BY INDATE_VC
UNION ALL
SELECT NVL2(COUNT(INDATE_VC),'�Ѱ�',NULL) �Ǹų�¥,SUM(QTY_NU)||'��' �ǸŰ���, SUM(QTY_NU*PRICE_NU)||'��' �ǸŰ��� --�Ǹų�¥�� ������ ġȯ�ҰŶ� ī��Ʈ ��
FROM T_ORDERBASKET


SELECT DECODE(INDATE_VC,NULL,'�Ѱ�',INDATE_VC) �Ǹų�¥
,SUM(QTY_NU)||'��' �ǸŰ���,SUM(QTY_NU*PRICE_NU)||'��' �ǸŰ���
FROM T_ORDERBASKET
GROUP BY ROLLUP (INDATE_VC)
