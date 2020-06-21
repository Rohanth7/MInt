
package com.mint;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.UUID; 
 import java.util.Date;
 import java.util.Calendar;
 import java.security.MessageDigest;

import javax.servlet.http.HttpSession;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forgotprocess")
public class Forgotprocess extends HttpServlet {
	
	public static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String email=request.getParameter("email");
		
		try {
			UUID id = UUID.randomUUID(); 
			String token=id.toString();
			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root"); 
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select COUNT(*) from admin where userid='"+email+"'");
			 rs.absolute(1);
			 String emailcheck=rs.getString(1);
			 if(emailcheck.equals("1")) {
				 Calendar cal = Calendar.getInstance();
				 Calendar cal1 = Calendar.getInstance();
				    cal.setTime(new Date()); 
				    cal.add(Calendar.HOUR_OF_DAY, 1); 
				  
				    String input=token;
				 // Static getInstance method is called with hashing MD5 
			        MessageDigest md = MessageDigest.getInstance("MD5"); 

			        // digest() method is called to calculate message digest 
			        //  of an input digest() return array of byte 
			        byte[] messageDigest = md.digest(input.getBytes()); 

			        // Convert byte array into signum representation 
			        BigInteger no = new BigInteger(1, messageDigest); 

			        // Convert message digest into hex value 
			        String hashtext = no.toString(16); 
			        while (hashtext.length() < 32) { 
			            hashtext = "0" + hashtext; 
			        } 
			        
			        
				 Statement st1=con.createStatement();
				st1.executeUpdate("insert into reset(email,token,creation,expiry) values('"+email+"','"+hashtext+"','"+ cal1.getTime()+"','"+ cal.getTime()+"')");
				 ForgotMail.sendMail(email,token);
				 response.sendRedirect("signin.jsp?a=3");
			 }else
			 {
				 response.sendRedirect("signin.jsp?a=3");;
			 }
		
		} catch (Exception e) {
			out.print("Error:" + e.getMessage());
		}
	}

}