package chap07.business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import chap07.dto.PizzaOrder;

public class PizzaOrderInsertBusinessLogic implements BusinessLogic{

	@Override
	public String process(HttpServletRequest request) {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String crust = request.getParameter("crust");
		String size = request.getParameter("size");
		String[] toppings = request.getParameterValues("topping");
		String topping = String.join("/", toppings);
		
		String instruction = request.getParameter("instruction");
		
		try (
			Connection conn =
			DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");
				PreparedStatement pstmt =
						conn.prepareStatement("INSERT INTO pizza_order VALUES (?,?,?,?,?,?)");
		){
			pstmt.setString(1, name);
			pstmt.setString(2, address);
			pstmt.setString(3, crust);
			pstmt.setString(4, size);
			pstmt.setString(5, topping);
			pstmt.setString(6, instruction);
			
			int row = pstmt.executeUpdate();
			
			if (row > 0) {
				System.out.println("주문 추가 성공함");
			} else {
				System.out.println("주문 실패");
			}
			
//			request.setAttribute("success", row);
//			request.setAttribute("info", new PizzaOrder(name, address, crust, size, topping, instruction));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 리다이렉트 경로에 ?를 추가해 원하는 정보를 보낼 수도 있다
		return "redirect::/chap07/pizza/order/result?name=" + name;
	}

}
