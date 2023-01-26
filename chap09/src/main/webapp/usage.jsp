<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	// request에는 항상 현재 경로에서 사용할 수 있는 쿠키값이 포함됨    
    // 사용할 수 있는 모든 쿠키를 열어보기  
    
    Cookie[] cookies = request.getCookies();
    
    for (Cookie cookie : cookies){
    	
    }
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h3>현재 이경로에서 사용할 수 있는 모든 쿠키 목록</h3>
<%
for (Cookie cookie : cookies){ %>

<div><%=cookie.getName()%> = <%=cookie.getValue() %></div>
	
<%}%>



</body>
</html>