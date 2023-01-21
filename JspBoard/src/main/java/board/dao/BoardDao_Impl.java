package board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import board.dto.Board;

public class BoardDao_Impl implements BoardDao {

	@Override
	public List<Board> selectAllBoards() {
		List<Board> boards = new ArrayList<>();
		String sql = "SELECT * FROM board ORDER BY board_id DESC";
		
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs= pstmt.executeQuery();
				){
			
			while(rs.next()) {
				boards.add(new Board(rs));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}
	
}
