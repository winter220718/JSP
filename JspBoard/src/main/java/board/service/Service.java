package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dto.Board;

public interface Service {
	
	// 다음으로 리턴한는 포워드를 알려준다
	String service(HttpServletRequest req);
	
	

}
