<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Complaint Response</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="jquery.js"></script>
<script src="matchPassword.js"></script>
<script src="passwordscript.js"></script>
<script src="angular.min.js"></script>
<script src="main.js"></script>
<script src="json.js"></script>

<script>
	$(function() {
		$("#dialog").dialog();
	});
</script>

<style>
@import "font-awesome.min.css";

@import "font-awesome-ie7.min.css";
/* Space out content a bit */
body {
	padding-top: 20px;
	padding-bottom: 20px;
}
/* Everything but the jumbotron gets side spacing for mobile first views */
.header, .marketing, .footer {
	padding-right: 15px;
	padding-left: 15px;
}
/* Custom page header */
.header {
	border-bottom: 1px solid #e5e5e5;
}
/* Make the masthead heading the same height as the navigation */
.header h3 {
	padding-bottom: 19px;
	margin-top: 0;
	margin-bottom: 0;
	line-height: 40px;
}
/* Custom page footer */
.footer {
	padding-top: 19px;
	color: #777;
	border-top: 1px solid #e5e5e5;
}
/* Customize container */
@media ( min-width : 768px) {
	.container {
		max-width: 730px;
	}
}

.container-narrow>hr {
	margin: 30px 0;
}
/* Main marketing message and sign up button */
.jumbotron {
	text-align: center;
	border-bottom: 1px solid #e5e5e5;
}

.jumbotron .btn {
	padding: 14px 24px;
	font-size: 21px;
}
/* Supporting marketing content */
.marketing {
	margin: 40px 0;
}

.marketing p+h4 {
	margin-top: 28px;
}
/* Responsive: Portrait tablets and up */
@media screen and (min-width: 768px) {
	/* Remove the padding we set earlier */
	.header, .marketing, .footer {
		padding-right: 0;
		padding-left: 0;
	}
	/* Space out the masthead */
	.header {
		margin-bottom: 30px;
	}
	/* Remove the bottom border on the jumbotron for visual effect */
	.jumbotron {
		border-bottom: 0;
	}
}
</style>
</head>
<body class="text-center" style="background-color: #E3F79E">
<% 
    if(session.getAttribute("user")==null)
    	response.sendRedirect("login.jsp");
	%>
<jsp:include page="admin_navbar.jsp" />
	<form action="ResponseServlet" method="post">
		<div class="container">
			<h1 class="well">Complaint Response</h1>
			<div class="col-lg-12 well">

				<div class="form-group">
					<label for="status">Complaint Id</label> <input type="text"
						class="form-control" id="ComplaintId" readonly="readonly" name="complaintId" value="${param.id}"
						placeholder="Enter the Id of Complaint" required>
				</div>

				<div class="form-group">
					<label for="status">Status</label> <select class="form-control"
						id="status" name="status">
						<option>....Select the Status....</option>
						<option>Complaint Accepted</option>
						<option>Investigation Started</option>
						<option>Investigation Finished</option>
						<option>FIR registered</option>
						<option>Final Action Taken</option>
						<option>Case Closed</option>
					</select>
				</div>
				<div class="form-group">
					<label>Status Information</label>
					<textarea placeholder="Enter the Information Here.." name="message"
						id="statusInformation" name="statusInformation" rows="3"
						class="form-control"></textarea>
				</div>

				<button type="submit" class="btn btn-lg btn-info">Submit</button>
				<div id="div1"></div>
			</div>
		</div>

	</form>
</body>
</html>

