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
CREATE TABLE userTable(
	userno NUMBER PRIMARY KEY,
	email varchar2(50),
	id varchar2(12),
	pw varchar2(16),
	name varchar2(50),
	joindate DATE,
	agree char(1) CONSTRAINTS userTable_agree_ck
		CHECK (agree IN ('Y','N'))
);
SELECT * FROM USERTable;

--팀원
CREATE TABLE member(
	userno NUMBER REFERENCES user(userno),
	pno NUMBER REFERENCES project(pno),
	perm varchar2(10) CONSTRAINTS member_perm_ck
		CHECK (perm IN ('HOST','MANAGER'))
);

--활동로그
CREATE TABLE log(
	logno NUMBER PRIMARY KEY,
	itemno NUMBER REFERENCES schedule(itemno),
	pno NUMBER REFERENCES project(pno),
	userno NUMBER REFERENCES user(userno),
	logDate DATE,
	category varchar2(50)
);

--참여인원
CREATE TABLE participate(
	itemno NUMBER REFERENCES schedule(itemno),
	userno NUMBER REFERENCES user(userno)
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
