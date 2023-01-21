package chap07.business;

import javax.servlet.http.HttpServletRequest;

public class PizzaOrderFormBusinessLogic implements BusinessLogic{

	@Override
	public String process(HttpServletRequest request) {
		
		return "pizza/orderForm";
	}
}
