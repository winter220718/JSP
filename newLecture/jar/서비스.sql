--getNoticeList
SELECT ROWNUM, NOTICE.* FROM NOTICE ORDER BY REGDATE DESC;


--���������� �̿�
SELECT * FROM (
SELECT ROWNUM NUM, N.* FROM (SELECT * FROM NOTICE ORDER BY REGDATE DESC) N

)

WHERE ROWNUM BETWEEN 6 AND 10;



--getNoticeCount

--getNotice

--getNextNotice

--getPrevNotice