<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body {background-image:url("https://i.pinimg.com/originals/3a/30/c5/3a30c53a6ce206083dd6820640801b53.jpg");}
</style>
<link rel="stylesheet" type="text/css" href="pay.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<br><br><br><br>

	<form action="display" method="post">
	<div class="border">
		<center>
		<div class="row">
			<div class="col-xs-12">
				<div class="form-group"> <label>Card Number</label>
					<input type="number" name="cardnumber" class="form-control" placeholder="Valid Card Number" /> <span class="input-group-addon"><span class="fa fa-credit-card"></span></span> 
				</div>
			</div>
		</div>
		<br>           
		<div class="row">
			<div class="col-sm-8">
				<div class="form-group">
					<label><span class="hidden-xs">Expiration</span> </label>
										
						<input type="number" class="form-control" placeholder="MM" name="mm">
						<input type="number" class="form-control" placeholder="YY" name="yy">
						    		
						<br><br>
					    <div>
					       <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
					       <input type="number" class="form-control" name = "cvv" placeholder="CVV" required="">
					     </div>
					     <br>
				</div>
			</div>
		
		<input type="submit" name="submit" value="Submit"> 
		<br><br>
		</center>
		</div>
	</form>
	
	
</body>
</html>