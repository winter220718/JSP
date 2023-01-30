<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>${board.write_title}</title>
</head>
<body>

	글 번호 : ${board.board_id}
	글 제목 : ${board.write_title} <br>
	글쓴이 : ${board.writer_id} <br>
	글 내용 : <br> 
	<textarea readonly="readonly" cols="30" rows="10">${board.write_content}</textarea> <br>
	추천 수 : ${board.write_recommend} <br>
	비추 수 : ${board.write_not_recommend} <br>
	조회 수 : ${board.write_view} <br>
	<br>
	<form action="">
		댓글 : <br>
		<textarea rows="5" cols="50"></textarea>
		<input type="submit" value="등록" />
	</form>
	
	<br>
	
	<!-- 주소창을 입력해서 가는 것은 GET방식 -->
	<button onclick="location.href='./list?page=1'">글 목록</button>
	<button onclick="location.href='./modify?board_id=${board.board_id}'">글 수정</button>
	<button onclick="location.href='./delete?board_id=${board.board_id}'">글 삭제</button>

</body>
</html>