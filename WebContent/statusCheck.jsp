<!DOCTYPE html>
<%@page import="model.ComplaintResponseDAO"%>
<%@page import="model.ComplaintResponse"%>
<%@page import="model.Complain"%>
<%@page import="model.ComplainDAO"%>
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
ComplainDAO cdao=new ComplainDAO();
ComplaintResponseDAO rdao=new ComplaintResponseDAO();
int complainID=Integer.parseInt(request.getParameter("complainId"));
ComplaintResponse r=new ComplaintResponseDAO().getComplaintResponseByComplainId(complainID);
session.setAttribute("r", r);
%>
<div class="abc" style="margin-left:300px,margin-top:300px;">
 <div class="card" style = "background-color : #FDEBD0;padding : 30px;float:left;margin:">
   <p><%if(r!=null)
  {%>  <h3><% out.println("ComplainID="+" "+r.getComplainId());%></h3>
  <h3><%out.println("status="+" "+r.getStatus());%></h3>
  <p><%out.println("message="+" "+r.getAction());%></p><%}
  else{
  out.print("No status Yet!");}%></p>



</div>
</div>
</body>
</html>
