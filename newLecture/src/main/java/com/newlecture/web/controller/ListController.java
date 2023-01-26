package com.newlecture.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlecture.web.entity.NoticeView;
import com.newlecture.web.service.NoticeService;

@WebServlet("/notice/list")
public class ListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// list?f=title&q=a

		String field_ = req.getParameter("f");
		String query_ = req.getParameter("q");
		String page_ = req.getParameter("p");

		String field = "title";
		if (field_ != null && !field_.equals("")) {
			field = field_;
		}

		String query = "";
		if (query_ != null && !query_.equals("")) {
			query = query_;

		}

		int page = 1;
		if (page_ != null && !page_.equals("")) {
			page = Integer.parseInt(page_);

		}
		

		NoticeService service = new NoticeService();
		List<NoticeView> list = service.getNoticeList(field, query, page);
		int count = service.getNoticeCount(field, query);

		req.setAttribute("list", list);
		req.setAttribute("count", count);
	
		req.getRequestDispatcher("/WEB-INF/view/notice/list.jsp").forward(req, resp);

	}
}
