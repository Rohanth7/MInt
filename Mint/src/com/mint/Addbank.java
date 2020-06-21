package com.mint;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Details
 */
@WebServlet("/addbank")
public class Addbank extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String bname=request.getParameter("bname");  
		String blocation=request.getParameter("blocation");  
		 
		
	
		          
		
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root"); 
		 Statement st=con.createStatement();
		 Statement st2=con.createStatement();
		 Statement st3=con.createStatement();
		 Statement st4=con.createStatement();
		ResultSet rs=st.executeQuery("select * from banklocation where name='"+bname+"' and location='"+blocation+"'");
        int count = 0;
		while(rs.next()){
        count++;
        }
        if(count>0){
        	response.sendRedirect("Addbank.jsp?a=2");

        }
        else  {
        	 rs=st2.executeQuery("select name from banks where name='"+bname+"' ");
        	 int count1=0;
        	 while(rs.next()) {
        		 count1++;
        	 }
        	
        	 if(count1>0) {
        		 rs.absolute(1);
        		 String name=rs.getString("name");
        		 st3.executeUpdate("insert into banklocation (name,location) values('"+name+"','"+blocation+"')");
        		 response.sendRedirect("Addbank.jsp?a=1");
        	 }
        	 else {
        		 st3.executeUpdate("insert into banks (name,status) values('"+bname+"','False')");
        		 st4.executeUpdate("insert into banklocation (name,location) values('"+bname+"','"+blocation+"')");
        		 response.sendRedirect("Addbank.jsp?a=1");
        	 }
        	 
        }
			/*
			 * else{
			 * 
			 * 
			 * 
			 * Statement ps = con.createStatement(); String
			 * qry="insert into banks (name,location,status) values('"+bname+"','"+blocation
			 * +"','False')";
			 * 
			 * ps.executeUpdate(qry);
			 * 
			 * 
			 * 
			 * 
			 * 
			 * response.sendRedirect("Addbank.jsp?a=1");
			 * 
			 * 
			 * }
			 */
        
		}
		
		catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
		}
}
		  
		  



