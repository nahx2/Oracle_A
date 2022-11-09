ALTER TABLE tb_msg ADD (from_id VARCHAR(20))

ALTER TABLE tb_msg RENAME COLUMN msg_to_member_no TO to_id

COMMIT

edit TB_POINT 

edit TB_DELIVERY 

ALTER TABLE tb_community ADD filename varchar2(300)

ALTER TABLE tb_community ADD fileurl varchar2(300)

COMMIT

edit TB_MEMBER 
edit TB_STORE 
edit TB_MD
edit TB_CART 
