CREATE TABLE user(
	id varchar2(30),
	pw varchar2(30),
	name varchar2(30),
	perm char(1) CONSTRAINTS user_perm_ck
		CHECK (perm IN ('H','M','N'))
	
);

CREATE 
CREATE TABLE item(
	name varchar2(30)
);
INSERT INTO item values('플로우 차트');
SELECT * FROM item;