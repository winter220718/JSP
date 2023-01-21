<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Basic</title>
</head>
<body>

	<%-- JSP 주석 --%>
	<!-- HTML 주석 (크롬까지 가서 무시되는 주석) -->

	<h3># Web Server</h3>

	<ul>
		<li>요청이 오면 알맞은 자원을 응답한다</li>
		<li>요청에 따라 다른 응답을 생성하지는 못한다</li>
		<li>그림 주세요 -> 그림을 준다</li>
		<li>이 페이지 주세요 -> 페이지를 준다</li>
		<li>정적인 컨텐츠 처리</li>

	</ul>
	<h3># Web Application Server</h3>

	<ul>
		<li>웹 서버와는 다르게 요청을 받으면 알맞은 애플리케이션 로직을 실행하여</li>
		<li>프로그래밍 언어를 사용해 DB에 접속하는 등의 로직을 수행할 수 있음</li>
		<li>동적인 컨텐츠 처리</li>
	</ul>

	<h3># JSP란 무엇인가?</h3>

	<ui>
	<li>Java server Pages (JSP)</li>
	<li>동적 웹 페이지를 생성하기 위한, Java로 만든 API</li>
	<li>HTML안에 원하는대로 Java코드를 마음껏 넣을 수 있다</li>

	</ui>

	<%-- JSP Script --%>

	<%-- 
			
		<% %> : 자바 코드를 사용할 수 있는 영역 ( 메서드 내부 취급, 선언 x)
		<%= %> : 원하는 값을 HTML에 출력 (out.print()를 줄인 것)
		<%! %> : 메서드를 선언할 수 있는 영역 (클래스 내부 취급)
		<%@ %> : JSP 관련 옵션 설정 영역
		
	 --%>

	<h3># JSP의 처리 순서</h3>
	
	<ul>
		<li>.jsp 파일은 1차로 자바 코드 형태로 변환된다.</li>
		<li>변환된 자바 코드를 컴파일 하여 웹 컨테이너(Tomcat)에 등록한다</li>
		<li>클라이언트가 해당 페이지를 요청할때마다 웹 컨테이너에 등록되어 있는 컴파일 결과물을 실행하여
		생성되는 HTML코드를 응답한다.
		(.jsp의 컴파일 결과물은 실행하면 해당 HTML 코드를 반환하는 프로그램이다)</li>
	</ul>
	



	<%
	//메서드 내부 취급
	int a = 10;
	int b = 20;

	// out - HTML 페이지로 내보내는 OutputStream
	out.print("<a href='http://www.naver.com' style='color: red;'>네이버!</a>");

	class Apple {
		int size;
		int sweet;

		public Apple() {
			size = 10;
			sweet = 9;
		}

		public String toString() {
			return "<h3>사과입니다~</h3>";
		}
	}

	out.print(new Apple()); // object 타입의 to string이 호출된다
	for (int i = 0; i < 10; ++i) {
		out.print(rabbit());
		System.out.println("현재까지 토끼는 모두 "  + rabbitCount + "마리 입니다.");
	}
	
	
	%>

	<%!
	
	// 클래스 내부 취급 (메서드 선언 가능, 인스턴스 변수 선언 가능)
	int rabbitCount= 0; // 인스턴스 변수, 클래스 내부에 변수를 선언하는건 인스턴수 변수다

	String rabbit() {
		return "<pre> /)/)\n(  ..)\n(   >$\nGood Luck " + rabbitCount++ +"</pre>";
	}%>
	
	<p>현재 토끼는 <%=rabbitCount %>마리 </p>
	
	


</body>
</html>