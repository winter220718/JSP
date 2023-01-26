<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<h3># 게시판 만들어보기 (2)</h3>
	<ul>
	<li>만들어진 글 목록의 제목을 클릭하면 해당 글의 내용을 보는 페이지로 넘어가기</li>
	<li>글의 내용을 볼때마다 조회수가 올라간다</li>
	<li>목록 페이지의 적당한 위치에 글 쓰기 버튼을 만들고 그 버튼을 누르면 글을 쓸 수 있는
	폼이 있는 페이지로 넘어가기 </li>
	
	</ul>
	
	
	<h3># 게시판 만들어보기 (4)</h3>
	<ul>
		<li>게시글 내용을 보는 곳 아래에는 댓글을 입력할 수 있다</li>
		<li>댓글 입력자도 아이디와 비밀번호를 직접 입력하여 댓글을 작성할 수 있다</li>
		<li>해당 글에 대한 댓글 개수가 목록에서 글 제목 오른쪽에 보여야 한다 ex: [3]</li>
	</ul>

	<a href="/JspBoard/list">게시판 보러 가기</a>
</body>
</html>