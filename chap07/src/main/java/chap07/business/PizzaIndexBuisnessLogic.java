package chap07.business;

import javax.servlet.http.HttpServletRequest;

public class PizzaIndexBuisnessLogic implements BusinessLogic{

	@Override
	public String process(HttpServletRequest request) {

		// forward할때 주소를 주눈거다 index로 갈때 해야될일은 딱히 없다..(무슨?소리?)
		return "pizza/pizza";
	}

}
