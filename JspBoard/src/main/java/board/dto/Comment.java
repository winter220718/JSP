package board.dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class Comment {

	private Integer board_id;
	private Integer comment_num;
	private Date comment_date;
	private String comment_content;
	
	private static SimpleDateFormat dayFormat = new SimpleDateFormat("yy.MM.dd");
	private static SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
	
	public Comment(ResultSet rs) throws SQLException {
		this.board_id = rs.getInt("board_id");
		this.comment_num = rs.getInt("comment_num");
		this.comment_date = rs.getDate("comment_date");
		this.comment_content = rs.getString("comment_content");
		
	}
	
	public String getCreationDateTime() {
		LocalDate creationDate = ((java.sql.Date) comment_date).toLocalDate();
		LocalDate today = LocalDate.now();	
		
		return creationDate.isEqual(today) ? 
				timeFormat.format(comment_date) : dayFormat.format(comment_date);
	}
	
	public Comment () {}

	public Integer getBoard_id() {
		return board_id;
	}

	public void setBoard_id(Integer board_id) {
		this.board_id = board_id;
	}

	public Integer getComment_num() {
		return comment_num;
	}

	public void setComment_num(Integer comment_num) {
		this.comment_num = comment_num;
	}

	public Date getComment_date() {
		return comment_date;
	}

	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}

	public String getComment_content() {
		return comment_content;
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	};
	
	
}


