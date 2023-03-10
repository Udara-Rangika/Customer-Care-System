<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body{
		background-image: url("https://www.unilab.eu/wp-content/uploads/2021/07/unilab_heat_transfer_software_blog_cyber_security_healthcare-1024x683-1024x585.jpg");
	}
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="header.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<br><br>

	<table border="2px">
		<c:forEach var = "paym" items = "${paymentDetails}">
		
		<c:set var="paymentId" value="${paym.paymentId}"/>
		<c:set var="paymentMethod" value="${paym.paymentMethod}"/>
		<c:set var="service" value="${paym.service}"/>
		<c:set var="amount" value="${paym.amount}"/>
		<c:set var="cardNumber" value="${paym.cardNumber}"/>
		<c:set var="mm" value="${paym.mm}"/>
		<c:set var="yy" value="${paym.yy}"/>
		<c:set var="cvv" value="${paym.cvv}"/>
		
		<tr>
			<td>Payment ID</td>
			<td>${paym.paymentId}</td>
		</tr>
		<tr>
			<td>Payment Method</td>
			<td>${paym.paymentMethod}</td>
		</tr>
		<tr>
			<td>Service</td>
			<td>${paym.service}</td>
		</tr>
		<tr>
			<td>Amount</td>
			<td>${paym.amount}</td>
		</tr>
		<tr>
			<td>Card Number</td>
			<td>${paym.cardNumber}</td>
		</tr>
		<tr>
			<td>MM</td>
			<td>${paym.mm}</td>
		</tr>
		<tr>
			<td>YY</td>
			<td>${paym.yy}</td>
		</tr>
		<tr>
			<td>CVV</td>
			<td>${paym.cvv}</td>
		</tr>
		</c:forEach>
	</table>
	
	<c:url value="UpdatePayment.jsp" var="payUpdate">
	
		<c:param name="paymentId" value="${paymentId}"/>
		<c:param name="paymentMethod" value="${paymentMethod}"/>
		<c:param name="service" value="${service}"/>
		<c:param name="amount" value="${amount}"/>
		<c:param name="cardNumber" value="${cardNumber}"/>
		<c:param name="mm" value="${mm}"/>
		<c:param name="yy" value="${yy}"/>
		<c:param name="cvv" value="${cvv}"/>
		
	</c:url>
	
	<a href="${payUpdate}">
	
		<input type="button" name="update" value="Update Data">
		
	</a>
	
	<c:url value="DeletePayment.jsp" var="payDelete">
	
		<c:param name="paymentId" value="${paymentId}"/>
		<c:param name="paymentMethod" value="${paymentMethod}"/>
		<c:param name="service" value="${service}"/>
		<c:param name="amount" value="${amount}"/>
		<c:param name="cardNumber" value="${cardNumber}"/>
		<c:param name="mm" value="${mm}"/>
		<c:param name="yy" value="${yy}"/>
		<c:param name="cvv" value="${cvv}"/>
			
	</c:url>
	<a href="${payDelete}">
	
		<input type="button" name="delete" value="Delete Data">
		
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