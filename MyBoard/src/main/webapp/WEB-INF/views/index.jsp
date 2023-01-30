<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Home!</title>
</head>
<body>

홈페이지입니다.
<br><br>

<a href="<%=request.getContextPath() %>/list.jsp">겟판</a>
<button onclick = "location.href ='./list'">게시판</button>


</body>
</html>