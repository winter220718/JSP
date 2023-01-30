package board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import board.dto.Board;

public interface BoardDao {
	
	List<Board> selectAllBords();

	Board selectBoardById(int board_id);

	void increaseView(int board_id);
	
	boolean write(Board board);
	
	void modify(Board board);
	
	boolean delete(int board_id);
}
