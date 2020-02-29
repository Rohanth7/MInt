
package com.mint;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

//import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/transfer")
public class Transfer extends HttpServlet
{
	private static final long serialVersionUID=1L;
	 int balance1,balance2;
	 String text1,text2;
	 boolean b1,b2;
  public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
	  
		
		  String aadhar=req.getParameter("aadhar"); 
		  String acc=req.getParameter("accountnum");
		  String benefitacc=req.getParameter("benefitnum");
		  Integer amount=Integer.parseInt(req.getParameter("amount"));
		  
		 
		  
		 
	  PrintWriter out=res.getWriter();
	  Connection conn=null;
		Statement st1=null,st2=null;
		ResultSet rs1=null,rs2=null;
		
		try{
		
			Class.forName("com.mysql.jdbc.Driver");
	conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
			
			st1=conn.createStatement();
			st2=conn.createStatement();
			String qry1="select * from balance Where Aadhar='"+aadhar+"' and Acc='"+acc+"' ";
			rs1=st1.executeQuery(qry1);
			rs1.absolute(1);
		//	b1=rs1.getString(1)!= null;
			
			String qry2="select * from balance Where  Acc='"+benefitacc+"'";
			rs2=st2.executeQuery(qry2);
			rs2.absolute(1);
		//	b2=rs2.getString(1)!= null;
			
			if(rs1.getString(1)!= null) {
			if(rs2.getString(1)!= null) {
			balance1=Integer.parseInt(rs1.getString(3));
			if(balance1>=amount) {
				balance1=balance1-amount;
				String qry3="update balance set Amount='"+balance1+"' where Aadhar='"+aadhar+"' and Acc='"+acc+"'";
				st1.executeUpdate(qry3);
				
				
				
				balance2=Integer.parseInt(rs2.getString(3));
				balance2=balance2+amount;
				String qry4="update balance set Amount='"+balance2+"' where Acc='"+benefitacc+"'";
				st2.executeUpdate(qry4);
				
				out.print("<h3>Successfully Transferred");
			}
			else {out.print("<h3>Insuffiecient balance</h3>");}
			
				
			}
			}
			
		}
		catch(SQLException e){
			out.print("<h3>Wrong credentials</h3>");}


		catch(Exception e){
			out.print("Error:"+e.getMessage());
	} 
	  
  }
  
}
