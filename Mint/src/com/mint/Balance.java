
package com.mint;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

//import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/balance")
public class Balance extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		String aadhar = req.getParameter("aadhar");
		String acc = req.getParameter("accountnum");
		

		PrintWriter out = res.getWriter();
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
			
			st = conn.createStatement();
			String qry = "select * from customer Where Aadhar='" + aadhar + "' and Acc='" + acc + "'";
			rs = st.executeQuery(qry);
			rs.next();
			
			out.print("Balance:" + rs.getString(3));

		}
		 catch(SQLException e){
		  out.print("<h3>Wrong credentials</h3>"); }
		 
		catch (Exception e) {
			out.print("Error:" + e.getMessage());
		}

	}

}
