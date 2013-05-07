package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "My awesome message3";
		req.setAttribute("test", message);
		this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/test.jsp" ).forward( req, resp );
	}

}
