<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="header.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">

<title>Profile Delete</title>
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
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
	%>
	
	<form class="form-basic" method="post" action="delete">

    	<div class="form-title-row">
         	<h1>Delete Profile</h1>
        </div>

        <div class="form-row">
        	<label>
            	<span>Customer ID :</span>
                <input type="text" name="cusid" value="<%= id %>" readonly>
            </label>
        </div>

        <div class="form-row">
            <label>
            	<span>First Name :</span>
                <input type="text" name="fname" value="<%= fname %>" readonly>
            </label>
        </div>
            
        <div class="form-row">
            <label>
                <span>Last Name :</span>
                <input type="text" name="lname" value="<%= lname %>" readonly>
            </label>
        </div>
            
        <div class="form-row">
     	   <label>
               <span>Email :</span>
               <input type="text" name="email" value="<%= email %>" readonly>
           </label>
        </div>
            
        <div class="form-row">
 	       <label>
           	   <span>Phone number :</span>
               <input type="text" name="phone" value="<%= phone %>" readonly>
           </label>
        </div>
            
        <div class="form-row">
           <label>
               <span>User Name :</span>
               <input type="text" name="uname" value="<%= userName %>" readonly>
           </label>
        </div>

        <div class="form-row">
        	<button type="submit" name="submit">Delete</button>
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