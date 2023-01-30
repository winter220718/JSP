package board.dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

public class Board {
	private Integer board_id;
	private String  write_title;
	private String  write_content;
	private String  writer_id;
	private String  writer_pw;
	private Date 	write_date;
	private Integer write_view;
	private Integer write_recommend;
	private Integer write_not_recommend;
	
	private static SimpleDateFormat dayFormat = new SimpleDateFormat("yy.MM.dd");
	private static SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
	
	public Board() {
	}
	
	public Board(ResultSet rs) throws SQLException {
		this.board_id = rs.getInt("board_id");
		this.writer_id = rs.getString("writer_id");
		this.writer_pw = rs.getString("writer_pw");
		this.write_title = rs.getString("write_title");
		this.write_content = rs.getString("write_content");
		this.write_date = rs.getDate("write_date");
		this.write_view = rs.getInt("write_view");
		this.write_recommend = rs.getInt("write_recommend");
		this.write_not_recommend = rs.getInt("write_not_recommend");
		
	}
	
	// Getter를 만들어 놓으면 JSP의 EL에서는 필드가 있는 것처럼 사용할 수 있다
	public String getCreationDateTime() {
		
		// Date 타입을 날짜 비교하기 편하도록 LocalDate 타입으로 변환
		
		// (1) DTO에는 java.util.Date 타입으로 설정 되어 있음
		// (2) 우리가 rs.getDate()로 꺼내면 java.sql.Date 타입으로 꺼내짐
		//	   (java.sql.Date -> java.util.Date로 업캐스팅 발생)
		// (3) java.sql.Date의 toLocalDate()를 사용하기 위해서는 다운캐스팅이 필요
		LocalDate creationDate = ((java.sql.Date) write_date).toLocalDate();
		LocalDate today = LocalDate.now();	
		
		return creationDate.isEqual(today) ? 
				timeFormat.format(write_date) : dayFormat.format(write_date);
	}
	
	

	public Integer getBoard_id() {
		return board_id;
	}

	public void setBoard_id(Integer board_id) {
		this.board_id = board_id;
	}
	
	

	public String getWriter_id() {
		return writer_id;
	}

	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}

	public String getWrite_title() {
		return write_title;
	}

	public void setWrite_title(String write_title) {
		this.write_title = write_title;
	}

	public String getWrite_content() {
		return write_content;
	}

	public void setWrite_content(String write_content) {
		this.write_content = write_content;
	}

	public String getWriter_pw() {
		return writer_pw;
	}

	public void setWriter_pw(String writer_pw) {
		this.writer_pw = writer_pw;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public Integer getWrite_view() {
		return write_view;
	}

	public void setWrite_view(Integer write_view) {
		this.write_view = write_view;
	}

	public Integer getWrite_recommend() {
		return write_recommend;
	}

	public void setWrite_recommend(Integer write_recommend) {
		this.write_recommend = write_recommend;
	}

	public Integer getWrite_not_recommend() {
		return write_not_recommend;
	}

	public void setWrite_not_recommend(Integer write_not_recommend) {
		this.write_not_recommend = write_not_recommend;
	}

	
	
}
