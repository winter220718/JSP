package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Board;

@WebServlet("/list")
public class ListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = "jdbc:oracle:thin:@localhost:1521/XE";
		String sql = "SELECT * FROM BOARD ORDER BY BOARD_ID DESC";

		ArrayList<Board> list = new ArrayList<>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try (
				Connection con = DriverManager.getConnection(url, "test_user", "1234");
				PreparedStatement st = con.prepareStatement(sql);
				ResultSet rs = st.executeQuery();

		) {

			while (rs.next()) {
			
				Board vo = new Board(rs);
				list.add(vo);
				

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

			
		req.setAttribute("boards", list);
		
		
		req.getRequestDispatcher("/WEB-INF/views/list.jsp").forward(req, resp);
	}
}
