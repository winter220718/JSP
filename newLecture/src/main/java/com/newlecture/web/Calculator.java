package com.newlecture.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculator")
public class Calculator extends HttpServlet {

	// get요청을 해도 얘가 실행, post를 요청해도 얘가 실행됨. 각 특화된 메서드 활용해볼 예정
//	@Override
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		// GET과 POST는 반드시 대문자로 비교해야됨
//		if (request.getMethod().equals("GET")) {
//			System.out.println("get 요청이 왔습니다");
//
//		}
//		if (request.getMethod().equals("POST")) {
//
//			System.out.println("post 요청이 왔습니다");
//
//		}
//
//		super.service(request, response);
//	}

	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Cookie[] cookies = req.getCookies();
		
		String exp = "0";
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("exp"))
					exp = c.getValue();
					break;
			}
		}

//		post로 누적된 정보를 쿠키에 저장 후 redirection하면 저장된 정보를 출력한다 
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		PrintWriter out = resp.getWriter();

		out.write("<!DOCTYPE html>");
		out.write("<html>");
		out.write("<head>");
		out.write("<meta charset=\"UTF-8\">");
		out.write("<title>Insert title here</title>");
		out.write("<style>");

		out.write("input {");
		out.write("	width: 50px;");
		out.write("	height: 50px;");
		out.write("}");

		out.write(".output {");
		out.write("	height: 50px;");
		out.write("	background: lightgray;");
		out.write("	font-size: 24px;");
		out.write("font-weight: bold;");
		out.write("	text-align: right;");
		out.write("	padding: 0px 5px;");
		out.write("}");

		out.write("</style>");
		out.write("</head>");
		out.write("<body>");
		out.write("<form method=\"post\">");

		out.write("	<table>");
		out.write("	<tr>");
		out.printf("		<td class=\"output\" colspan=\"4\">%s</td>", exp);
		out.write("	</tr>");

		out.write("	<tr>");
		out.write("	<td><input type=\"submit\" name=\"operator\" value=\"CE\"></td>");
		out.write("<td><input type=\"submit\" name=\"operator\" value=\"C\"></td>");
		out.write("<td><input type=\"submit\" name=\"operator\" value=\"BS\"></td>");
		out.write("<td><input type=\"submit\" name=\"operator\" value=\"/\"></td>");

		out.write("</tr>");

		out.write("<tr>");
		out.write("<td><input type=\"submit\" name=\"value\" value=\"7\"></td>");
		out.write("<td><input type=\"submit\" name=\"value\" value=\"8\"></td>");
		out.write("<td><input type=\"submit\" name=\"value\" value=\"9\"></td>");
		out.write("<td><input type=\"submit\" name=\"operator\" value=\"*\"></td>");

		out.write("</tr>");
		out.write("<tr>");
		out.write("	<td><input type=\"submit\" name=\"value\" value=\"4\"></td>");
		out.write("<td><input type=\"submit\" name=\"value\" value=\"5\"></td>");
		out.write("<td><input type=\"submit\" name=\"value\" value=\"6\"></td>");
		out.write("<td><input type=\"submit\" name=\"operator\" value=\"-\"></td>");

		out.write("</tr>");
		out.write("<tr>");
		out.write("<td><input type=\"submit\" name=\"value\" value=\"1\"></td>");
		out.write("<td><input type=\"submit\" name=\"value\" value=\"2\"></td>");
		out.write("<td><input type=\"submit\" name=\"value\" value=\"3\"></td>");
		out.write("	<td><input type=\"submit\" name=\"operator\" value=\"+\"></td>");

		out.write("</tr>");
		out.write("<tr>");
		out.write("	<td></td>");
		out.write("	<td><input type=\"submit\" name=\"value\" value=\"0\"></td>");
		out.write("	<td><input type=\"submit\" name=\"dot\" value=\".\"></td>");
		out.write("	<td><input type=\"submit\" name=\"operator\" value=\"=\"></td>");
		out.write("</table>");

		out.write("</form>");

		out.write("</body>");
		out.write("</html>");
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Cookie[] cookies = req.getCookies();

		String value = req.getParameter("value");
		String operator = req.getParameter("operator");
		String dot = req.getParameter("dot");

		String exp = "";
		// 먼저 읽어온 후 value를 붙인다
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("exp"))
					exp = c.getValue();
				break;
			}
			if (operator != null && operator.equals("=")) {
				ScriptEngine engine = new ScriptEngineManager().getEngineByName("nashorn");
				try {
					exp = String.valueOf(engine.eval(exp));
				} catch (ScriptException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else if (operator != null && operator.equals("C")) {
				exp = "";
				
			}

			else {

				exp += (value == null) ? "" : value;
				exp += (operator == null) ? "" : operator;
				exp += (dot == null) ? "" : dot;

			}
		}

		Cookie expCookie = new Cookie("exp", exp);
		if(operator != null && operator.equals("C")) {
			expCookie.setMaxAge(0); //쿠키 지우기!
		}
		
		expCookie.setPath("/calculator");
		resp.addCookie(expCookie);
		resp.sendRedirect("calculator"); // mapping된 이름을 쓴다 경로가 같기에 주소만 쓰는게 가능하다
		
		
	}
}
