<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign Up</title>
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
<!-- <script src="matchPassword.js"></script> -->
<script src="passwordscript.js"></script>
<script src="reEnterPassword.js"></script>
<script src="main.js"></script>
<script src="json.js"></script>
<script src="script.js"></script>
<script src="validatePhone.js"></script>
<script src="validatePhoneNo2.js"></script>
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
		String message = (String) request.getAttribute("alertMsg");
		if (message != null) {
	%>
	<script type="text/javascript">
    var msg = "<%=message%>";
    alert(msg);
</script>
	<%
		}
	%>
	<form action="SignUpServlet" method="post">
		<div class="container">
			<h1 class="well">Sign up</h1>
			<div class="col-lg-12 well">
				<div class="row">

					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="fname">FirstName</label> <input type="text"
								class="form-control" id="fname" name="fname"
								placeholder="Enter first name" required>
						</div>
						<div class="col-sm-6 form-group">
							<label for="lname">LastName</label> <input type="text"
								class="form-control" id="lname" name="lname"
								placeholder="Enter last name" required>
						</div>
					</div>

					<div class="form-group">
						<label for="college">College Name</label> <input type="text"
							class="form-control" id="college" name="college"
							placeholder="Enter college name" required>
					</div>

					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="college">DOB</label> <input type="date"
								class="form-control" id="dob" name="dob" placeholder="Enter dob">
						</div>
						<div class="col-sm-6 form-group">
							<label class="control-label col-sm-2" for="course">Course</label>
							<select class="form-control" id="course" name="course">
								<option>B.Tech</option>
								<option>BCA</option>
								<option>M.Tech</option>
								<option>MCA</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="address">Address</label> <input type="text"
						class="form-control" id="addres" name="address"
						placeholder="Enter address" required>
				</div>

				<div class="row">
					<div class="col-sm-6 form-group">
						<label for="email">Email</label> <input type="email"
							class="form-control" id="email" name="email"
							placeholder="Enter email" required>
					</div>
					<div class="col-sm-6 form-group">
						<label for="phoneNo">Phone Number</label> <input type="number"
							class="form-control" maxlength=10 id="phoneNo"  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" name="phoneNo"
							placeholder="Enter Phone Number" required>
							<span id="phone_error_message"></span>
					</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="Enter password" required>
							<div id="msg"></div>
						</div>

						<div class="col-sm-6 form-group">
							<label for="cnfpassword">Confirm Password</label> <input
								type="password" class="form-control" name="cnfpassword" id="cnfpassword"
								placeholder="Confirm password" required>
								<span id="retype_password_error_message"></span>
						</div>
					</div>
					<!-- <div class="row"> -->
						<button type="submit" id="submit" class="btn btn-primary">Submit</button>

						<button type="reset" class="btn btn-danger">Reset</button>
						
					<!-- </div> -->
				</div>
			</div>
		</div>
	</form>
</body>
</html>