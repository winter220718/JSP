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
	
	<p> HTML(jsp ����), CSS, Javascript, image ���� �ڿ�����
	������ ��û�� ���� �޾ƿ��� ���� �ڿ�(static resource)���̴�
	</p>

	<a href="<%=request.getContextPath() %>/gugudan">������ ��������</a>


	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/me.png">
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/github.png">
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/velog.png">
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resource/js/hello.js"></script>

</body>
</html>