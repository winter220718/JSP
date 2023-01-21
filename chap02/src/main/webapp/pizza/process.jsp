<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <!-- import 하는 방법 -->
<%@ page import="java.util.Map,java.util.HashMap" %>
<%
	// 사이즈 값 맵핑 시켜주기
	Map<String, String> sizeMap = new HashMap<>();

	sizeMap.put("l", "Large");
	sizeMap.put("r", "Regular");
	sizeMap.put("m", "Medium");
	sizeMap.put("f", "Family");

	String name = request.getParameter("name");
	String adress = request.getParameter("adress");
	String crust = request.getParameter("crust");
	String size = request.getParameter("size");
	String[] toppings = request.getParameterValues("topping");
	String instructions = request.getParameter("instructions");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Order Summary</h1>
	
	<h3>Deliver to</h3>
	
	<div>
		<%=name %> <br>
		<%=adress %> <br>
	</div>
	
	<h3>Order</h3>
	
	<div>
		<b>Crust</b>: <%=crust %> <br>
		<b>Size</b>: <%=sizeMap.get(size) %> <br>
		<b>Topping(s)</b>: <br>
		<% if (toppings != null) { %>
			<% for (int i = 0; i < toppings.length; ++i) {%>
			<i class="topping" id"<%=toppings[i] %>"><%=toppings[i] %></i>
			<%} %>
		<%} %>
		<b>Instructions</b>:<%=instructions %>
	</div>
</body>
</html>