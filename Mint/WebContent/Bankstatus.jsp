<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%

String sno = request.getParameter("u");
String num=request.getParameter("v");


Connection conn = null;
Statement st = null;


	Class.forName("com.mysql.jdbc.Driver");
	conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root");
	
	st = conn.createStatement();
	
	if(num.equals("1")) {
		String qry1="Update banks set status='True' where sno='"+sno+"' ";
		st.executeUpdate(qry1);
		response.sendRedirect("Banklist.jsp?a=1");
		
	}
	else if (num.equals("2")) {
		String qry2="Update banks set status='False' where sno='"+sno+"' ";
		st.executeUpdate(qry2);
		response.sendRedirect("Banklist.jsp?a=2");
	}
	
	
	
	
	


 


%>