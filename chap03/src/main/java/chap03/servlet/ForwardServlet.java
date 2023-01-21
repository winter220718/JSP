package chap03.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForwardServlet
 */
@WebServlet("/redirect")
public class ForwardServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		// 다른 서블렛(.jsp또는 .java)으로 포워드 하기
		
		// webapp밑의 경로를 줘야한다 (포워드는 주로 .jsp로 보낸다)
		// 요청 분배기
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/view.jsp");
		
		// 생성된 요청 분배기(RequestDispatcher) 인스턴스로 forward()를 실행
//		dispatcher.forward(request, response);
		
		response.sendRedirect("/chap03/view.jsp");
	}

}
