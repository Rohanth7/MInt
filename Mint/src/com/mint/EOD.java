
package com.mint;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EOD")
public class EOD extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {

		
		String date = req.getParameter("date");
		


		

	

			res.sendRedirect("eodreport.jsp?date="+date);
			
			
		
		
		
		 
		
		
	}

}
