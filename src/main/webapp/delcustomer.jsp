<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="header.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="styles2.css">
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

<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
	%>



<br><br><br>
<div class="Feedbackcontainer" >
<form action="cusdelete" method='post'>
    <label for="fname">ID</label>
    <input type="text" name="id" value="<%= id%>" readonly></br>
	
	<label for="e-mail">Name</label>
	<input type ="text" name="name" value="<%= name%>"readonly></br>
    
     <label for="subject">Mobile</label>
    <input type="text" name="mobile" value="<%= email%>"readonly></br>
    
    	<label for="FeedbackAbout">Email</label>
	<input type="text" name="email" value="<%= mobile%>"readonly>	</br>
	
	<label for="Summary">Date & time</label>
    <input type ="text" name="date" value="<%= date%>"readonly></br>
   
   

    <input type="submit" value="Delete My Appoiment" id="submit-btn"  >
  </form>
</div>

</br></br></br>

<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>
</div>

</body>

</html>