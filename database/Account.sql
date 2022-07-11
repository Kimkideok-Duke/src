/*
회원(계정)테이블
userno 유저 고유번호 (기본키)
email 이메일 (not null, 중복 불가)
id 아이디 (not null, 중복 불가)
pw 비밀번호 (not null)
name 이름 (not null)
joindate 가입일 (not null)
agree 알림여부 (not null, (0 - true, 1 - false))
*/
CREATE TABLE account(
	userno NUMBER PRIMARY KEY,
	email varchar2(50) NOT NULL UNIQUE,
	id varchar(12) NOT NULL UNIQUE,
	pw varchar(16) NOT NULL,
	name varchar2(50) NOT NULL,
	joindate DATE NOT NULL,
	agree number(1) NOT NULL CHECK (agree IN (0,1))
);

/*
계정 고유번호 시퀀스
10000 ~ 999999 1씩 증가
*/
CREATE SEQUENCE acc_seq
       INCREMENT BY 1
       START WITH 10000
       MINVALUE 10000
       MAXVALUE 999999
       NOCYCLE;
SELECT * FROM account;

INSERT INTO account values(acc_seq.nextval, 'abcabc@naver.com', 'abcabc', 'abcabc123', '홍길동', sysdate, 0);
