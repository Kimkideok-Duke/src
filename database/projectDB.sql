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

SELECT * FROM ACCOUNT;

CREATE TABLE MEMBER (
    userno NUMBER NOT NULL,
    pno NUMBER NOT NULL,
    auth varchar2(50) NOT NULL
);
SELECT * FROM account; 
INSERT INTO MEMBER VALUES (10001, 2, 'host');

SELECT * FROM MEMBER;

/*
INSERT INTO PROJECT values (seq_pno.nextval, #{title}, #{ptype}, #{purpose}, #{code})

SELECT TITLE, p.PNO 
FROM PROJECT p, MEMBER m 
WHERE p.PNO = m.PNO
AND m.USERNO = ${userno}


INSERT INTO MEMBER VALUES (#{userno}, #{pno), 'member')
INSERT INTO MEMBER VALUES (#{userno}, #{pno), 'host')

SELECT pno
FROM PROJECT
WHERE code=#{code}

SELECT m.userno, pno, name, auth
FROM MEMBER m, ACCOUNT a 
WHERE m.userno = a.userno
AND pno = #{pno}
ORDER BY AUTH

DELETE
FROM MEMBER
WHERE userno = #{userno}
AND pno = #{pno}
*/
INSERT INTO PROJECT values (seq_pno.nextval, '첫프로젝트', '타입', '목적', '12345678');

SELECT * 
FROM PROJECT p, MEMBER m 
WHERE p.PNO = m.PNO
AND USERNO = 10001;

SELECT pno
FROM PROJECT
WHERE code='55574275';

SELECT m.userno, pno, name, auth
FROM MEMBER m, ACCOUNT a 
WHERE m.userno = a.userno
AND pno = 2
ORDER BY AUTH;

