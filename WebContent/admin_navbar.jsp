<%@page import="model.UserLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link href="assets/css1/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css1/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css1/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Ruluko' rel='stylesheet' type='text/css' />
     <script type="text/javascript">
    window.history.forward();
    function noBack()
    {
    	window.history.forward();
    }
    </script>
      <style>
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:#404040;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 1;
}
.unstyled-button{
border:none;
padding:0;
background:none;
}
.dropdown:hover .dropdown-content {
    display: block;
}
</style>
    
<title>Admin Dashboard</title>
</head>
<body onLoad="noBack();" onpageshow="if(event.persisted) noBack();" onUnload="">
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="admin_dashboard.jsp">Anti-Ragging Portal</a>
            </div>
            <!-- Collect the nav links for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="admin_dashboard.jsp">HOME</a>
                    </li>
                    <li><a href="allComplains.jsp">COMPLAINS</a>
                    </li>
                    <li><a href="report.jsp">REPORT</a>
                    </li>
                    <li><a href="allFeedbacks.jsp">FEEDBACKS</a>
                    </li>
                    <li><!-- <a href="#"><strong>e-mail:</strong>  info@yourdomain.com</a> -->
                    <div class=dropdown>
					<br>
					<a href="#"><strong><% 
					if(session.getAttribute("user")!=null){
					UserLogin user=(UserLogin)session.getAttribute("user");
					out.print(user.getUserDetail().getFirstName());}%></strong></a>
					<div class="dropdown-content">
							<p><a href="profile.jsp">PROFILE</a>
							<br>
							<a href="changePassword.jsp">CHANGE PASSWORD</a>
							<br />
							<a href="LogoutServlet">LOG OUT</a>
							</p>
                    </div>
					</div>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!--End footer Section -->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins1/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins1/bootstrap.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js1/custom.js"></script>
</body>
</html>