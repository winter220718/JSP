package com.newlecture.web.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.newlecture.web.entity.Notice;
import com.newlecture.web.entity.NoticeView;

// 서비스 클래스 구현하기, 컨트롤러에서는 그냥 갖다 쓰면 된다
public class NoticeService {
	
	public int removeNoticeAll(int[] ids) {
		//몇개가 삭제되었는지 체크
		return 0;
	}
	
	public int pubNoticeAll(int[] ids){
		//몇개가 공개됐는지 체크
		
		return 0;
	}
	
	public int insertNotice(Notice notice){
		return 0;
		
	}
	
	public int deleteNotice(int id){
		//삭제되면 1반환
		return 0;
		
	}
	
	public int updateNotice(Notice notice){
		
		return 0;
	}
	
	public List<Notice> getNoticeNewstList(){
		
		return null;
	}
	

	public List<NoticeView> getNoticeList() {

		return getNoticeList("title", "", 1);

	}

	public List<NoticeView> getNoticeList(int page) {

		return getNoticeList("title", "", page);

	}

	public List<NoticeView> getNoticeList(String field/* TITLE, WRITER_ID */, String query/* A */, int page) {

		List<NoticeView> list = new ArrayList<>();

		// 이게 무엇인가?
		String sql = "SELECT * FROM (SELECT ROWNUM NUM, N.* FROM (SELECT * FROM NOTICE_VIEW WHERE "
				+ ""+field+" LIKE ? ORDER BY REGDATE DESC) N) WHERE NUM BETWEEN ? AND ?";

		// 1, 11, 21, 31 -> an = 1+(page-1)*10
		// 10, 20, 30, 40 -> page*10

		String url = "jdbc:oracle:thin:@localhost:1521/XE";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "test_user", "1234");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "%"+query+"%");
			st.setInt(2, 1 + (page - 1) * 10);
			st.setInt(3, page * 10);
			
			ResultSet rs = st.executeQuery();

			while (rs.next()) {

				int id = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writerId = rs.getString("WRITER_ID");
				String hit = rs.getString("HIT");
				Date regDate = rs.getDate("REGDATE");
				String files = rs.getString("FILES");
//				String content = rs.getString("CONTENT");
				int cmtCount = rs.getInt("CMT_COUNT");

				NoticeView notice = new NoticeView(id, title, writerId, hit, regDate, files, cmtCount);

				list.add(notice);

			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	public int getNoticeCount() {

		return getNoticeCount("title", "");

	}

	public int getNoticeCount(String field, String query) {

		int count = 0;
		String sql = "SELECT COUNT(ID) count FROM ("
				+ "SELECT ROWNUM NUM, N.*"
				+ "FROM (SELECT * FROM NOTICE_VIEW WHERE "+field+ " LIKE ? ORDER BY REGDATE DESC) N)";
		
		String url = "jdbc:oracle:thin:@localhost:1521/XE";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "test_user", "1234");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "%"+query+"%");

			ResultSet rs = st.executeQuery();

			if (rs.next())
			count = rs.getInt("count");

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return count;

	}

	public Notice getNotice(int id) {
		Notice notice = null;
		
		// ID에 해당하는 공지 하나만 반환
		String sql = "SELECT * FROM NOTICE WHERE ID=?";

		String url = "jdbc:oracle:thin:@localhost:1521/XE";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "test_user", "1234");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {

				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writerId = rs.getString("WRITER_ID");
				String hit = rs.getString("HIT");
				Date regDate = rs.getDate("REGDATE");
				String files = rs.getString("FILES");
				String content = rs.getString("CONTENT");

				notice = new Notice(id, title, writerId, hit, regDate, files, content);


			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
		
		return notice;
	}

	public Notice getNextNotice(int id) {
		
		Notice notice = null;
		// 현재 공지 ID를 주며 다음 공지ID를 알아야한다(서브쿼리와 같은 먼저 구해야할 내용이 있다)

		String sql = "SELECT * FROM NOTICE WHERE ID = " + "(SELECT ID FROM NOTICE WHERE REGDATE >"
				+ " (SELECT REGDATE FROM NOTICE WHERE ID = ?)" + " AND ROWNUM =1";

		
		String url = "jdbc:oracle:thin:@localhost:1521/XE";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "test_user", "1234");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {

				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writerId = rs.getString("WRITER_ID");
				String hit = rs.getString("HIT");
				Date regDate = rs.getDate("REGDATE");
				String files = rs.getString("FILES");
				String content = rs.getString("CONTENT");

				notice = new Notice(id, title, writerId, hit, regDate, files, content);


			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		return notice;
	}

	public Notice getPrevNotice(int id) {
		Notice notice = null;
		
		String sql = "SELECT ID FROM (SELECT * FROM NOTICE ORDER BY REGDATE DESC)"
				+ " WHERE REGDATE < (SELECT REGDATE FROM NOTICE WHERE ID = ?) AND ROWNUM =1";
		
		String url = "jdbc:oracle:thin:@localhost:1521/XE";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "test_user", "1234");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {

				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writerId = rs.getString("WRITER_ID");
				String hit = rs.getString("HIT");
				Date regDate = rs.getDate("REGDATE");
				String files = rs.getString("FILES");
				String content = rs.getString("CONTENT");

				notice = new Notice(id, title, writerId, hit, regDate, files, content);


			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return notice;
	}

}
