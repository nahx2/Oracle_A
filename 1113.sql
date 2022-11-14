ALTER TABLE tb_reply DROP CONSTRAINT FK_tb_community_TO_tb_reply_1;

ALTER TABLE tb_reply ADD CONSTRAINT FK_tb_community_TO_tb_reply_1 FOREIGN KEY (board_no) 
REFERENCES tb_community(board_no) ON DELETE CASCADE;

COMMIT


--정기구독 종료일 기본값 0
ALTER TABLE tb_subs MODIFY sub_end DEFAULT 0;

--정기구독 배송주기 기본값 28
ALTER TABLE tb_subs MODIFY sub_period DEFAULT 28;

--주문테이블 적립금사용금액 기본값 0
ALTER TABLE tb_order MODIFY order_used_point DEFAULT 0;

COMMIT
부탁드려용