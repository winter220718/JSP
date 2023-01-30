package board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import board.dto.Board;
import board.dto.Comment;

public class CommentDao_Impl implements CommentDao{

	@Override
	public boolean cm_write(Comment comment) {
		String sql = "INSERT INTO comment VALUES"
				+ "(?,comment_num_seq.nextval,sysdate,?)";
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
			){
				pstmt.setInt(1, comment.getBoard_id());
				pstmt.setString(2, comment.getComment_content());
				
				return pstmt.executeUpdate() > 0;
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
	}
	
}
