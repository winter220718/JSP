package board.service;

import javax.servlet.http.HttpServletRequest;

import board.dao.CommentDao;
import board.dao.CommentDao_Impl;
import board.dto.Comment;

public class CommentService implements Service{
	
	CommentDao commentDao = new CommentDao_Impl();

	@Override
	public String service(HttpServletRequest req) {
		
		Integer board_id = Integer.parseInt(req.getParameter("board_id"));
		String comment_content = req.getParameter("comment_content");
		
		Comment c = new Comment();
		
		c.setBoard_id(board_id);
		c.setComment_content(comment_content);
		
		commentDao.cm_write(c);
		
		return "board/contents";
	}
}
