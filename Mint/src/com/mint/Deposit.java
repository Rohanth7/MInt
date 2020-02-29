
package com.mint;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

//import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/deposit")
public class Deposit extends HttpServlet
{
	private static final long serialVersionUID=1L;
	
  public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
	  
		
		  String aadhar=req.getParameter("aadhar"); 
		  String acc=req.getParameter("accountnum");
		  Integer amount=Integer.parseInt(req.getParameter("amount"));
		  
		 
	  PrintWriter out=res.getWriter();
	  Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		
		try{
		
			Class.forName("com.mysql.jdbc.Driver");
	conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
			
			st=conn.createStatement();
			String qry1="select * from balance Where Aadhar='"+aadhar+"' and Acc='"+acc+"' ";
			rs=st.executeQuery(qry1);
			rs.next();
			amount=Integer.parseInt(rs.getString(3))+amount;
			String qry2="update balance set Amount='"+amount+"' where Aadhar='"+aadhar+"' and Acc='"+acc+"'";
			st.executeUpdate(qry2);
			String qry3="select * from balance Where Aadhar='"+aadhar+"' and Acc='"+acc+"' ";
			rs=st.executeQuery(qry3);
			rs.next();
			out.println("<h3>Successful Deposit</h3>");
			
			
				
		}
		catch(SQLException e){
			out.print("<h3>Wrong credentials</h3>");}


		catch(Exception e){
			out.print("Error:"+e.getMessage());
	} 
	  
  }
  
}
