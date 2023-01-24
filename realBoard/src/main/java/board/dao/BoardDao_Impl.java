package board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import board.Board;

public class BoardDao_Impl implements BoardDao {

	String url = "jdbc:oracle:thin:@localhost:1521/XE";

	@Override
	public List<Board> selectAllBoards() {
		List<Board> boards = new ArrayList<>();
		String sql = "SELECT * FROM board ORDER BY board_id DESC";

		try (Connection conn = DriverManager.getConnection(url, "test_user", "1234");
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();) {

			while (rs.next()) {
				boards.add(new Board(rs));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Board selectBoardById(int board_id) {

		String sql = "SELECT * FROM board WHERE board_id=?";

		try (Connection conn = DriverManager.getConnection(url, "test_user", "1234");
				PreparedStatement pstmt = conn.prepareStatement(sql);

		) {
			pstmt.setInt(1, board_id);
			

			try (ResultSet rs = pstmt.executeQuery();) {
				rs.next();
				return new Board(rs);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void increaseView(int board_id) {

		String sql = "UPDATE board SET write_view=write_view+1 WHERE board_id=?";

		try (Connection conn = DriverManager.getConnection(url, "test_user", "1234");
				PreparedStatement pstmt = conn.prepareStatement(sql);

		) {
			
			pstmt.setInt(1, board_id);
			pstmt.executeQuery();


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
