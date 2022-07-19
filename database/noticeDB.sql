-- notice 테이블 생성
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
-- notice 테이블 조회
SELECT * FROM notice;
-- noticeno 시퀀스 재시작 위해 삭제
drop sequence notice_seq;
-- noticeno 시퀀스 생성
CREATE SEQUENCE notice_seq
	START WITH 1
	MINVALUE 1
	MAXVALUE 999999
	INCREMENT BY 1;
-- noticeno 초기 데이터 삽입
INSERT INTO notice VALUES(notice_seq.nextval,2,'제목','내용',sysdate,0);
INSERT INTO notice VALUES(notice_seq.nextval,2,'안녕하세요','내용',sysdate,0);
INSERT INTO notice VALUES(notice_seq.nextval,2,'제목2','내용',sysdate,0);
INSERT INTO notice VALUES(notice_seq.nextval,2,'제목3','내용',sysdate,0);
INSERT INTO notice VALUES(notice_seq.nextval,2,'제목4','내용',sysdate,0);
INSERT INTO notice VALUES(notice_seq.nextval,21,'제목80','dkdksldk',sysdate,0);
INSERT INTO notice VALUES(notice_seq.nextval,21,'제wpahr','내애애앵용',sysdate,0);

-- noticeno로 테이블 조회
SELECT* FROM notice
WHERE noticeno=1;
-- noticeno로 테이블 수정
update notice
	set title = '제목1',
		content = '내용1'
where noticeno = 1;

SELECT *
FROM notice WHERE 1=1
	AND title LIKE '%'||'제목'||'%'
ORDER BY creatdate DESC;

SELECT *
FROM participate;

INSERT INTO PARTICIPATE values(2, 10001);

SELECT * FROM SCHEDULE;

SELECT * FROM PROJECT;

SELECT m.userno, prj.TITLE, s.item, s.progress, TO_DATE(TO_CHAR(DEADLINE, 'YYYYMMDD')) - TO_DATE(sysdate) 남은날짜
FROM schedule s, participate p, project prj, MEMBER m
WHERE prj.pno = s.pno AND s.itemno = p.itemno AND m.pno = prj.pno
AND m.userno = #{userno}
AND m.pno = #{pno}
AND PROGRESS = #{progress}
OR sysdate between s.DEADLINE and TO_CHAR(SYSDATE + 3 ,'yyyy/mm/dd'));

SELECT m.userno, prj.TITLE, s.item, s.progress,
TO_DATE(TO_CHAR(DEADLINE, 'YYYYMMDD')) - TO_DATE(sysdate) 남은날짜
FROM schedule s, participate p, project prj, MEMBER m
WHERE prj.pno = s.pno AND s.itemno = p.itemno AND m.pno = prj.pno
AND m.userno = #{userno}
AND m.pno = #{pno}
AND sysdate between s.DEADLINE and TO_CHAR(SYSDATE + 3 ,'yyyy/mm/dd');

SELECT * FROM MEMBER;
SELECT n.pno, n.NOTICENO, m.userno m.AUTH 
FROM MEMBER m, notice n
WHERE m.pno=n.pno
AND m.pno=?
AND 