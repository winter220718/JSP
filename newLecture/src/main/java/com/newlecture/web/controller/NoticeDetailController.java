package com.newlecture.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlecture.web.entity.Notice;

@WebServlet("/notice/detail")
public class NoticeDetailController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));

		String url = "jdbc:oracle:thin:@localhost:1521/XE";
		String sql = "SELECT * FROM NOTICE WHERE ID=?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "test_user", "1234");
			PreparedStatement st = con.prepareStatement(sql); //쿼리문을 준비한다음에 실행하기때문에 executeQuery에서 빼줘야한다
			st.setInt(1, id);
			
			ResultSet rs = st.executeQuery();
			
			rs.next();
			
			String title = rs.getString("TITLE");
			String writerId = rs.getString("writer_id");
			String hit= rs.getString("HIT");
			Date regDate = rs.getDate("REGDATE");
			String files = rs.getString("FILES");
			String content = rs.getString("CONTENT");
			
			Notice notice = new Notice(
					id, title, writerId, hit, regDate, files, content
					);
			
			request.setAttribute("n", notice);
			
//			request.setAttribute("title", title);
//			request.setAttribute("writerId", writerId);
//			request.setAttribute("regDate", regDate);
//			request.setAttribute("hit", hit);
//			request.setAttribute("files", files);
//			request.setAttribute("content", content);
			
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//redirect : 예) 로긍닝 ㅣ안됐다.. 로그인하고와라! 로그인페이지로 보내버림 걍 가게함
			
		//forward : 작업한 내용들을 이어받아서 보내주는 것
		
		request.getRequestDispatcher("/WEB-INF/view/notice/detail.jsp")
			.forward(request, response);
	}
	
	
}



















