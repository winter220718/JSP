package board;

import javax.servlet.http.HttpServletRequest;

import board.service.Service;

public class MainService implements Service{

	@Override
	public String service(HttpServletRequest request) {

		return "main";
}

}
