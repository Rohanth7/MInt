
package com.mint;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException;


import javax.servlet.http.HttpSession;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reset")
public class Reset extends HttpServlet {
	
	public static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		 
		try {
			
			String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			String salt="nothing";
			 int count=32;
			StringBuilder builder = new StringBuilder();
			while (count-- != 0) {
			int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
			builder.append(ALPHA_NUMERIC_STRING.charAt(character));
			
			 salt=builder.toString();
			}
			
			String input=salt+pass;
			
			
			
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
			
			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root"); 
			 Statement st=con.createStatement();
			 st.executeUpdate("update admin set salt='"+salt+"',hash='"+hashtext+"' ");
			response.sendRedirect("signin.jsp");
			
			
		
		} catch (Exception e) {
			out.print("Error:" + e.getMessage());
		}
	}

}