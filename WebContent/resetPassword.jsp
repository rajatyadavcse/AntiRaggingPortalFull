<%@page import="model.UserLoginDAO"%>
<%@page import="model.ForgetPasswordDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
</head>
<body>
<form action="">
<label>New Password</label>
<input type="text" name="password"><br>
<input type="text" name="cnfpassword"><br>
<input type="submit" value="Reset">
</form>
<%
String password=request.getParameter("password");
String email=(String)session.getAttribute("email");
int token=(int)session.getAttribute("token");
ForgetPasswordDAO fdao=new ForgetPasswordDAO();
int token1=fdao.findTokenByEmail(email);
UserLoginDAO ldao=new UserLoginDAO();
if(token==token1){
	ldao.changePasswordByEmail(email, password);
	%>
	<script type="text/javascript">
	alert("password is changed successfully");
	</script>
	<%
}
else
{
	%>
	<script type="text/javascript">
	alert("password could not be changed");
	</script>
	<%
}
%>
</body>
</html>