
CREATE TABLE diary
(
    diary_no             NUMBER(10) NOT NULL ,
    diary_image          VARCHAR2(4000) NULL ,
    diary_imageurl       VARCHAR2(4000) NULL ,
    diary_content        VARCHAR2(4000) NULL ,
    diary_date           VARCHAR2(4000) NOT NULL 
);



CREATE UNIQUE INDEX XPKdiary ON diary
(diary_no   ASC);



ALTER TABLE diary
    ADD CONSTRAINT  XPKdiary PRIMARY KEY (diary_no);



CREATE TABLE info
(
    info_no              NUMBER(38) NOT NULL ,
    info_cate            VARCHAR2(40) NOT NULL ,
    info_content         VARCHAR2(4000) NULL ,
    info_date            VARCHAR2(100) NOT NULL ,
    info_image           VARCHAR2(100) NULL ,
    info_imageurl        VARCHAR2(4000) NULL ,
    info_yn              VARCHAR2(10) NOT NULL 
);

    SELECT
             info_no,
             info_cate,
             info_date,
             info_yn
         FROM
             info

CREATE UNIQUE INDEX XPKinfo ON info
(info_no   ASC);



ALTER TABLE info
    ADD CONSTRAINT  XPKinfo PRIMARY KEY (info_no);



CREATE TABLE want
(
    want_no              NUMBER(38) NOT NULL ,
    want_cate            VARCHAR2(40) NOT NULL ,
    want_content         VARCHAR2(4000) NULL ,
    want_date            VARCHAR2(100) NOT NULL ,
    want_image           VARCHAR2(100) NULL ,
    want_imageurl        VARCHAR2(4000) NULL 
);



CREATE UNIQUE INDEX XPKwant ON want
(want_no   ASC);



ALTER TABLE want
    ADD CONSTRAINT  XPKwant PRIMARY KEY (want_no);

edit INFO 

--seq 만들기
CREATE SEQUENCE info_no_seq;
CREATE SEQUENCE diary_no_seq;
CREATE SEQUENCE want_no_seq;

--인포 YN 디폴트 N 만들기
ALTER TABLE INFO  MODIFY INFO_YN DEFAULT 'N';