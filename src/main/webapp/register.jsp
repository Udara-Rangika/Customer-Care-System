<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="header.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Register Page</title>
</head>
<body class="RegisterBackground">	

	<a href="login.jsp" class="btnOne" role="button">Login</a> 
	<a href="#" class="btnOne" role="button">Register</a>

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

		<form action="insert" method="POST">
			<div class= "Register_body">
				<div class ="Signup-box">
					<div class="left-box">
						<h1>SIGN UP<h1>
						<input type="text" class="input-box" id ="FirstName" name="fname" placeholder="First Name..." required>
						<input type="text" class="input-box" id ="LastName" name="lname" placeholder="Last Name..." required>
						<input type="email" class="input-box"  id ="email"  name="email" placeholder="Email..." required>
						<input type="text" class="input-box" id ="PhoneNumber" name="phone" placeholder="Phone Number..." required>
						<input type="text" class="input-box" id ="UserName" name="uid" placeholder="User Name..." required>
						<input type="password" class="input-box" id ="Password" name="psw" placeholder="Enter Password..." required>
					</div>
					
					<div class="right-box">
						<span class="right-title">Sign Up <br> with <br> Social Network</span>
						<button class="social facebook">Login with Facebook</button>
						<button class="social twiter">Login with Twiter</button>
						<button class="social google">Login with Google+</button>
					</div>
					
					<div class="or">
					OR
					</div>
					
					<div class="checkBox"> 
					<input  id="checkbox" type="checkbox">  I agree with the <a href="#">Terms and Conditions</a>.
					</div>
					<input type="submit" id="submitBtn" class="submit-btn" name="submit" value="Register">
				</div>
			</div>
			
		</form>
		
		<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>
</div>
	
</body>
</html>