ALTER TABLE tb_reply DROP CONSTRAINT FK_tb_community_TO_tb_reply_1;

ALTER TABLE tb_reply ADD CONSTRAINT FK_tb_community_TO_tb_reply_1 FOREIGN KEY (board_no) 
REFERENCES tb_community(board_no) ON DELETE CASCADE;

COMMIT


--���ⱸ�� ������ �⺻�� 0
ALTER TABLE tb_subs MODIFY sub_end DEFAULT 0;

--���ⱸ�� ����ֱ� �⺻�� 28
ALTER TABLE tb_subs MODIFY sub_period DEFAULT 28;

--�ֹ����̺� �����ݻ��ݾ� �⺻�� 0
ALTER TABLE tb_order MODIFY order_used_point DEFAULT 0;

COMMIT
��Ź�����