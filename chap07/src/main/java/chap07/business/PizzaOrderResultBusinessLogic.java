package chap07.business;

import javax.servlet.http.HttpServletRequest;

public class PizzaOrderResultBusinessLogic implements BusinessLogic{

	@Override
	public String process(HttpServletRequest request) {
		// request에 방금 추가한 주문의 ID가 함께 왔으면 좋겠다...
		
		String customerName = request.getParameter("name");
		
		System.out.println("건네받은 name: " + customerName);
		
		request.setAttribute("customerName", customerName);
		
		// 원래대로라면 건네받은 ID를 통해 어떤 주문이었는지 select 가능
		// SELECT * FROM pizza_order WHERE name=customerName
		
		return "pizza/orderResult";
	}

}
