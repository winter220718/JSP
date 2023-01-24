package board.service;

import javax.servlet.http.HttpServletRequest;

import board.Board;
import board.dao.BoardDao;
import board.dao.BoardDao_Impl;



public class ReadBoardService implements Service {

	
	BoardDao dao = new BoardDao_Impl();
	
	
	@Override
	public String service(HttpServletRequest req) {
		String board_id = req.getParameter("board_id");

		if (board_id == null) {
			//id가 없을 때
			return "board/not_exists.jsp";
		} 
		
		int id = Integer.parseInt(board_id);
		
			//id를 전달하며면 하나 가져와서 넣어줌
		Board board= dao.selectBoardById(id);

		if(board_id == null) {
			return "board/not_exists.jsp";
		}
		
		dao.increaseView(id);
		
				
		req.setAttribute("board", board);
		
		return "board/contents.jsp";

	}

}
