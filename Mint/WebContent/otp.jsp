<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
	<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); 

	if(session.getAttribute("Showlogin")== null){
		response.sendRedirect("signin.jsp");}
	%>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<style>
#logreg-forms{
    width:412px;
    margin:10vh auto;
    background-color:#f3f3f3;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}
img {
  border-radius: 50%;
  height: 100px;
  width: 100px;
}
</style>
<meta charset="ISO-8859-1">
<title>OTP Verification</title>
</head>
<body>
<body>
    <div id="logreg-forms">
    <div class="container"><center><br>
    <img src="images1/img_avatar.png" alt="Avatar">
 </center>
    <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> OTP Verification</h1>
    <center>
<div data-widget data-app="cuhi4e6okehi1ena7usa">
</div>
</center>
</div><br><br><br>
<div class="footer">
</div>
</div>
<script src="bundle.min.js"></script>
</body>
</html>
<%
session.removeAttribute("Showlogin");
HttpSession session1=request.getSession();
session1.setAttribute("Show","yes");
%>