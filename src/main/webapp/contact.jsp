<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type= "text/css" href="pic.css">
	<meta charset="ISO-8859-1">
	<title>login Interface</title>
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	.border{
position:relative;
margin:10% auto;
height:200px;
width:500px;
background:rgba(0,0,0,0.4);
box-shadow:0 2px 4px rgba(0,0,0,0.8);
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
<div class="border">


	<h1>Contact us login</h1>
	<form action="contact" method="post">
		PateintID <input type="text" name="username" placeholder="Enter your username"><br>
		<br>
		Password <input type="password" name="password" placeholder="Enter your password"><br>
		<br><input type="submit" name="submit" value="View">
	</form>
</div>
</center>

<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>
</div>




</body>
</html>