<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type= "text/css" href="pic.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type= "text/css" href="pic.css">
	<meta charset="ISO-8859-1">
	<title>Delete Contact forms</title>
	<link rel="stylesheet" type= "text/css" href="design.css">
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
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String subject = request.getParameter("subj");
		String district = request.getParameter("distc");
		String password = request.getParameter("pass");
	%>

	<h1>Delete Contact Form</h1>

	<form action="condelete" method="post">
	<table>
		<tr>
			<td>Contact ID</td>
			<td><input type="text" name="contid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>" readonly></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>" readonly></td>
	</tr>
	<tr>
		<td>Subject</td>
		<td><input type="text" name="subj" value="<%= subject %>" readonly></td>
	</tr>
	
	<tr>
		<td>District</td>
		<td><input type="text" name="distc" value="<%= district %>" readonly></td>
	</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Delete Contact Details">
	</form>
</center>


<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>	
</div>	


</body>
</html>