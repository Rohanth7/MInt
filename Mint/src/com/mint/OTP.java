
package com.mint;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpSession;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/otp")
public class OTP extends HttpServlet {
	/**
	 * 
	 * 
	 */
	public static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String otp=request.getParameter("otp");
		String inputotp=request.getParameter("inputotp");
		HttpSession session1=request.getSession();
		
		try {
			if(inputotp.equals(otp)) {
				session1.setAttribute("Show","yes");
				response.sendRedirect("dashboard.jsp");
			}
			else {
				response.sendRedirect("signin.jsp?a=2");
			}
			
		
		} catch (Exception e) {
			out.print("Error:" + e.getMessage());
		}
	}

}