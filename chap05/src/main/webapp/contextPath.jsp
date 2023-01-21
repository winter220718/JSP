<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># Context Path</h3>
		
		<ul>
			<li>Context Path는 현재 프로젝트의 Context로 접근할 수 있는 경로를 의미한다
			(server.xml에 설정해 놓는 값)</li>
			<li>기본값은 프로젝트 이름과 똑같은 이름으로 설정된다</li>
			<li>하지만 이름은 언제든 변경될 수 있으므로 주의해야 한다</li>
		</ul>
		
		
		<!-- 갈수있는방법이 몇가지나? -->
		<a href="http://localhost:9000/<%=request.getContextPath() %>/encoding.jsp">http://chap05/encoding.jsp</a><br>
		<a href="<%=request.getContextPath() %>/encoding.jsp"><%=request.getContextPath() %>/encoding.jsp</a><br>
		<a href="<%=request.getContextPath() %>/encodingResult.jsp?samkim=스팸김치&smoothie=딸기민트초코바나나"><%=request.getContextPath() %>/encodingResult.jsp</a><br>
		<a href="<%=request.getContextPath() %>/HelloJsp.jsp"><%=request.getContextPath() %>/HelloJsp.jsp</a><br>
		<a href="<%=request.getContextPath() %>/index.jsp"><%=request.getContextPath() %>/index.jsp</a><br>
		<a href="./encoding.jsp">./encoding.jsp</a><br>
</body>
</html>