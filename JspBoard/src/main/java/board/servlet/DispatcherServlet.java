package board.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.ListService;
import board.MainService;
import board.dto.Request;
import board.service.Service;

public class DispatcherServlet extends HttpServlet {
	Map<Request, Service> uriMapping = new HashMap<>();

	@Override
	public void init(ServletConfig config) throws ServletException {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Oracle Driver loaded...");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		uriMapping.put(new Request("/", "GET"), new MainService());
		uriMapping.put(new Request("/main", "GET"), new MainService());
		uriMapping.put(new Request("/list", "GET"), new ListService());
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String contextPath = req.getContextPath();

		String uri = req.getRequestURI().substring(contextPath.length());
		String method = req.getMethod();

		System.out.println("# Request info #");
		System.out.println(uri);
		System.out.println(method);

		String view = uriMapping.get(new Request(uri, method)).service(req);

		req.getRequestDispatcher("/WEB-INF/views/" + view + ".jsp").forward(req, resp);

	}
}
