package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet{

	public void gugudan() {
		for(int i = 2; i < 9; ++i) {
	
		
		}
		
	}
	
	/*
	/chap01/gugudan으로 접속하는 사용자들에게
	 * 멋있는 구구단 페이지를 응답하는 서블릿을 만들어보세요
	*/
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String gugudan = "";
		for (int dan = 2; dan <= 9; dan++) {
			gugudan += dan + "dan<br>";
			for (int gop = 1; gop <= 9; gop++) {
				gugudan += dan + " * " + gop + " = " + dan * gop + "<br>";
			}
			
			gugudan += "<br>";
		}
		
		PrintWriter out = resp.getWriter();
		out.print("<h1>Fancy Gugudan</h1>");
		out.print(gugudan);
		
		
		

		
	}
	
}
