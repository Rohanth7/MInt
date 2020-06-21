
package com.mint;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/transacreport")
public class Transacreport extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {

		
		String date1 = req.getParameter("start");
		String date2 = req.getParameter("end");
		

	

			res.sendRedirect("transacreport.jsp?start="+date1+"&end="+date2);
		
		
		
		
		 
		
		
	}

}
