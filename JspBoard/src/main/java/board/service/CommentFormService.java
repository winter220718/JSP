package board.service;

import javax.servlet.http.HttpServletRequest;

public class CommentFormService implements Service{

	@Override
	public String service(HttpServletRequest req) {
		return "board/contents";
	}
}
