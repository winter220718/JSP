package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Request;
import board.service.ReadBoardService;
import board.service.Service;



public class DispatcherServlet extends HttpServlet {
	Map<Request, Service> uriMapping = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Oracle Driver loaded...");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		uriMapping.put(new Request("/", "GET"), new ReadBoardService());
	
		
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
								
		req.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(req, resp);
		
		
	
	}
	
}
