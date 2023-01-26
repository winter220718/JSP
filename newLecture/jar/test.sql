CREATE TABLE NOTICE
(
     ID		NUMBER,
     TITLE 		NVARCHAR2(100),
     WRITER_ID	NVARCHAR2(50),
     CONTENT	CLOB,
     REGDATE  	TIMESTAMP,
     HIT		NUMBER,
     FILES		NVARCHAR2(1000)
);

CREATE TABLE "COMMENT"
(
     ID		NUMBER,
     CONTENT	NVARCHAR2(2000),
     REGDATE  	TIMESTAMP,
     WRITER_ID	NVARCHAR2(50),
     NOTICE_ID	NUMBER
);

CREATE TABLE ROLE
(
     ID		VARCHAR2(50),
     DISCRIPTION 	NVARCHAR2(500)
);

CREATE TABLE MEMBER_ROLE
(
     MEMBER_ID	NVARCHAR2(50),
     ROLE_ID		VARCHAR2(50)
);



commit;


SELECT * FROM NOTICE;
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, '���� �ٶ��ϴ�. 010-1111-1111', 'quest','����ó�� ����ϴ�',sysdate,0, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, '��������', 'quest','����ó�� ����ϴ�',sysdate,0, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test', '���õ� ī����','����',sysdate,0, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test', '���õ� ����','��',sysdate,0, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test', '��','����',sysdate,0, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test1', '���쵿���','������',sysdate,0, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test', '���δ�ٷ�','�Ҹ���',sysdate,1, null);

CREATE SEQUENCE ID_SEQ;

--���ι���
select N.ID, N.TITLE, N.WRITER_ID, N.REGDATE, N.HIT, N.FILES, COUNT(C.ID) CMT_COUNT
from notice N LEFT JOIN "COMMENT" C ON N.ID = C.NOTICE_ID
GROUP BY N.ID, N.TITLE, N.WRITER_ID, N.REGDATE, N.HIT, N.FILES
order by n.regdate desc;

--����?
SELECT * FROM (
SELECT ROWNUM NUM, N.* FROM (SELECT * FROM NOTICE WHERE TITLE LIKE '%%' ORDER BY REGDATE DESC) N) 
WHERE NUM BETWEEN 1 AND 10


