<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
   <%@ page import="javax.servlet.http.HttpSession"%>
   <%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter" %>
<%@page import="java.time.LocalDateTime" %>
<!doctype html>
<html class="fixed">
	<head>
 <script src=" 
https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> 
    </script> 
		<!-- Basic -->
		<meta charset="UTF-8">

		<title>MINT</title>
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

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap-fileupload/bootstrap-fileupload.min.css" />
		<link rel="stylesheet" href="assets/vendor/pnotify/pnotify.custom.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>
		
</head><body >

		<section class="body">
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); 
 if(session.getAttribute("Show")== null){
	response.sendRedirect("signin.jsp");}  


%>
			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="dashboard.jsp" class="logo">
						<img src="mintlogo.jpg" height="35" alt=" MINT" />
					</a>
					<div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right">
			
			
					<span class="separator"></span>
			
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="assets/images/!logged-user.jpg" alt="Joseph Doe" class="img-circle" data-lock-picture="assets/images/!logged-user.jpg" />
							</figure>
							<div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@okler.com">
								<span class="name">Admin</span>
								<span class="role">User</span>
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
								<!-- <li>
									<a role="menuitem" tabindex="-1" href="pages-user-profile.html"><i class="fa fa-user"></i> My Profile</a>
								</li> -->
								
								<li>
									<a role="menuitem" tabindex="-1" href="Logout.jsp"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end: search & user box -->
			</header>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<aside id="sidebar-left" class="sidebar-left">
				
					<div class="sidebar-header">
						<div class="sidebar-title">
							<span style="color:white">Navigation</span>
						</div>
						<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
							<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
						</div>
					</div>
				
					<div class="nano">
						<div class="nano-content">
							<nav id="menu" class="nav-main" role="navigation">    
								<ul class="nav nav-main">
									<li class="nav-active">
										<a href="dashboard.jsp">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>Dashboard</span>
										</a>
									</li>
									

									<li class="nav-parent">
										<a>
											<i class="fa fa-users" aria-hidden="true"></i>
											<span>Agent</span>
										</a>
										<ul class="nav nav-children">
											<li>
												<a href="Addagent.jsp">
													 Add Agent
												</a>
											</li>
											<li>
												<a href="Agentlist.jsp">
													 Agent List
												</a>
											</li>
											
											
											
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-university" aria-hidden="true"></i>
											<span>Bank</span>
										</a>
										<ul class="nav nav-children">
											<li>
												<a href="Addbank.jsp">
													 Add Bank
												</a>
											</li>
											<li>
												<a href="Banklist.jsp">
													Banks List
												</a>
											</li>
											<li>
												<a href="Banklocation.jsp">
													Bank Location
												</a>
											</li>
										</ul>
									</li>
									
									<li class="nav-parent">
										<a>
											<i class="fa fa-table" aria-hidden="true"></i>
											<span> Reports</span>
										</a>
										<ul class="nav nav-children">
											<li>
												<a href="eodreport.jsp">
													 EOD Report
												</a>
											</li>
											<li>
												<a href="transacreport.jsp">
													Transaction Report
												</a>
											</li>
										</ul>
									</li>
							
							
								
									
								</ul>
							</nav>
				
						
				
							
						</div>
				
					</div>
				
				</aside>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Dashboard</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="">
										<i class="fa fa-home"></i>
									</a>
								</li>
								
							</ol>
					
							<a class="sidebar-right-toggle" ><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>
<div class="row">
				<% Statement st=null;
	            ResultSet rs1=null,rs2=null,rs3=null;
	           
	            Class.forName("com.mysql.jdbc.Driver").newInstance();
	           Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root");
	           st = conn.createStatement();
	            %>
										
						<div class="col-md-12 col-lg-4 col-xl-4">
									<section class="panel panel-featured-left panel-featured-secondary">
										<div class="panel-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-secondary">
														<i class="fa fa-usd"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
													<%-- <% DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd.MM.yyyy ");
													   LocalDateTime now = LocalDateTime.now();
													   String date1=dtf.format(now); 
													   String count="0";
													   String qry3 = "SELECT totaltrans from totaltrans where date='"+date1+"' ";
													   rs1 = st.executeQuery(qry3);
														while(rs1.next()){
															count=rs1.getString("totaltrans");
														};
													   %> --%>
														<h4 class="title">Today's Transactions</h4>
														<div class="info">
															<strong class="amount"> 20</strong>
															
														</div>
													</div>
													<div class="summary-footer">
														<a href="eodreport.jsp"class="text-muted text-uppercase">(view all)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
						<div class="col-md-12 col-lg-4 col-xl-4">
									<section class="panel panel-featured-left panel-featured-quartenary">
										<div class="panel-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-quartenary">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title"> Agents</h4>
														<div class="info">
														<%	String qry1 = "SELECT COUNT(*) AS agents FROM register; ";
														rs2 = st.executeQuery(qry1);
														rs2.next();%>
															<strong class="amount"><%=rs2.getString(1) %></strong>
															<%	qry1 = "SELECT COUNT(*) AS agents FROM register where status='False'; ";
														rs2 = st.executeQuery(qry1);
														rs2.next();%>
															<span class="text-primary">(<%=rs2.getString(1) %> inactive)</span>
														</div>
													</div>
													<div class="summary-footer">
														<a href="Agentlist.jsp" class="text-muted text-uppercase">(view all)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
								
								<div class="col-md-12 col-lg-4 col-xl-4">
									<section class="panel panel-featured-left panel-featured-primary">
										<div class="panel-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-primary">
														<i class="fa fa-bank"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Banks</h4>
														<%	String qry2 = "SELECT COUNT(*) AS banks FROM banks; ";
														rs3 = st.executeQuery(qry2);
														rs3.next();%>
														<div class="info">
															<strong class="amount"><%=rs3.getString(1) %></strong>
															<%	qry2 = "SELECT COUNT(*) AS banks FROM banks where status='False'; ";
														rs3 = st.executeQuery(qry2);
														rs3.next();%>
															<span class="text-primary">(<%=rs3.getString(1) %> inactive)</span>
														</div>
													</div>
													<div class="summary-footer">
														<a href="Banklist.jsp" class="text-muted text-uppercase">(view all)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
							<button style="display:none;"  id="back-button" class="mt-sm mb-sm btn btn-success">Back Button</button>	
							
					</section>
			</div>
<script>
/*  (function (global) { 

    if(typeof (global) === "undefined") {
        throw new Error("window is undefined");
    }

    var _hash = "!";
    var noBackPlease = function () {
        global.location.href += "#";

        // making sure we have the fruit available for juice (^__^)
        global.setTimeout(function () {
            global.location.href += "!";
        }, 500000);
    };

    global.onhashchange = function () {
        if (global.location.hash !== _hash) {
            global.location.hash = _hash;
           
        }
    };
	
   

    global.onload = function () {            
        noBackPlease();
    	
        // disables backspace on page except on input fields and textarea..
        document.body.onkeydown = function (e) {
            var elm = e.target.nodeName.toLowerCase();
            if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                e.preventDefault();
            }
            // stopping event bubbling up the DOM tree..
            e.stopPropagation();
        };          
    }

})(window);   */

 (function( $ ) {
 $('#back-button').click(function() {
		var notice = new PNotify({
			title: 'Notification',
			text: 'Some notification text.',
			addclass: 'notification-primary stack-bar-bottom',
			icon: 'fa fa-twitter',
			
			width: "70%"
		});
	});
 }).apply( this, [ jQuery ]);
 
 jQuery(document).ready(function($) {

    if (window.history && window.history.pushState) {

      $(window).on('popstate', function() {
        var hashLocation = location.hash;
        var hashSplit = hashLocation.split("#!/");
        var hashName = hashSplit[1];

        if (hashName !== '') {
          var hash = window.location.hash;
          if (hash === '') {
          
              window.location='dashboard.jsp';
              return false;
          }
        }
      });

      window.history.pushState('', null, './dashboard.jsp');
    }

  });
   
  



</script>
			
		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/jquery-autosize/jquery.autosize.js"></script>
		<script src="assets/vendor/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
		<script src="assets/vendor/pnotify/pnotify.custom.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>
		<!-- Examples -->
			<script src="assets/javascripts/ui-elements/examples.notifications.js"></script>
<!--  <script src="assets/javascripts/pages/examples.session.timeout.js"></script>
 --><!--	<script src="assets/vendor/jquery-idletimer/dist/idle-timer.js"></script> -->
	</body>
</html>