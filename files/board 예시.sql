SELECT * FROM BOARD;

create sequence board_seq;
INSERT INTO BOARD VALUES(3, '�ȳ��ϼ���', '1234', '�뷡 ��õ', 'love dive', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(board_seq.nextval, '�ȳ��ϼ���', '1234', '�뷡 ��õ', 'love dive', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(board_seq.nextval, '�Ҹ���', '1234', '���� ��õ', '�Ҹ���', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(53, '����', '1234', '���� ��õ', '�ٷιٷ�..����', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(32, 'ġ�Ƣ', '1234', 'ġ�Ƣ�� ���� ���ֽ��ϴ�', '���Ÿ��̽� ��޺� ��ο�', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(35, '������', '1234', '�뷡 ��õ', 'love dive', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(13, '������', '1234', '��̴� �ڵ��� �����Դϴ�.', '�����Դϴ�', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(74, '��������', '1234', '¬����', '�ڵ��� �����ϴ� ������? �۽��', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(5, '����������', '1234', 'OOO�뷡 ��õ�մϴ�', '���� ���������� ��������', sysdate, 0, 0,0);

commit;