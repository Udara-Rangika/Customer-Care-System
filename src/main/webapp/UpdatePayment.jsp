<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	 .form-control{
 	background-color:transparent;
 	 border: 1px solid black;
 	 border-radius: 30px;
 	 padding:4px 4px 4px 15px;
	color: black;
	
 }
 body{
 	background-image: url("https://c1.wallpaperflare.com/preview/566/472/992/electronic-payments-bank-cards-e-commerce-plastic-cards.jpg");
 }
 .box{
 	top:200px;
 	text-align: center;
 }
</style>
<link rel="stylesheet" type="text/css" href="header.css">
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
	
	<%
		String paymentId = request.getParameter("paymentId");
		String paymentMethod = request.getParameter("paymentMethod");
		String service = request.getParameter("service");
		String amount = request.getParameter("amount");
		String cardNumber = request.getParameter("cardNumber");
		String mm = request.getParameter("mm");
		String yy = request.getParameter("yy");
		String cvv = request.getParameter("cvv");
	%>
	
	<div class="box">
	<h1>Update Payment Account</h1>

	<form action="paymentUpdate" method="post">
	
		Payment ID:<input class="form-control" type="text" name="id" value="<%= paymentId%>" readonly><br><br>

			 
		Payment Method : <input class="form-control" type="text" name="options" value="<%= paymentMethod%>" readonly><br><br>
		
		
		Service : <input class="form-control" type="text" name="service" value="<%= service%>" readonly><br><br>
			
		Amount : <input class="form-control" type="number" name="amount" value="<%= amount%>"><br><br>
		
		Card Number : <input class="form-control" type ="number" name="cardnumber" value="<%= cardNumber%>"><br><br>
		
		MM : <input class="form-control" type="number" name="mm" value="<%= mm%>"><br><br>
		
		YY : <input class="form-control" type="number" name="yy" value="<%= yy%>"><br><br>
		
		CVV : <input class="form-control" type ="number" name="cvv" value="<%= cvv%>"><br><br>
	
	
	<input type="submit" name ="submit" value="Save Update Data"><br><br>
	</form>
	</div>
	
	<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>
	</div>
	
</body>
</html>