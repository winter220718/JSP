package board.service;

import javax.servlet.http.HttpServletRequest;

import board.dao.BoardDao;
import board.dao.BoardDao_Impl;
import board.dto.Board;

public class ModifyUpdateService implements Service{
	
	BoardDao boarDao = new BoardDao_Impl();

	@Override
	public String service(HttpServletRequest req) {
		String board_id = req.getParameter("board_id");
		String write_title = req.getParameter("write_title");
		String write_content = req.getParameter("write_content");
		
		Board b = boarDao.selectBoardById(Integer.parseInt(board_id));
		
		b.setWrite_title(write_title);
		b.setWrite_content(write_content);
		boarDao.modify(b);
		
		return "redirect::" + req.getContextPath() + "/list";
	}

	
}
