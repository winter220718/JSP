package board.service;

import javax.servlet.http.HttpServletRequest;

import board.dao.BoardDao;
import board.dao.BoardDao_Impl;
import board.dto.Board;

public class DeleteUpdateService implements Service{

	BoardDao boarDao = new BoardDao_Impl();
	
	@Override
	public String service(HttpServletRequest req) {
		String board_id = req.getParameter("board_id");
		boarDao.delete(Integer.parseInt(board_id));
		return "redirect::" + req.getContextPath() + "/list";
	}
}
