<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>들어오면 팝업창이 뜨는 페이지</title>
</head>
<body>

<h3>원래 여기 들어오면 팝업창이 뜸</h3>


	<script>
	const url="./popup.jsp";
	const name ="popup";
	
	// window.open() : 새 창을 열어주는 자바 스크립트 메서드
	window.open(url, name, "width=250, height=250, toolbar=yes, location=no");
	
	</script>
</body>
</html>