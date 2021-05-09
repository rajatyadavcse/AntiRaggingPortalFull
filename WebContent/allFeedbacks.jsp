<%@page import="java.util.List"%>
<%@page import="model.FeedBackDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>All Feedback</title>
</head>
<body>
<% 
    if(session.getAttribute("user")==null)
    	response.sendRedirect("login.jsp");
	%>
<jsp:include page="admin_navbar.jsp" />
<jsp:useBean id="fdao" class="model.FeedBackDAO" scope="session" />
<% 
 List feedbacks=fdao.getAllFeedback();
session.setAttribute("feeds", feedbacks);
%>
<div class="main" style="margin-top:100px;">
<div class="w3-container">
  <table class="w3-table-all">
    <thead>
      <tr class="w3-light-grey">
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Mobile Number</th>
        <th>Feedback</th>
      </tr>
    </thead>
    <c:forEach var="c" items="${feeds}">
<tr>
<td>${c.id}</td>
<td>${c.name}</td>
<td>${c.email}</td>
<td>${c.mobileNumber}</td>
<td>${c.feedback}</td>
</tr>
</c:forEach>   
</table>
</div>
</div>
</body>
</html>