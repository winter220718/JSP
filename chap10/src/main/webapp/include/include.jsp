<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 분할하기</title>
</head>
<body>

	<h3># include를 통해 파일 분할하기</h3>
	
	<ul>
		<li>
			JSP include : 
			포워드처럼 request/response를 다른 jsp로 보냈다가 다시 돌아오는 기능 <br>
			(서블릿 상태에서 요청을 보내 응답을 생성한 결과를 사용한다.)
			pageContext를 사용할 수 없다
			</li>
		<li>
			File include :
			해당 파일 내용을 읽어서 jsp 내부에 포함시키는 기능<br>
			(컴파일 이전에 파일 내용을 포함 시켜버린후에 컴파일을 진행한다. 하나의 서블릿이 됨)<br>
			pageContext를 사용할 수 있다
		</li>
		
		
	</ul>
	
	<a href="./main.jsp">main 페이지 보러 가기</a><br>
	<a href="../file_include/main.jsp">/file_include/main 페이지 보러 가기</a><br>
</body>
</html>