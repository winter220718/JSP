<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Hello</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/hello.css">
</head>
<body>


	<h1>Hello, ${name }</h1>
	
	<p> HTML(jsp 말고), CSS, Javascript, image 등의 자원들은
	서버로 요청을 보내 받아오는 정적 자원(static resource)들이다
	</p>

	<a href="<%=request.getContextPath() %>/gugudan">구구단 보러가기</a>


	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/me.png">
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/github.png">
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/velog.png">
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resource/js/hello.js"></script>

</body>
</html>