<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type= "text/css" href="pic.css">
	<meta charset="ISO-8859-1">
	<title>Details Page</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>


<a href="login.jsp" class="btnOne" role="button">Login</a> 
<a href="register.jsp" class="btnOne" role="button">Register</a>
<div class="header">
  <div class='logo'>
  <font face = "Imprint MT Shadow"><b>Lanka Hospitals Customer Service</b></font>
  <div class="header-right">
    <a href="homepage.jsp">Home</a> 
    <a href="new.jsp">Online Appointment</a>
	<a href="service.html">Our Services</a>
	<a class="active" href="contactusinsert.jsp">Contact Us</a>
  </div>
  </div>
</div>


<center>
<h1>View Insert Details</h1>

	<table>
	<c:forEach var="cont" items="${contDetails}">
	
	<c:set var="id" value="${cont.id}"/>
	<c:set var="name" value="${cont.name}"/>
	<c:set var="email" value="${cont.email}"/>
	<c:set var="phone" value="${cont.phone}"/>
	<c:set var="username" value="${cont.userName}"/>
	<c:set var="subject" value="${cont.subject}"/>
	<c:set var="district" value="${cont.district}"/>
	<c:set var="password" value="${cont.password}"/>
	
	<tr>
		<td>Contact ID</td>
		<td>${cont.id}</td>
	</tr>
	<tr>
		<td>Contact Name</td>
		<td>${cont.name}</td>
	</tr>
	<tr>
		<td>Contact Email</td>
		<td>${cont.email}</td>
	</tr>
	<tr>
		<td>Contact Phone</td>
		<td>${cont.phone}</td>
	</tr>
	<tr>
		<td>Contact User Name</td>
		<td>${cont.userName}</td>
	</tr>
	<tr>
		<td>Subject</td>
		<td>${cont.subject}</td>
	</tr>
	<tr>
		<td>District</td>
		<td>${cont.district}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updatecontactus.jsp" var="contupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="subj" value="${subject}"/>
		<c:param name="distc" value="${district}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${contupdate}">
	<br>
	<input type="button" name="update" value="Edit Form">
	</a>
	
	
	<c:url value="deletecontactus.jsp" var="contdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="subj" value="${subject}"/>
		<c:param name="distc" value="${district}"/>
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${contdelete}">
	<input type="button" name="delete" value="Delete Form">
	</a>
</center>	


<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>	
</div>	


</body>
</html>