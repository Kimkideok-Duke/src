CREATE TABLE PROJECT (
    pno NUMBER PRIMARY KEY,
    title varchar2(50) NOT NULL,
    ptype varchar2(50) NOT NULL,
    purpose varchar2(50) NOT NULL,
    code char(8) NOT NULL UNIQUE
);
SELECT * FROM PROJECT;

CREATE SEQUENCE seq_pno
			INCREMENT BY 1
			START WITH 1
			MAXVALUE 9999;

INSERT INTO PROJECT values (seq_pno.nextval, ?, ?, ?, ?);

CREATE TABLE MEMBER (
    userno NUMBER NOT NULL,
    pno NUMBER NOT NULL,
    auth varchar2(50) NOT NULL
);