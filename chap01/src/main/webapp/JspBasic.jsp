<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Basic</title>
</head>
<body>

	<%-- JSP �ּ� --%>
	<!-- HTML �ּ� (ũ�ұ��� ���� ���õǴ� �ּ�) -->

	<h3># Web Server</h3>

	<ul>
		<li>��û�� ���� �˸��� �ڿ��� �����Ѵ�</li>
		<li>��û�� ���� �ٸ� ������ ���������� ���Ѵ�</li>
		<li>�׸� �ּ��� -> �׸��� �ش�</li>
		<li>�� ������ �ּ��� -> �������� �ش�</li>
		<li>������ ������ ó��</li>

	</ul>
	<h3># Web Application Server</h3>

	<ul>
		<li>�� �����ʹ� �ٸ��� ��û�� ������ �˸��� ���ø����̼� ������ �����Ͽ�</li>
		<li>���α׷��� �� ����� DB�� �����ϴ� ���� ������ ������ �� ����</li>
		<li>������ ������ ó��</li>
	</ul>

	<h3># JSP�� �����ΰ�?</h3>

	<ui>
	<li>Java server Pages (JSP)</li>
	<li>���� �� �������� �����ϱ� ����, Java�� ���� API</li>
	<li>HTML�ȿ� ���ϴ´�� Java�ڵ带 ������ ���� �� �ִ�</li>

	</ui>

	<%-- JSP Script --%>

	<%-- 
			
		<% %> : �ڹ� �ڵ带 ����� �� �ִ� ���� ( �޼��� ���� ���, ���� x)
		<%= %> : ���ϴ� ���� HTML�� ��� (out.print()�� ���� ��)
		<%! %> : �޼��带 ������ �� �ִ� ���� (Ŭ���� ���� ���)
		<%@ %> : JSP ���� �ɼ� ���� ����
		
	 --%>

	<h3># JSP�� ó�� ����</h3>
	
	<ul>
		<li>.jsp ������ 1���� �ڹ� �ڵ� ���·� ��ȯ�ȴ�.</li>
		<li>��ȯ�� �ڹ� �ڵ带 ������ �Ͽ� �� �����̳�(Tomcat)�� ����Ѵ�</li>
		<li>Ŭ���̾�Ʈ�� �ش� �������� ��û�Ҷ����� �� �����̳ʿ� ��ϵǾ� �ִ� ������ ������� �����Ͽ�
		�����Ǵ� HTML�ڵ带 �����Ѵ�.
		(.jsp�� ������ ������� �����ϸ� �ش� HTML �ڵ带 ��ȯ�ϴ� ���α׷��̴�)</li>
	</ul>
	



	<%
	//�޼��� ���� ���
	int a = 10;
	int b = 20;

	// out - HTML �������� �������� OutputStream
	out.print("<a href='http://www.naver.com' style='color: red;'>���̹�!</a>");

	class Apple {
		int size;
		int sweet;

		public Apple() {
			size = 10;
			sweet = 9;
		}

		public String toString() {
			return "<h3>����Դϴ�~</h3>";
		}
	}

	out.print(new Apple()); // object Ÿ���� to string�� ȣ��ȴ�
	for (int i = 0; i < 10; ++i) {
		out.print(rabbit());
		System.out.println("������� �䳢�� ��� "  + rabbitCount + "���� �Դϴ�.");
	}
	
	
	%>

	<%!
	
	// Ŭ���� ���� ��� (�޼��� ���� ����, �ν��Ͻ� ���� ���� ����)
	int rabbitCount= 0; // �ν��Ͻ� ����, Ŭ���� ���ο� ������ �����ϴ°� �ν��ϼ� ������

	String rabbit() {
		return "<pre> /)/)\n(  ..)\n(   >$\nGood Luck " + rabbitCount++ +"</pre>";
	}%>
	
	<p>���� �䳢�� <%=rabbitCount %>���� </p>
	
	


</body>
</html>