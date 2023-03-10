<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="PaymentStyle.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Payment Page</title>
</head>
<body class="PaymentBackground">	

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

		<form action="paymentInsert" method="POST">
			<div class= "Payment_body">
				<div class ="Payment-box">
					
						<div class="container">
							<div class="row">
								<div class="paymentCont">
												
									<div class="paymentWrap">
										<div class="btn-group paymentBtnGroup btn-group-justified" data-toggle="buttons">
											<label class="btn paymentMethod active">
											    <div class="method visa"></div>
											    <input type="radio" name="options" value="visacard" checked> 
											</label>
											<label class="btn paymentMethod">
											    <div class="method master-card"></div>
											    <input type="radio" name="options" value="mastercard"> 
											</label>
											<label class="btn paymentMethod">
										        <div class="method amex"></div>
											    <input type="radio" name="options" value="amex">
											</label>
											<label class="btn paymentMethod">
										        <div class="method vishwa"></div>
											    <input type="radio" name="options" value="HNB"> 
											</label>
											
										</div>        
									</div>
								</div>
							</div>
						</div>
						<br>
						<!-- **************************************************************************************************** -->
						<div align="center">
							<div> <label for="services">Select Services:</label>
	            				<div>
	            					<select name="service" id="service">
	            						<option value="Appointment">Appointment</option>
	            						<option value="Lab Test">Lab Test</option>
	            						<option value="Patient Admit">Patient Admit</option>
	            						<option value="Ambulance">Ambulance</option>
	            						<option value="Service charge">Service charge</option>
	            					</select>
			               		 	
								</div>
							</div>
							<br><br>
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group"> <label>Amount</label>
										 <input type="number" name="amount" class="form-control" placeholder="Rs." /> 
									</div>
								</div>
							</div>
				            <br><br>     
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group"> <label>Card Number</label>
										<input type="number" name="cardnumber" class="form-control" placeholder="Valid Card Number" /> <span class="input-group-addon"><span class="fa fa-credit-card"></span></span> 
									</div>
								</div>
							</div>
				            <br><br>              
							<div class="row">
								<div class="col-sm-8">
									<div class="form-group">
										<label><span class="hidden-xs">Expiration</span> </label>
										
										<input type="number" class="form-control" placeholder="MM" name="mm">
						    			<input type="number" class="form-control" placeholder="YY" name="yy">
						    		
						    		<br><br>
					        		<div>
					        			<label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
					            		<input type="number" class="form-control" name = "cvv" required="">
					           		</div>
					           		<br>
					         	</div>
					   		</div>
					   	</div>
					   	
					   	<br>
						<!-- **************************************************************************************************** -->
					
					<input type="submit" id="submitBtn" class="submit-btn" name="submit" value="Pay">
					
					
				</div>
			</div>
			
		</form>

</body>
</html>