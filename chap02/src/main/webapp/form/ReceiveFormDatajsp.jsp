<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
// ��û
   // JSP�� �����̱� ������ �����͸� ���� �� �ִ�
   String hobby = request.getParameter("hobby");
   String boba = request.getParameter("boba");
   String coffee = request.getParameter("coffee");
%>
<!--  ����  -->
<html>
   <head>
      <title>Form Data</title>
   </head>
   <body>
      <h1>Success!</h1>
      
      <div>hobby: <%=hobby %></div>
      <div>boba: <%=boba %></div>
      <div>coffee: <%=coffee %></div>
   </body>

</html>