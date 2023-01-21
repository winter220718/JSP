<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>How to Install JSP.jsp</title>
<style>
#url-example {
	poition: relative;
	border: solid 3px red;
	padding: 15px;
	word-spacing: -5px;
}

#protocol {
	border: solid 2px blue;
}

#protocol+div {
	position: absolute;
	color: blue;
	font-size: 0.8em;
}

#ip-address {
	border: solid 2px orange;
}

#ip-address+div {
	position: absolute;
	color: orange;
	font-size: 0.8em;
	left: 7em;
	top: -3px;
}

#port-number {
	border: solid 2px green;
}

#port-number+div {
	position: absolute;
	color: green;
	font-size: 0.8em;
	left: 13em;
}

#uri {
	border: solid 2px red;
}

#uri+div {
	position: absolute;
	color: red;
	font-size: 0.8em;
	left: 27em;
	top: -3px;
	word-spacing: 0px; /*���� ����ȭ*/
}
</style>
</head>
<body>

	<h3># �������� (Protocol)</h3>

	<ul>
		<li>��� �Ծ�</li>
		<li>����� ������ �����ϰ� ��� ������ �̸��� ���̴� ��</li>
		<li>ftp, http, telnet, smtp ... ���</li>
	</ul>

	<h3># HTTP ��������</h3>

	<ol>
		<li>�����(Ŭ���̾�Ʈ, Client)�� �� ���������� �ּ�â�� ���� ���� �������� url�� �Է��Ѵ�. (��ũ��
			Ŭ���ϴ� �͵� �ּ�â�� url�� �Է��ϴ� �Ͱ� ���� ȿ���� �ִ�)</li>
		<li>�� �������� url�� ���Ե� ȣ��Ʈ�� IP �ּҸ� ���� �ش� �� ������ ��û(Request)�� ������
			protocol://ip_addr:port/uri ��Ʈ��ȣ 80,443 ��������</li>
		<li>��û�� ���� �� ������ Ŭ���̾�Ʈ�� ���� URL�� ���� �˸��� ��� (�� ������, �̹���, css, js
			��)�� Ŭ���̾�Ʈ���� ����(Response)�Ѵ�</li>
		<li>������ ���� Ŭ���̾�Ʈ�� �� �������� �ش� ������ �ؼ��Ͽ� Ŭ���̾�Ʈ���� �����ش�</li>

	</ol>
	<h3># URL</h3>

	<div id="url-example">
		<span id="protocol">https://</span>
		<div>��������</div>
		<span id="ip-address">comic.naver.com</span>
		<div>IP�ּ�(DNS)</div>
		<span id="port-number">(:443)</span>
		<div>��Ʈ��ȣ(���� ����)</div>
		<span id="uri">/webtoon/detail?titleId=748105&no=205</span> <span></span>
		<div>URI(� ������ ��û�� ������)</div>
	</div>

	<h3># DNS (Domain Name Service)</h3>

	<ul>
		<li>IP�ּ� �ڸ��� ��� �� �� �ִ� IP�ּҺ��� ���� ���� �̸�</li>
		<li>IP�ּҴ� �ܿ�� ���� �ܿ�� ���� �̸����� ġȯ���ִ� �����̴�</li>
		<li>URL�� IP�ּ� ��� ������ �̸��� ����ϸ� ��ó�� DNS�������� �˸��� IP�ּҸ� ã�� �� �ش� ������
			ã�ư��� �ȴ�</li>
	</ul>

	<h3># ��Ʈ ��ȣ</h3>

	<ul>
		<li>�ش� �����Ͱ� � ���α׷��� ���������� �����ϱ� ���� ��ȣ</li>
		<li>0 ~ 65535������ �ִ� (2byte)</li>
		<li>���������� ����ϴ� �� �˷��� ��Ʈ��ȣ(well-known port)���� �ִ�</li>
		<li>�� �˷��� ��Ʈ��ȣ���� URL���� ������ �����ϴ� (80,22,23,443,...)</li>
	</ul>
</body>
</html>
