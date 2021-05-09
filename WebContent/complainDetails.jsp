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
<jsp:include page="admin_navbar.jsp"/>
<%
ComplainDAO cdao=new ComplainDAO();
ComplaintResponseDAO rdao=new ComplaintResponseDAO();
Complain c=cdao.getComplainById(Integer.parseInt(request.getParameter("id")));
session.setAttribute("c", c);
ComplaintResponse r=rdao.getComplaintResponseByComplainId(c.getId());
%>
<div style="margin-left:300px,margin-top:300px;">
 <div class="card" style = "background-color : #FDEBD0;padding : 30px;float:left;margin:">
  <h3><%out.print("Complainant Name:"+" "+c.getcomplainantName());%></h3>
  <h3><%out.print("Victim Name:"+c.getVictimName());%></h3>
  <p><%out.print("email:"+c.getEmail());%></p>
  <p><%out.print("Contact:"+c.getMobileNumber());%></p>
  <p><%out.print("College Name:"+c.getCollegeName());%></p>
  <p><%out.print("Registered on:"+c.getRegisteredOn());%></p>
  <p><%if(r!=null)
  {out.print("Active Status:"+r.getStatus());}
  else{
  out.print("No status Yet!");}%></p>
</div>
<div class="card" style = "background-color : #FDEBD0;padding : 30px;margin-left:10px;float:left">
 <h3><%out.print("Ragging Details");%></h3>
 <p><%out.print(c.getRaggingDetails());%></p>
 <p><a href="complaintResponse.jsp?id=${c.id}">Reponse</a></p>
</div>
</div>
</body>
</html>
