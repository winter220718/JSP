package chap07.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.business.*;

public class DispatcherServlet extends HttpServlet {

   Map<String, BusinessLogic> businessMapping = new HashMap<>();

   @Override
   public void init(ServletConfig config) throws ServletException {
	  try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("OracleDriver loaded...");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
      businessMapping.put("/hello", new HelloBusinessLogic());
      businessMapping.put("/pizza", new PizzaIndexBusinessLogic());
      businessMapping.put("/pizza/order/result", new PizzaOrderResultBusinessLogic());
      businessMapping.put("/pizza/order/form", new PizzaOrderFormBusinessLogic());
      businessMapping.put("/pizza/order/insert", new PizzaOrderInsertBusinessLogic());

   }

   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      String contextPath = req.getContextPath();
      String uri = req.getRequestURI().substring(contextPath.length());

//      System.out.println("contextPath: " + contextPath);
//      System.out.println("uri:" + uri);
//      System.out.println("uri - contextPath = " + (uri = uri.substring(contextPath.length())));

      System.out.println(uri);
      
      String nextView = businessMapping.get(uri).process(req);
      
      if (nextView.startsWith("redirect::")) {
    	  resp.sendRedirect(nextView.substring("redirect::".length()));
      } else {
    	  req.getRequestDispatcher("/WEB-INF/views/" + nextView + ".jsp").forward(req, resp);
      }
      
      

   }

}