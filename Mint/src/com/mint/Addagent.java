package com.mint;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Details
 */
@WebServlet("/addagent")
public class Addagent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		ServletContext ctx=getServletContext();
		String fname=request.getParameter("fname");  
		String lname=request.getParameter("lname");  
		 
		String imei=request.getParameter("imei");  
		String email=request.getParameter("email"); 
		String mobile=request.getParameter("mobile"); 
		String address=request.getParameter("address"); 
		String city=request.getParameter("city"); 
		String state=request.getParameter("state"); 
		String aadhar=request.getParameter("aadhar"); 
	
		          
		
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root"); 
		 Statement st1=con.createStatement();
		 Statement st2=con.createStatement();
		ResultSet rs=st1.executeQuery("select * from register where aadhar='"+aadhar+"'");
		ResultSet rs1=st2.executeQuery("select * from register where imei='"+imei+"'");
        int count = 0,count1=0;
		while(rs.next()){
        count++;
        }
		while(rs1.next()) {
			count1++;
		}
        if(count>0){
        	response.sendRedirect("Addagent.jsp?a=2");//duplicate aadhar
        	
	          
        }
        else if(count1>0){
        	response.sendRedirect("Addagent.jsp?a=3");//duplicate imei
        	
	          
        }
        else{
		
		
		  
		Statement ps = con.createStatement();
		 String qry="insert into register(name,lastname,imei,email,phn,address,city,state,aadhar,balance,pass,pin,image,status) values('"+fname+"','"+lname+"','"+imei+"','"+email+"','"+mobile+"','"+address+"','"+city+"','"+state+"','"+aadhar+"'"
		 		+ ",0,null,null,null,'False')";
		 
		ps.executeUpdate(qry);
		
		
		  
				 response.sendRedirect("Addagent.jsp?a=1"); 
				
		          
		}}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
		}
}
		  
		  



