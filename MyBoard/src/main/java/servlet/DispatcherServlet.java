package servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DispatcherServlet extends HttpServlet {

	@Override
	public void init(ServletConfig config) throws ServletException {
		 try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				System.out.println("Oracle Driver loaded..");
			} catch (ClassNotFoundException e) {
				System.out.println("Oracle Driver not found Exception..");
			}
		 
		 
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	
	
	}
	
}
