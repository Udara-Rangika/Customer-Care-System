<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CONTACTUS FORM</title>
<link rel="stylesheet" type= "text/css" href="design.css">
<link rel="stylesheet" type= "text/css" href="pic.css">
<link rel="stylesheet" type="text/css" href="header.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

<a href="#" class="btnOne" role="button">Login</a> 
	<a href="register.jsp" class="btnOne" role="button">Register</a>

<div class="header">
  
  <div class='logo'>
  <font face = "Imprint MT Shadow" color="85eaea"><b>Lanka Hospitals Customer Service</b></font>
  <div class="header-right">
    <a href="homepage.jsp">Home</a> 
    <a href="new.jsp">Online Appointment</a>
	<a href="service.html">Our Services</a>
	<a href="#">Contact Us</a> 
  </div>
  </div>
</div>
	<br><br>
	<form action="coninsert" method="post">
	<table>
	<tr>
			<td>Name<input type="text" name="name"   placeholder="Full name.."><br></td>
	</tr>	
	<tr>
	 		<td>Email <input type="text" name="email"  placeholder="Enter email here.."></td>
	</tr>
	<tr>
			<td>Phone No <input type="text" name="phone" placeholder="+94"></td>
	</tr>
	
	<tr>
			<td>PatientID <input type="text" name="uid" placeholder="Enter Patient ID"></td>
	</tr>
	
	<tr>
			<td>Subject <input type="text" name="subj" placeholder="About what.."></td>
	</tr>
	
	<tr>
		    <td>District <input type="text" name="distc" placeholder="Galle,Colombo,Gampaha,Mat..."></td>
	</tr>
	
	<tr>
			<td>	Create Password <input type="password" name="psw" placeholder="5-digits"></td>
	</tr>

</table>	
<br>
			<input type="submit" name="submit" value="Submit">
	
	
	

</form>

<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>
</div>

</body>
</html>
