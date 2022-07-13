DROP TABLE notice;
CREATE TABLE notice(
	noticeno NUMBER PRIMARY KEY,
	pno NUMBER,
    FOREIGN KEY (pno)
    REFERENCES PROJECT (pno),
	title varchar2(100) NOT NULL,
	content varchar2(2000) NOT NULL,
	creatdate DATE NOT NULL,
	views NUMBER NOT NULL
);
SELECT * FROM notice;
CREATE SEQUENCE notice_seq
	START WITH 1
	MINVALUE 1
	MAXVALUE 999999
	INCREMENT BY 1;

INSERT INTO notice VALUES(notice_seq.nextval, ?,'?', '?', sysdate, 0);