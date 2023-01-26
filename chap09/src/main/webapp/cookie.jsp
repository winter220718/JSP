<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>

<h3># Cookie란 무엇인가</h3>

<ul>
	<li>서버에서 최초로 생성하여 클라이언트의 웹 브라우저로 최초로 전송</li>
	<li>key/value로 이루어져 있다</li>
	<li>해당 쿠키의 수명(maxAge)과 path를 설정할 수 있다</li>
	<li>maxAge단위는 초, 0은 삭제, -1는 세션</li>
	<li>이미 있는 쿠키값이면 값을 수정하고, 최초의 쿠키값이라면 새로운 쿠키를 추가한다</li>
	<li>쿠키는 각 웹 브라우저가 알아서 보관</li>
	<li>웹 브라우저에 저장되어 있는 쿠키는 서버로 요청시 리퀘스트 객체에 포함되어 함께 전송된다</li>
</ul>

<h3># Cookie의 사용 순서</h3>
<ol>

<li>최초로 서버에서 새로운 쿠키를 생성하고 응답에 함께 실어 보낸다</li>
<li>웹 브라우저에 도착한 응답에 쿠키가 있다면 웹 브라우저에 저장 된다</li>
<li>쿠키가 살아있는 동안은 해당 서버로 보내는 모든 요청에 해당 쿠키가 포함된다</li>
</ol>

<button onclick="location.href='<%=request.getContextPath() %>/cookie/add'">쿠키 추가하러 가기</button>
<button onclick="location.href='<%=request.getContextPath() %>/cookie/usage'">쿠키 값 활용하기</button>
</body>
</html> 