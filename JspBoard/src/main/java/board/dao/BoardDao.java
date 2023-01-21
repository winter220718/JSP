package board.dao;

import java.util.List;

import board.dto.Board;

public interface BoardDao {

	List<Board> selectAllBoards();
	
}
