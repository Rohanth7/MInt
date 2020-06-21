<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

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
		<link rel="stylesheet" href="assets/vendor/select2/select2.css" />
		<link rel="stylesheet" href="assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />
		<link rel="stylesheet" href="assets/vendor/pnotify/pnotify.custom.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>

	</head>
	<body >
		<section class="body">
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");


		if(session.getAttribute("Show")== null){
	response.sendRedirect("signin.jsp");}%>
			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="dashboard.jsp" class="logo">
						<img src="mintlogo.jpg" height="35" alt="MINT" />
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
											<span> Report</span>
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
						<h2>Bank</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.html">
										<i class="fa fa-bank"></i>
									</a>
								</li>
								<li><span>Banks</span></li>
								<li><span>Branches</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" ><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
						
						
							<header class="panel-heading">
								<div class="panel-actions">
									
								</div>
						
								<h2 class="panel-title">Bank Branches</h2>
							</header>
							<div class="panel-body">
							
								<table class="table table-bordered table-striped mb-none" id="datatable-tabletools" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf">
									<thead>
										<tr>
											<th>Bank Name</th>
											<th>Branch</th>
											<th>IFSC Code</th>
											
											
										</tr>
									</thead>
									<tbody>
									
									<%
									
									Statement st = null;
									ResultSet rs = null;
									Class.forName("com.mysql.jdbc.Driver");
									Connection conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root");
									st = conn.createStatement();
									String qry = "select * from banklocation ";
									rs = st.executeQuery(qry);
									while(rs.next()){
									
									%>
										<tr class="gradeA">
											<td><%=rs.getString("name") %></td>
											<td><%=rs.getString("location") %></td>
											<td><%=rs.getString("ifsc") %></td>
										
											
											
											
										</tr>
										<%} %>
									</tbody>
								
								</table>
							</div>
							<div id="modalAnim1" class="zoom-anim-dialog modal-block modal-block-primary mfp-hide">
										<section class="panel">
											<header class="panel-heading">
												<h2 class="panel-title">Are you sure?</h2>
											</header>
											<div class="panel-body">
												<div class="modal-wrapper">
													<div class="modal-icon">
														<i class="fa fa-question-circle"></i>
													</div>
													<div class="modal-text">
														<p>Are you sure that you want to Activate this Bank?</p>
													</div>
												</div>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button class="btn btn-primary " id="confirm1">Confirm</button>
														<button class="btn btn-default modal-dismiss">Cancel</button>
													</div>
												</div>
											</footer>
										</section>
									</div>
									<div id="modalAnim2" class="zoom-anim-dialog modal-block modal-block-primary mfp-hide">
										<section class="panel">
											<header class="panel-heading">
												<h2 class="panel-title">Are you sure?</h2>
											</header>
											<div class="panel-body">
												<div class="modal-wrapper">
													<div class="modal-icon">
														<i class="fa fa-question-circle"></i>
													</div>
													<div class="modal-text">
														<p>Are you sure that you want to De-Activate this Bank?</p>
													</div>
												</div>
											</div>
											<footer class="panel-footer">
												<div class="row">
													<div class="col-md-12 text-right">
														<button class="btn btn-primary " id="confirm2">Confirm</button>
														<button class="btn btn-default modal-dismiss">Cancel</button>
													</div>
												</div>
											</footer>
										</section>
									</div>
						</section>
						
						<button style="display:none;"  id="sticky-update" class="mt-sm mb-sm btn btn-success">Success</button>	
						<button style="display:none;"  id="sticky-delete" class="mt-sm mb-sm btn btn-success">Deleted</button>	
					<!-- end: page -->
				</section>
				
			</div>

			
		</section>

<script>

 



(function( $ ) {
	  const queryString = window.location.search;
	    if(queryString=="?a=3"){
	    	setTimeout(function(){ $('#sticky-update').click()}, 100);
	    }
	    if(queryString=="?a=5"){
	    	setTimeout(function(){ $('#sticky-delete').click()}, 100);
	    	
	    }
	   
	    $('#confirm1').on("click",function() {
	    	setTimeout(function(){ $('#activate1').click()}, 10);

	    });
	    $('#confirm2').on("click",function() {
	    	setTimeout(function(){ $('#deactivate1').click()}, 10);

	    });

$('#sticky-update').on("click",function() {
	new PNotify({
		title: 'Success',
		text: 'Agent Updated',
		type: 'success',

		buttons: {
			sticker: false
		}
	});
});

$('#sticky-delete').click(function() {
	new PNotify({
		title: 'Deleted',
		text: 'Agent record wiped out!',
		type: 'error'
	});
});

    
}).apply( this, [ jQuery ]);



  history.replaceState && history.replaceState(
		  null, '', location.pathname + location.search.replace(/[\?&]a=[^&]+/, '').replace(/^&/, '?') + location.hash
		); 
/*
(function (global) { 

    if(typeof (global) === "undefined") {
        throw new Error("window is undefined");
    }

    var _hash = "!";
    var noBackPlease = function () {
        global.location.href += "#";

        // making sure we have the fruit available for juice (^__^)
        global.setTimeout(function () {
            global.location.href += "!";
        }, 50);
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

})(window); */

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

      window.history.pushState('forward', null, './Banklocation.jsp');
    }

  });
</script>
		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/select2/select2.js"></script>
		<script src="assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
		<script src="assets/vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
		<script src="assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
		<script src="assets/vendor/pnotify/pnotify.custom.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>


		<!-- Examples -->
		<script src="assets/javascripts/tables/examples.datatables.default.js"></script>
		<script src="assets/javascripts/tables/examples.datatables.row.with.details.js"></script>
		<script src="assets/javascripts/tables/examples.datatables.tabletools.js"></script>
		<script src="assets/javascripts/ui-elements/examples.notifications.js"></script>
		<script src="assets/javascripts/ui-elements/examples.modals.js"></script>
<!-- 		<script src="assets/javascripts/pages/examples.session.timeout.js"></script>
 -->	</body>
</html>