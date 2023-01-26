package com.newlecture.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlecture.web.entity.Notice;
import com.newlecture.web.service.NoticeService;

@WebServlet("/notice/detail")
public class NoticeDetailController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		NoticeService service= new NoticeService();
		Notice notice = service.getNotice(id);
		request.setAttribute("n", notice);
	
		
		

		
		//redirect : 예) 로그인이 안됐다.. 로그인하고와라! 로그인페이지로 보내버림 걍 가게함
		//forward : 작업한 내용들을 이어받아서 보내주는 것
		
		request.getRequestDispatcher("/WEB-INF/view/notice/detail.jsp")
			.forward(request, response);
	}
	
	
}



















