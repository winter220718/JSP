<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>

	<h3># 글쓰기</h3>
	
	<ul>
		<li>글 번호 : 사용자가 적는게 아님 (시퀀스가 있음)</li>
		<li>글쓴이 : 사용자가 적을 수 있음 (로그인 된 사용자는 저절로 채워짐)</li>
		<li>비밀번호 : 사용자가 설정할 수 있음 (로그인 된 사용자는 비밀번호 적는란이 안보임)</li>
		<li>글 제목 : 사용자가 쓴다</li>
		<li>글 내용 : 사용자가 쓴다</li>
		<li>글 작성 시간 : 사용자가 적는게 아님 (DB의 sysdate를 사용함)</li>
		<li>조회 수 : 사용자가 적는게 아님</li>
		<li>추천 수 : X</li>
		<li>비추 수 : X</li>
	</ul>

	<!-- 같은 주소로 POST 방식의 요청을 보낸다 -->
	<form action="./write" method="POST">
		글쓴이 : <input type="text" name="writer_id"/>
		비밀번호 : <input type="password" name="writer_pw"/> <br>
		글 제목 : <input type="text" name="write_title" size="60"/> <br>
		글 내용 : <br>
		<textarea name="write_content" rows="10" cols="40"></textarea>
		<input type="submit" value="글쓰기" />
	</form>	
	
	<script src="<%=request.getContextPath()%>/assets/script/form.js"></script>

</body>
</html>