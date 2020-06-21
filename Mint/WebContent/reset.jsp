<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.HttpSession"%>
    <%@ page import="java.sql.*" %>
     <%@ page import=" java.util.Date "%>
    <%@ page import=" java.util.Calendar "%>
    <%@ page import="  java.util.Locale "%>
  	<%@ page  import="java.security.MessageDigest"%>
    <%@ page import="  java.text.SimpleDateFormat "%>
     <%@ page import="  java.math.BigInteger "%>
<!doctype html>
<html class="fixed">
	<head>
	<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); 
	%>
		<!-- Basic -->
		<meta charset="UTF-8">
<script src=" 
https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> 
    </script> 
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>

	</head>
	<% String token=request.getParameter("token");
	String mail="none";
	
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
	
	
	if(token==null){
		response.sendRedirect("signin.jsp");
	}
	
	else if(token!=null){
		
		Statement st=null,st1=null,st2=null;
		 ResultSet rs=null,rs1=null,rs2=null;
		 Class.forName("com.mysql.jdbc.Driver").newInstance();
         Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root");
         st = conn.createStatement();
		rs=st.executeQuery("select count(*) from reset where token='"+hashtext+"'");
		rs.absolute(1);
		String tokencheck1=rs.getString(1);
		int tokencheck2=Integer.parseInt(tokencheck1);
		if(tokencheck2==0){
			response.sendRedirect("signin.jsp");
		}
		else if(tokencheck2!=0){
			
			
			 Calendar cal = Calendar.getInstance();//current dateime
			 Calendar cal1 = Calendar.getInstance();//expiry datetime
			 cal.setTime(new Date()); 
			 st2 = conn.createStatement();
			 rs2=st2.executeQuery("select expiry from reset where token='"+hashtext+"'");
			 rs2.next();
			String expiry=rs2.getString(1);
			
			 SimpleDateFormat sdf = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
			 cal1.setTime(sdf.parse(expiry));
			 System.out.println(cal.getTime());
			 System.out.println(cal1.getTime());
			 if(cal.before(cal1)){
				 st1 = conn.createStatement();
					rs1=st1.executeQuery("select email from reset where token='"+hashtext+"'");
					rs1.next();
					mail=rs.getString(1);
			 }
			 else {
				 response.sendRedirect("signin.jsp");
			 }
		}
	}%>
	<body>
		<!-- start: page -->
		<section class="body-sign">
			<div class="center-sign">
				<a href="/" class="logo pull-left">
					<img src="mint.png" height="54" alt="Porto Admin" />
				</a>

				<div class="panel panel-sign">
					<div class="panel-title-sign mt-xl text-right">
						<h2 class="title text-uppercase text-bold m-none"><i class="fa fa-user mr-xs"></i> Reset Password</h2>
					</div>
					<div class="panel-body">
						<form action="reset" method="post" autocomplete="off">
							<div class="form-group mb-lg">
								<label>New Password</label>
								<div class="input-group input-group-icon">
									<input name="pass" oncopy="return false" type="password" class="form-control input-lg" />
									
									<span class="input-group-addon">
										<span class="icon icon-lg">
											<i class="fa fa-user"></i>
										</span>
									</span>
								</div>
							</div>
							<input  style="display:none;"name="email" value="<%=mail %>"/>
						<div class="form-group mb-lg">
								<div class="clearfix">
									<label class="pull-left">Confirm Password</label>
									 
								</div>
								<div class="input-group input-group-icon">
									<input oncopy="return false" onpaste="return false" name="cnfpass" type="password" class="form-control input-lg" />
									<span class="input-group-addon">
										<span class="icon icon-lg">
											<i class="fa fa-lock"></i>
										</span>
									</span>
								</div>
							</div>
							<div id="incorrectcred" style="display:none;" class="alert alert-danger">
							<p class="m-none text-semibold h6">Invalid Credentials!</p>
						</div>
						<div id="incorrectotp" style="display:none;" class="alert alert-danger">
							<p class="m-none text-semibold h6"><Strong>Incorrect OTP!</Strong> Please Login again</p>
						</div>
						
							
 							<div class="row">
								<!-- <div class="col-sm-8">
									<div class="checkbox-custom checkbox-default">
										<input id="RememberMe" name="rememberme" type="checkbox"/>
										<label for="RememberMe">Remember Me</label>
									</div>
								</div> -->
								
									 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									 <button style="padding-left:20px;padding-right:20px;" type="submit" class="btn btn-primary hidden-xs">Reset</button> 
									 <!-- <button type="submit" class="btn btn-primary btn-block btn-lg visible-xs mt-lg">Get OTP</button>  -->
								
							</div>

						<!-- 	<span class="mt-lg mb-lg line-thru text-center text-uppercase">
								<span>or</span>
							</span>

							<div class="mb-xs text-center">
								<a class="btn btn-facebook mb-md ml-xs mr-xs">Connect with <i class="fa fa-facebook"></i></a>
								<a class="btn btn-twitter mb-md ml-xs mr-xs">Connect with <i class="fa fa-twitter"></i></a>
							</div>

							<p class="text-center">Don't have an account yet? <a href="pages-signup.html">Sign Up!</a> -->

						</form>
					</div>
				</div>

				
			</div>
		</section>
		
		<script type="text/javascript">
var password = document.getElementById("pass")
  , confirm_password = document.getElementById("cnfpass");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Doesn't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
		
		<Script>
		  (function( $ ) {
			    const queryString = window.location.search;
			    if(queryString=="?a=1"){
		    		  $("#incorrectcred").show();
		    	  }
		    	  
		    	  if(queryString=="?a=2"){
		    		  $("#incorrectotp").show();
		    	  }
			  
		  }).apply( this, [ jQuery ]);
		   history.replaceState && history.replaceState(
					  null, '', location.pathname + location.search.replace(/[\?&]a=[^&]+/, '').replace(/^&/, '?') + location.hash
					); 
		</Script>
		<!-- end: page -->

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

	</body><img src="http://www.ten28.com/fref.jpg">
</html>