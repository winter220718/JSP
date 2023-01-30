<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${type}을 위해 비밀번호를 입력하세요</title>
</head>
<body>
	<c:choose>
		<c:when test="${type == 'modify'}">
			${type} 비밀번호를 입력해 주세요. <br>
			<form action="./modify" method="POST">
				<input name="user_pw" type="password" />
				<input name="board_id" type="hidden" value="${board_id}"/>
				<input type="submit" value="confirm"/>
			</form>
		</c:when>
		<c:when test="${type == 'delete'}">
			${type} 비밀번호를 입력해 주세요. <br>
			<form action="./delete" method="POST">
				<input name="user_pw" type="password" />
				<input name="board_id" type="hidden" value="${param.board_id}"/>
				<input type="submit" value="confirm"/>
			</form>
		</c:when>
		<c:otherwise>
			잘못된 접근입니다. <br>
			<a href="./list">목록으로 돌아가기</a>
		</c:otherwise>
	</c:choose>

</body>
</html>