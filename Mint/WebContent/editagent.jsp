<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">
		<script src=" 
https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> 
    </script> 
    
    
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
	<script type="text/javascript">
	$(function () {
	$('#fname').keydown(function (e) {
	if (e.shiftKey || e.ctrlKey || e.altKey) {
	e.preventDefault();
	} else {
	var key = e.keyCode;
	if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
	e.preventDefault();
	}
	}
	});
	});
   
	
	$(function () {
	$('#lname').keydown(function (e) {
	if (e.shiftKey || e.ctrlKey || e.altKey) {
	e.preventDefault();
	} else {
	var key = e.keyCode;
	if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
	e.preventDefault();
	}
	}
	});
	});
	
	$(function () {
		$('#city').keydown(function (e) {
		if (e.shiftKey || e.ctrlKey || e.altKey) {
		e.preventDefault();
		} else {
		var key = e.keyCode;
		if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
		e.preventDefault();
		}
		}
		});
		});
		
	
	$(function () {
		$('#state').keydown(function (e) {
		if (e.shiftKey || e.ctrlKey || e.altKey) {
		e.preventDefault();
		} else {
		var key = e.keyCode;
		if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
		e.preventDefault();
		}
		}
		});
		});
		
    </script> 
    
    
     
    
     <script>
    window.addEventListener( "pageshow", function ( event ) {
    	  var historyTraversal = event.persisted || 
    	                         ( typeof window.performance != "undefined" && 
    	                              window.performance.navigation.type === 2 );
    	  if ( historyTraversal ) {
    	    // Handle page restore.
    	    window.location.reload();
    	  }
    	});
    </script>

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

	</head>
	
	<style>
#custom-button {
  padding: 4px;
  color: white;
  background-color: #3349FF;
  border: 1px solid #000;
  border-radius: 3px;
  cursor: pointer;
  font-size:15px;
}

#custom-button:hover {
  background-color: #0033FF;
}

#custom-text {
  margin-left: 10px;
  font-family: sans-serif;
  font-size:15px;
  color: #aaa;
}


</style>
	<body>
	<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	 
	if(session.getAttribute("Show")== null){
	response.sendRedirect("signin.jsp");} 
	%>
		<section class="body">

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
								<span class="name">Agent</span>
								<span class="role">Admin</span>
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
						<h2>Agent</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="">
										<i class="fa fa-users"></i>
									</a>
								</li>
								<li><span>Agent</span></li>
								<li><span>Add Agent</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" ><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>
					
					

					<!-- start: page -->
				
									
						<div class="row">
							<div class="col-lg-12">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											
										</div>
										<% Statement st=null;
	            ResultSet rs=null;
	            PreparedStatement stmt=null;
	            Class.forName("com.mysql.jdbc.Driver").newInstance();
	           Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mint_app", "root", "root");
	           String u=request.getParameter("u");
	            %>
										
						
										<h2 class="panel-title">UPDATE AGENT </h2>
									</header>
									
									<div class="panel-body">
										<form class="form-horizontal form-bordered" action="editagent" method="post" >
										
										<% 
						st=conn.createStatement();
						
						String query="select sno,name,lastname,imei,email,phn,address,city,state from register where sno='"+u+"'";
						rs=st.executeQuery(query);
						while(rs.next()){
						%>
										
											 <input type="hidden" name="sno" value="<%= rs.getString("sno") %>" > 
			                                   
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder">IMEI Number</label>
												<div class="col-md-6">
												<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-mobile"></i>
														</span>
													<input type="text" name = "imei" class="form-control" placeholder="IMEI Number" value="<%= rs.getString("imei") %>" id="imei" required  pattern="^\d{15}$" title="Must contain 15 number" />
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder">Email Id</label>
												<div class="col-md-6">
												<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-envelope"></i>
														</span>
													<input type="text" name = "email" class="form-control" placeholder="Email Id" value="<%= rs.getString("email") %>"  id="email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Must be in formate characters@characters.domain"/>
													</div>
												</div>
											</div>
											
										<!-- 	<div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder">Date of Birth</label>
												<div class="col-md-6">
													<input type="date" name = "email" class="form-control" placeholder="dd/mm/yy" id="datepicker" required pattern="^\d{12}$" title="Must contain 12 number"/>
												</div>
											</div> -->
											
											
											
											
											
											
											
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder">Mobile</label>
												<div class="col-md-6">
												<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-phone"></i>
														</span>
													<input type="text" name = "phn" class="form-control"  placeholder="Mobile" value="<%= rs.getString("phn") %>" id="mobile" required pattern="^\d{10}$" title="Must contain 10 number"/>
													</div>
												</div>
											</div>
											
										
											
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder"> Address</label>
												<div class="col-md-6">
												<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-building"></i>
														</span>
													<input type="text"  name = "address" class="form-control" placeholder="Address" value="<%= rs.getString("address") %>"  id="address" required />
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder">City</label>
												<div class="col-md-6">
												<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-home"></i>
														</span>
													<input type="text"  name = "city" class="form-control" placeholder="City" value="<%= rs.getString("city") %>" id="city" required />
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder">State</label>
												<div class="col-md-6">
												<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-home"></i>
														</span>
													<input type="text"  name = "state" class="form-control" placeholder="State" value="<%= rs.getString("state") %>"  id="state" required />
													</div>
												</div>
											</div>
											
											
											
											<!--  <div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder">Bank Location</label>
												<div class="col-md-6">
													<input type="text" name = "amount" class="form-control" placeholder="Bank Location" id="inputPlaceholder" required pattern="[1-9][0-9]{0,4}" title="Enter number greater than zero">
												</div>
											</div> -->
											 <%} %>
											
											<div class="form-group " style="text-align:center">
											<button type="submit" class="mb-xs mt-xs mr-xs btn btn-primary">Update Agent</button>
							<!-- <input type="submit" class="btn btn-primary active" name="update" value="Update" id="submit"/>  -->
							<a href="Agentlist.jsp"><button type="button" class="mb-xs mt-xs mr-xs btn btn-default" >Cancel</button></a>
						
							</div>
						
						
					
			
									 </form>
									
									</div>
									
								</section>
						
								
						
							</div>
						</div>
						<!-- end: page -->
						
						
					</section>
			</div>

			
		</section>
		
		<script> 
		
		
		

		$(function() { 
	        $("input[name='imei']").on('input', function(e) { 
	            $(this).val($(this).val().replace(/[^0-9]/g, '')); 
	        }); 
	    }); 

	   

	    $(function() { 
	        $("input[name='mobile']").on('input', function(e) { 
	            $(this).val($(this).val().replace(/[^0-9]/g, '')); 
	        }); 
	    }); 
    
    
    (function( $ ) {
    	  const queryString = window.location.search;
    	    if(queryString=="?a=1"){
    	    	setTimeout(function(){ $('#sticky-succes').click()}, 100);
    	    }
    	    if(queryString=="?a=2"){
    	    	setTimeout(function(){ $('#sticky-duplicate').click()}, 100);
    	    }
    
    
    $('#sticky-succes').on("click",function() {
		new PNotify({
			title: 'Success',
			text: 'Agent added',
			type: 'success',
			
			buttons: {
				sticker: false
			}
		});
	});
    
    $('#sticky-duplicate').click(function() {
		new PNotify({
			title: 'Failed',
			text: 'Agent already added',
			addclass: 'notification-dark',
			icon: 'fa fa-user'
		});
	});
  
        
    }).apply( this, [ jQuery ]);
    
    
     history.replaceState && history.replaceState(
			  null, '', location.pathname + location.search.replace(/[\?&]a=[^&]+/, '').replace(/^&/, '?') + location.hash
			); 
    
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

          window.history.pushState('', null, './editagent.jsp');
        }

      });
</script> 

 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>

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
		<script src="assets/vendor/jquery-autosize/jquery.autosize.js"></script>
		<script src="assets/vendor/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
		<script src="assets/vendor/pnotify/pnotify.custom.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="assets/javascripts/ui-elements/examples.notifications.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- Examples -->
		<script src="assets/javascripts/ui-elements/examples.notifications.js"></script>
	</body>
</html>