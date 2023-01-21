<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3># 전달받은 파라미터는 살아 있을까?</h3>

<ul>
<li>hobby: <%=request.getParameter("hobby") %></li>
<li>favorite: <%=request.getParameter("favorite") %></li>
</ul>

</body>
</html>