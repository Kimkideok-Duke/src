CREATE TABLE user(
	NO NUMBER PRIMARY KEY,
	id varchar2(30),
	pw varchar2(30),
	name varchar2(30)
);
CREATE TABLE project(
	NO NUMBER PRIMARY KEY,
	code char(8),
	TYPE varchar2(30)
);
CREATE TABLE member(
	userNo NUMBER REFERENCES user(no),
	projectNo NUMBER REFERENCES project(no),
	perm char(1) CONSTRAINTS member_perm_ck
		CHECK (perm IN ('A','B','C'))
);

CREATE TABLE schedule(
	projectNo NUMBER REFERENCES project(no),
	item varchar2(30),
	MEMBER varchar2(300),
	progress varchar2(10) CONSTRAINTS schedule_progress_ck
		CHECK (progress IN ('기본','진행중','막힘','완료')),
	deadline DATE
);

CREATE TABLE comment(
	
	content varchar2()
);

INSERT INTO item values('플로우 차트');
SELECT * FROM item;