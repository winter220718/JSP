package board.service;

import javax.servlet.http.HttpServletRequest;

import board.dao.BoardDao;
import board.dao.BoardDao_Impl;
import board.dto.Board;

public class ModifyPasswordCheckService implements Service{

	BoardDao boarDao = new BoardDao_Impl();
	
	@Override
	public String service(HttpServletRequest req) {
		String user_pw = req.getParameter("user_pw");
		String board_id = req.getParameter("board_id");
		
		if (board_id == null) {
			return "redirect::" + req.getContextPath() + "/list";
		}
		
		Board b = boarDao.selectBoardById(Integer.parseInt(board_id));
		
		// 수정할 때 있는 값을 가져와서 해야하기 때문에 설정
		req.setAttribute("board", b);
		
		if (b != null && b.getWriter_pw().equals(user_pw)) {
			
			return "board/modi_form";
		} else {
			return "redirect::" + req.getContextPath() + "/list";		
		}
		
		
		
		
	}
}
