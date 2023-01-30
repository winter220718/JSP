package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainService implements Service{

	@Override
	public String service(HttpServletRequest req) {
		return "main";
	}

}
