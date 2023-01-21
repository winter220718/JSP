<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Form</title>
</head>
<body>

	<h3># form �±�</h3>
	
	<ul>
		<li>������ ��û�� ������ �����͸� �Բ� ������ ���� �±�</li>
		<li>
			form �±� ������ input �±׵��� ����
			����ڰ� ������ ���� ������ ���� �� �ִ�
		</li>
		<li>�����͸� key-value ������� �Ǿ� ������</li>
		<li>input �±��� name �Ӽ��� key ������ �Ѵ�</li>
		<li>input �±��� value �Ӽ��� value ������ �Ѵ�</li>
		<li>GET��İ� POST��� �� ���ϴ� ����� ������ �� �ִ�</li>
	</ul>
	
	<!-- 
		action: � �ּҷ� ��û�� ���� ���ΰ�
		method: � ������� ��û�� ���ΰ�
	-->
	<h3># Get ��� ��û</h3>
	
	<ul>
		<li>�ּҰ� �ڿ� �����͸� �Բ� �Ǿ� ������</li>
		<li>�ּ�?key=value&key=value ...</li>
		<li>
			�ּ�â�� URL�� ���� �Է��ϰų�, 
			��ũ�� Ŭ���ϴ� ����� �⺻������ GET����̴�
		</li>
		<li>DB���� �����ðŴ� ��� �ǹ̸� ����</li>
	</ul>
	
	<a href="http://localhost:9000/chap02/test1?hobby=sleeping&coffee=latte">
		��ũ�� ������ ���� ������
	</a>
	
	<form action="http://localhost:9000/chap02/test1" method="GET">
		hobby: <input type="text" name="hobby" value="movie"> <br>
		boba: <input type="text" name="boba" value="taro"> <br>
		coffee: <input type="password" name="coffee" value="latte"> <br>
		<input type="submit" value="OK!!" >
	</form>
	
	<h3># Post ��� ��û</h3>
	
	<ul>
		<li>URL�� ���� �Է��ϰų� ��ũ�� ���� ������ �� ���� (form �Ǵ� javascript)</li>
		<li>
			�ּ� �ڿ� �Բ� �Ƿ����� ����� �ƴ϶� ������ ������ �ʴ� ���·� ���޵ȴ�
			(��Ŷ�� ����� ��� ������ �� ���� �ִ�)
		</li>
		<li>request ��ü�� body��� �ʵ忡 �Ƿ��� ���۵ȴ�</li>
		<li>
			passwordŸ���� ��� GET��Ŀ� ����ϱ⿡�� ����ġ ���ϱ� ������(�ּ�â�� ���� �� ������)
			POST����� �̿��ؾ� �Ѵ�
		</li>
		<li>DB�� �����Ŵ� ��� �ǹ̸� ����</li>
	</ul>
	
	<!-- 
		�� �󿡼� ����θ� �� ���� ���� URL�� ���������� �ľ��ؾ� �Ѵ�
		
		���� URL�� /chap02/form/index.jsp �� ��
		
		./�� /chap02/form/ �� �ǹ��Ѵ�
		../�� /chap02/ �� �ǹ��Ѵ�
	 -->
	 
	 <form action="../test1" method="POST">
	 <!-- input type="hidden" ���� �����ϸ� ���� ������ �ʴ´� -->
	 	<input type="hidden" name="hobby" value="drink"> 
	 	<input type="submit" value="Send!">
	 </form>
	 
    <form action="./ReceiveFormDatajsp.jsp" method="POST">
         <input type="hidden" name="hobby" value="drink">
         <input type="submit" value="Send to JSP!" />
   	</form>
	 
	 <hr>
	 
	 <h3># ��ĺ��� �ٸ��� ó���ϱ� (Servlet)</h3>
	 
	 <ul>
	 	<li>���������� ��û ��ĺ��� �ٸ��� ó���� �� �ִ� ����� �����Ѵ�</li>
	 	<li>service(): ��� ��û�� ó���Ѵ�</li>
	 	<li>doGet(): Get��� ��û�� ó���Ѵ�</li>
	 	<li>doPost(): Post��� ��û�� ó���Ѵ�</li>
	 	
	 </ul>
	 
	 <a href="/chap02/test2?name=john">GET��� ��û ������ (TEST2)</a>
	 
	 <form id="myform" action="/chap02/test2" method="POST"/>
	 <!-- form �ٱ��� �ִ� input�� form�Ӽ��� �����ϸ� �Ҽ����� ���� �� �ִ� -->
	 	<input type="text" form="myform" name="name" value="mike">
	 	<input type="submit" form="myform" name="submit(Test2)">
	 
	
</body>
</html>