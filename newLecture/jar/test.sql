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
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, '���� �ٶ��ϴ�. 010-1111-1111', 'quest','����ó�� ����ϴ�',sysdate,3, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, '��������', 'quest','����ó�� ����ϴ�',sysdate,3, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test', '���õ� ī����','����',sysdate,23, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test', '���õ� ����','��',sysdate,13, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test', '��','����',sysdate,53, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test1', '���쵿���','������',sysdate,0, null);
INSERT INTO NOTICE VALUES(ID_SEQ.NEXTVAL, 'test', '���δ�ٷ�','�Ҹ���',sysdate,1, null);
CREATE SEQUENCE ID_SEQ;