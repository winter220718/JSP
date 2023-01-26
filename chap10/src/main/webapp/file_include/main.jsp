<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setAttribute("address","경기도 구리시");
pageContext.setAttribute("address", "붕어빵");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인입니다..</title>
<%@ include file="/file_include/header.jspf" %>
</head>
<body>

<%@ include file="/file_include/top.jspf" %>

<h1 style="font-family: 'Unbounded'; ">THIS IS MAIN!메인입니다!</h1>

<h3><i class="Fa"></i></h3>

<p style="font-family: 'Explora';">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<i class="fa-sharp fa-solid fa-house"></i>

<%@ include file="/file_include/bottom.jspf" %>

</body>
</html>