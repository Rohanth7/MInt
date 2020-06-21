
package com.login;
import javax.servlet.RequestDispatcher;
import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/Logincontroller2")
public class Logincontroller2 extends HttpServlet {
	/**
	 * 
	 * 
	 */
	public static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		
		
		HttpSession session1=request.getSession();
		PrintWriter out = response.getWriter();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root"); // gets a new connection
		
		PreparedStatement ps = c.prepareStatement("select  COUNT(*) from admin where userid=?  ");
		ps.setString(1, un);
	
		
		ResultSet rs = ps.executeQuery();
		rs.absolute(1);
		String credcheck=rs.getString(1);
		
	
        
		if(credcheck.equals("1") ) {
			
			PreparedStatement ps1 = c.prepareStatement("select *  from admin where userid=?  ");
			ps1.setString(1, un);
			ResultSet rs1 = ps1.executeQuery();
			rs1.absolute(1);
			String pwdsalt=rs1.getString("salt");
			String pwdhash=rs1.getString("hash");
			
			String input=pwdsalt+pwd;
			
			
			
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
	        
	        if(pwdhash.equals(hashtext)) {
			
			 session1=request.getSession();
			session1.setAttribute("Showlogin","yes");
			 request.getRequestDispatcher("JavaMail").forward(request, response);}
	        
	        else {
	        	response.sendRedirect("signin.jsp?a=1");
	        }
	        
		}
		else {
		response.sendRedirect("signin.jsp?a=1");
		}
		
		} catch (Exception e) {
			out.print("Error:" + e.getMessage());
		}
	}

}