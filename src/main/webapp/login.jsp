<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
<link rel="stylesheet" type="text/css" href="ustyle3.css">
<link rel="stylesheet" type="text/css" href="header.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<title>Login Page</title> 
	
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
	<a href="contactusinsert.jsp">Contact Us</a> 
  </div>
  </div>
</div>


<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>SIGN IN</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form action="login" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="uid" class="form-control" placeholder="Username">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="pass" class="form-control" placeholder="Password">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					<div class="form-group">
						<input type="submit" name="submit" value="Login" class="btn float-right login_btn">
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Don't have an account?<a href="register.jsp">Sign Up</a>
				</div>
			</div>
		</div>
	</div>
</div>			
		
<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>
</div>

</body>
</html>