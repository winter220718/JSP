package chap09.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/submit")
public class SubmitServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_id = req.getParameter("user_id");
		String user_pw = req.getParameter("user_pw");
		String remem = req.getParameter("remem");

		String pw = "1234";

		if (user_id == null && user_pw == null && pw != null) {
			resp.sendRedirect(req.getContextPath() + "/login/fail.jsp");
			return;
		}

		// 로그인할땐 포워드하면 안됨.. 새고하면 로그인 창이 또 뜨기 때문
		if (user_pw.equals(pw)) {
			req.getSession().setAttribute("login", "yes");

			Cookie cookie = new Cookie("user_id", user_id);

			cookie.setPath(req.getContextPath() + "/login");

			if ("on".equals(remem)) {

				cookie.setMaxAge(60 * 60 * 24 * 30);

			} else {
				// 체크가 해제된 상태로 로그인 한 경우 존재하던 쿠키도 삭제
				cookie.setMaxAge(0);

			}
			resp.addCookie(cookie);
			
			resp.sendRedirect(req.getContextPath() + "/login/success.jsp");
		} else {
			resp.sendRedirect(req.getContextPath() + "/login/fail.jsp");
		}

	}
}
