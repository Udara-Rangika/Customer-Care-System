<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="header.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<a href="login.jsp" class="btnOne" role="button">Login</a> 
	<a href="register.jsp" class="btnOne" role="button">Register</a>

<div class="header">
  
  <div class='logo'>
  <font face = "Imprint MT Shadow" color="85eaea"><b>Lanka Hospitals Customer Service</b></font>
  <div class="header-right">
    <a href="homepage.jsp">Home</a> 
    <a class="active" href="#">Online Appointment</a>
	<a href="service.html">Our Services</a>
	<a href="contactusinsert.jsp">Contact Us</a> 
  </div>
  </div>
</div>

<div>
<div class="full">
<form action='cusinsert' method='post'>

<div class="container mt-5 mb-5 d-flex justify-content-center">
    <div class="card px-1 py-4">
        <div class="card-body">
            <h2 class="card-title mb-3">Appointment</h2>
            
            
            
<label for="party">Enter a date and time for your appointment:</label>
<input id="party" type="datetime-local" name="date" value="2021-09-25  08:30PM">




  
             <h6 class="information mt-4">Please provide following information about You</h6>

            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <!-- <label for="name">Name</label> --> <input  class="form-control" type="text" name = "name" placeholder="Name"> </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <div class="input-group"> <input  class="form-control" type="text" name ="mobile" placeholder="Mobile"> </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <div class="input-group"> <input  class="form-control" type="text" name ="email" placeholder="Email "> </div>
                    </div>
                </div>
            </div>
            <div class=" d-flex flex-column text-center px-5 mt-3 mb-3"> <small class="agree-text">By Booking this appointment you agree to the</small> <a href="#" class="terms">Terms & Conditions</a> </div> <button class="btn btn-primary btn-block confirm-button">Confirm</button>
        </div>
    </div>
</div>
</form>
</div>
<div class="footer">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
		<a href="#" class="fa fa-pinterest"></a>
</div>

</div>