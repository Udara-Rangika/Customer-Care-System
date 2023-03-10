 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="header.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title></title>
</head>
<body>

<a href="login.jsp" class="btnOne" role="button">Login</a> 
	<a href="register.jsp" class="btnOne" role="button">Register</a>

<div class="header">
  
  <div class='logo'>
  <font face = "Imprint MT Shadow" color="85eaea"><b>Lanka Hospitals Customer Service</b></font>
  <div class="header-right">
    <a href="homepage.jsp">Home</a> 
    <a href="new.jsp">Online Appointment</a>
	<a href="service.html">Our Services</a>
	<a href="contactusinsert.jsp">Contact Us</a> 
  </div>
  </div>
</div>

<br><br>

	<c:forEach var="cusDetails" items="${cusDetails}">
	
	<c:set var="id" value="${cusDetails.id} "/>
	<c:set var="name" value="${cusDetails.name} "/>
	<c:set var="email" value="${cusDetails.email} "/>
	<c:set var="mobile" value="${cusDetails.mobile} "/>
	<c:set var="date" value="${cusDetails.date} "/>
	
	<table border ="1">
	<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Email</th>
	<th>Mobile</th>
	<th>Date & Time</th>
	
	</tr>
	<tr>
	<td>${cusDetails.id}</td>
	<td>${cusDetails.name}</td>
	<td>${cusDetails.email}</td>
	<td>${cusDetails.mobile}</td>
	<td>${cusDetails.date}</td>
	</tr>
</table>	
	</c:forEach>
	
	<c:url value="UpCustomer.jsp" var="cusupdate">
	
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="date" value="${date}"/>
	
	</c:url>
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	
	
	<c:url value="delcustomer.jsp" var="cusdelete">
	
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="mobile" value="${mobile}"/>
		<c:param name="date" value="${date}"/>
	
	</c:url>
	
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Data">
	</a>
	<br><br>
	
		<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>
</div>
	
</body>
</html>