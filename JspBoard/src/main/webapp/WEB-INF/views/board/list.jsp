<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<c:url value="/assets/css/button.css" var="bntCSS"></c:url>
<meta charset=UTF-8>
<title>게시판</title>
<link rel="stylesheet" href="${bntCSS}" />
</head>
<body>

	<table>
		<tr>
			<th>No</th>
			<th>Title</th>
			<th>Name</th>
			<th>View</th>
			<th>작성시간</th>
			<th>따봉아이콘</th>
		</tr>
		
		<c:forEach items="${boards}" var="board">
			<tr>
				<td>${board.board_id}</td>
				<td><a href="./contents?board_id=${board.board_id}">${board.write_title}</a></td>
				<td>${board.writer_id}</td>
				<td>${board.write_view}</td>
				<td>${board.creationDateTime}</td> <!-- 오늘건 시간으로.. 어제 이전은 날짜로 -->
				<td>${board.write_recommend}</td>
			</tr>
			<!-- <li id="board${board.board_id}">${board}</li> -->
		</c:forEach>
	</table>
	
	<c:forEach begin="${pagination_start}" end="${pagination_end}" var="i">
		<a href="./list?page=${i}">${i}</a>
	</c:forEach>
	
	<a class="btn" href="./write">글쓰기</a>

</body>
</html>