<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   // Attribute�� Object Ÿ������ ��ϵǱ� ������ �����Ӱ� ����ϱ� ���ؼ��� �ٿ�ĳ������ �ʿ��ϴ�
   chap04.model.Student student = 
      (chap04.model.Student)(request.getAttribute("info"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

   <h3># ������ �Ŀ� ���� �ִ� attribute���� Ȯ���ϱ�</h3>
   
   <ul>
      <li>
         page: <%=pageContext.getAttribute("food") %>
         (������ �ϸ� �����)
      </li>
      <li>
         request: <%=request.getAttribute("food") %>
         (������ ��ġ�� ���� ���ο� ��û�� ��찡 ����)
      </li>
      <li>
         session: <%=session.getAttribute("food") %>
         (�ѹ� ����ϰ��� �� �������� �������� ������)
      </li>
      <li>
         application: <%=application.getAttribute("food") %>
         (�ѹ� ����ϰ��� ������ �������� ������)
      </li>
   </ul>
   
   <h3># attribute�� ���� ����</h3>
   
   Student name:  <%=student.name %> <br>
   Student kor:  <%=student.kor %> <br>
   Student eng:  <%=student.eng %> <br>
   Student math:  <%=student.math %> <br>
   
   <h3># attribute �� ���� ���� ���� ���� (EL, Expression Language)</h3>
   
   <!-- Student�� �ڹٷ� ������� ������ toString()������ �ʿ��ϴ� -->
    Student info: ${info } <br>
    Food info: ${food } <br>
    
    <h3># EL�� �� �ʵ尪�� �����ϱ� (�ش� ��ü�� Getter�� �����Ǿ� �־�� ��)</h3>
    
    Math: ${info.math } <br>
    Average: ${info.avg } (���� �ʵ尡 ������ getter�� ������ ���� ����) <br>
   
</body>
</html>