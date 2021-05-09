<!DOCTYPE html>
<%@page import="model.UserDetail"%>
<%@page import="model.UserLogin"%>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 350px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
    color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
.image{
height : 300px;
}

</style>
</head>
<body>
<jsp:include page="navbarjsp.jsp" />
<%
UserLogin username=(UserLogin)session.getAttribute("user");
UserDetail user=username.getUserDetail();
%>
<div class="card">
<div class = "image">
  <img src="img/profileimg.png" alt="User" height="300">
 </div>
 <div class="card" style = "background-color : #FDEBD0;padding : 30px;">
  <h3><%out.print(user.getFirstName()+" "+user.getLastName()); %></h3>
  <p class="title"><%out.print(user.getCollegeName()); %></p>
  <p><%out.print(user.getCourse()); %></p>
  <p><%out.print(user.getEmail()); %></p>
  <p><%out.print("contact : " + user.getPhoneNumber()); %></p>
</div>
</div>
</body>
</html>
