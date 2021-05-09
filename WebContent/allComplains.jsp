
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>All Complains</title>
</head>
<body>
<% 
    if(session.getAttribute("user")==null)
    	response.sendRedirect("login.jsp");
	%>
<jsp:include page="admin_navbar.jsp" />
<jsp:useBean id="cdao" class="model.ComplainDAO" scope="session" />
<% List complains=cdao.getAllComplains();
session.setAttribute("comps", complains);
%>
<div class="main" style="margin-top:100px;">
<div class="w3-container">
  <table class="w3-table-all">
    <thead>
      <tr class="w3-light-grey">
        <th>Complaint Id</th>
        <th>Complainant Name</th>
        <th>Date Of Complaint</th>
        <th>Details</th>
        <th>Response</th>
      </tr>
    </thead>
    <c:forEach var="c" items="${comps}">
<tr>
<td>${c.id}</td>
<td>${c.complainantName}</td>
<td>${c.registeredOn}</td>
<td><a href="complainDetails.jsp?id=${c.id}">Detail</a></td>
<td><a href="complaintResponse.jsp?id=${c.id}">Response</a></td>
</tr>
</c:forEach>   
</table>
</div>
</div>
</body>
</html>