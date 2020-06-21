
package com.mint;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

//import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editagent")
public class Editagent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String u=request.getParameter("sno");
		
		String c=request.getParameter("imei");
		String d=request.getParameter("email");
		String e=request.getParameter("phn");
		String g=request.getParameter("address");
		String h=request.getParameter("city");
		String i=request.getParameter("state");
		

		PrintWriter out = response.getWriter();
		Connection conn = null;
		Statement st1 = null,st2=null,st3=null;
		

		try {
			int count=0;
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root");
			
			st1 = conn.createStatement();
			st2 = conn.createStatement();
			st3 = conn.createStatement();
			
			String qry3="select imei from register where sno='"+u+"'";
			ResultSet rs1=st3.executeQuery(qry3);
			rs1.next();
			String imei=rs1.getString("imei");
			System.out.println(imei);
			System.out.println(c);
			if(imei.equals(c)) {
				String qry2="update  register set  imei='"+c+"',email='"+d+"',phn='"+e+"',address='"+g+"',city='"+h+"',state='"+i+"' where sno='"+u+"' ";
				st2.executeUpdate(qry2);
				
				response.sendRedirect("Agentlist.jsp?a=3");
			}
			else if(!imei.equals(c)) {
				String qry1="select * from register where imei='"+c+"'";
				ResultSet rs=st1.executeQuery(qry1);
				while(rs.next()) {
					count++;
				}
				if(count>0) {
					response.sendRedirect("Agentlist.jsp?a=5");
				}
				else {
					
					String qry2="update  register set  imei='"+c+"',email='"+d+"',phn='"+e+"',address='"+g+"',city='"+h+"',state='"+i+"' where sno='"+u+"' ";
					st2.executeUpdate(qry2);
					
					response.sendRedirect("Agentlist.jsp?a=3");
					
					}
			}
			
			
			/*
			String qry1="select * from register where imei='"+c+"'";
			ResultSet rs=st1.executeQuery(qry1);
			while(rs.next()) {
				count++;
			}
			if(count>0) {
				response.sendRedirect("Agentlist.jsp?a=5");
			}
			else {
			
			String qry2="update  register set  name='"+a+"',lastname='"+b+"',imei='"+c+"',email='"+d+"',phn='"+e+"',address='"+g+"',city='"+h+"',state='"+i+"' where sno='"+u+"' ";
			st2.executeUpdate(qry2);
			
			response.sendRedirect("Agentlist.jsp?a=3");
			
			}
			*/
		}
		
		 
		catch (Exception err) {
			out.print("Error:" + err.getMessage());
		}

	}

}
