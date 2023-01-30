package board.service;

import javax.servlet.http.HttpServletRequest;

public class DeletePasswordCheckService implements Service{

	@Override
	public String service(HttpServletRequest req) {
		
		req.setAttribute("type", "delete");
		req.setAttribute("board_id", req.getParameter("board_id"));
		
		return "board/password";
	}
}
