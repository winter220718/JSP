package board.service;

import javax.servlet.http.HttpServletRequest;

public class ModifyFormService implements Service{

	@Override
	public String service(HttpServletRequest req) {
		return "board/modify";
	}

}
