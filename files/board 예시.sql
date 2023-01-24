SELECT * FROM BOARD;

create sequence board_seq;
INSERT INTO BOARD VALUES(3, '안녕하세요', '1234', '노래 추천', 'love dive', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(board_seq.nextval, '안녕하세요', '1234', '노래 추천', 'love dive', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(board_seq.nextval, '죠리퐁', '1234', '과자 추천', '죠리퐁', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(53, '감자', '1234', '음식 추천', '바로바로..감자', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(32, '치즈감튀', '1234', '치즈감튀가 제일 맛있습니다', '버거메이슨 배달비 비싸요', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(35, '개구리', '1234', '노래 추천', 'love dive', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(13, '정수정', '1234', '취미는 코딩과 독서입니다.', '정말입니다', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(74, '저엉수정', '1234', '짭수정', '코딩을 좋아하는 정수정? 글쎄요', sysdate, 0, 0,0);
INSERT INTO BOARD VALUES(5, '저엉수저엉', '1234', 'OOO노래 추천합니다', '눈이 마주쳤을때 들으세요', sysdate, 0, 0,0);

commit;