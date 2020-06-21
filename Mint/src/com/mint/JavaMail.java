
package com.mint;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JavaMail")
public class JavaMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		try {
		
		String numbers = "1234567890";
	      Random random = new Random();
	      char[] otp = new char[5];

	      for(int i = 0; i< 5 ; i++) {
	         otp[i] = numbers.charAt(random.nextInt(numbers.length()));
	         
	      }
	      String num = String.valueOf(otp);
	      System.out.println(num);
	      String mail="mrohanth@gmail.com";
	
			/* JavaMailUtil.sendMail("mrohanth@gmail.com",num); */
		req.setAttribute("otp", num);
		req.setAttribute("mail", mail);
		 req.getRequestDispatcher("/otp1.jsp").forward(req, res);
		
		
	}
		catch (Exception e) {
			out.print("Error:" + e.getMessage());
		}
		
	}

}
