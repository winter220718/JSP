<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<dl>
		<dt>1. meta �±��� charset</dt>
		<dd>Ŭ���̾�Ʈ�� �� �������� �ش� �������� �ؼ��� �� ����� charset</dd>
		<dt>2. contentType�� charset</dt>
		<dd>�� �������� ������ ���� ������� charset</dd>
		<dt>3. pageEncoding�� charset</dt>
		<dd>.jsp�� .java�� 1�� ������ ���� charset</dd>
		<dt>4. ���� ������������ Eclipse�� ����ϰ� �ִ� charset</dt>
		<dd>�츮�� �ϵ� ��ũ�� �����Ҷ� ����� ���ڵ� Ÿ�� �� ���� ��Ŭ�� �� Properties�� ���� Ȯ���� ��
			����</dd>

	</dl>

	<h3># �������� �ѱ� ������ ������</h3>
	<p>GET��� �Ķ���� ���� URI���� �ؼ��Ǳ� ������ ���� ������ �ٲ���� ��</p>
	<form action="/chap05/encodingTest" method="GET">
		<input type="hidden" value="��ġ����" name="samkim"> <input
			type="hidden" value="��纣��������" name="smoothie"> <input
			type="submit" value="������">

	</form>

	<!-- web.xml�� ������ ���� /encodingTest�� ������ ��û�� EncodingServlet���� ���������� -->

	<h3># �������� �ѱ� ������ ������ (POST ���)</h3>
	<p>POST ��� �Ķ���� ���� ��û ��ü ���ο� �Ƿ����Ƿ�
	��û ��ü�� ���ڵ� Ÿ���� �����ؾ� �Ѵ�</p>
	
	<form action="/chap05/encodingTest" method="POST">
		<input type="hidden" value="������Ұ��" name="samkim">
		<input
			type="hidden" value="���⽺����" name="smoothie">
			<input
			type="submit" value="������">

	</form>


</body>
</html>