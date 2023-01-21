package board;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class BoardDao {

	// 삽입
	public int insert(BoardVo vo) {
		String query = "insert into board values (board_seq.nextval,?,?,?,sysdate,0)";
		int ret = -1;
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "testuser",
				"password");
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();

		) {

			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getWriter());
			pstmt.setString(3, vo.getContent());
			ret = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}

		return ret;

	}

	public List<BoardVo> selectAll() {

		String query = "select * from board";

		ArrayList<BoardVo> ls = new ArrayList<BoardVo>();
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "testuser",
				"password");
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();

		) {

			while (rs.next()) {
				BoardVo vo = new BoardVo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						new Date(rs.getDate(5).getTime()), rs.getInt(6));
				ls.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return ls;

	}

	public BoardVo selectOne(int num) {
		String query = "select * from board where num = ?";
		BoardVo vo = null;
		try (Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "testuser",
				"password"); PreparedStatement pstmt = conn.prepareStatement(query);

		) {
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				vo = new BoardVo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						new Date(rs.getDate(5).getTime()), rs.getInt(6));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return vo;

	}
	

}
