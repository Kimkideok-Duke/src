-- 프로젝트
CREATE TABLE project(
	pno NUMBER PRIMARY KEY,
	title varchar2(50),
	ptype varchar2(50),
	purpose varchar2(50),
	code char(8)
);
SELECT * FROM project;

--일정
CREATE TABLE schedule(
	itemno number PRIMARY KEY,
	pno number REFERENCES project(pno),
	item varchar2(30),
	progress varchar2(10) CONSTRAINTS schedule_progress_ck
		CHECK (progress IN ('기본','진행중','막힘','완료')),
	deadline DATE,
	comment varchar2(100),
	perm varchar2(50)
);
SELECT * FROM SCHEDULE ;

--회원
CREATE TABLE account(
	userno NUMBER PRIMARY KEY,
	email varchar2(50) NOT NULL UNIQUE,
	id varchar(12) NOT NULL UNIQUE,
	pw varchar(16) NOT NULL,
	name varchar2(50) NOT NULL,
	joindate DATE NOT NULL,
	agree number(1) NOT NULL CHECK (agree IN (0,1))
);

CREATE SEQUENCE account_seq
	START WITH 10000
	MINVALUE 10000
	MAXVALUE 999999
	INCREMENT BY 1;

SELECT * FROM account;
INSERT INTO account values(account_seq.nextval,'asd123@naver.com','asd123','aa1111','홍길동',sysdate,'Y');
DROP userTable;

--팀원
CREATE TABLE member(
	userno NUMBER REFERENCES account(userno),
	pno NUMBER REFERENCES project(pno),
	auth varchar2(10) CONSTRAINTS member_auth_ck
		CHECK (auth IN ('HOST','MANAGER'))
);
SELECT * FROM MEMBER;
DROP TABLE MEMBER;

--활동로그
CREATE TABLE log(
	logno NUMBER PRIMARY KEY,
	itemno NUMBER REFERENCES schedule(itemno),
	pno NUMBER REFERENCES project(pno),
	userno NUMBER REFERENCES account(userno),
	logDate DATE,
	category varchar2(50)
);

--참여인원
CREATE TABLE participate(
	itemno NUMBER REFERENCES schedule(itemno),
	userno NUMBER REFERENCES account(userno)
);

--공지사항
CREATE TABLE notice(
	noticeno NUMBER PRIMARY KEY,
	pno NUMBER REFERENCES project(pno),
	title varchar2(100),
	content varchar2(500),
	createdate DATE,
	views NUMBER
);
