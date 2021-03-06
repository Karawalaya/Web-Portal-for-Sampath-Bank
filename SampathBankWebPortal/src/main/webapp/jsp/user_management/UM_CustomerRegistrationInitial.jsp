<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/customized.css" type="text/css">
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/customized03.css" type="text/css">		
	    <title>Customer Registration</title>
	    <script type="text/javascript">
	    	function autoFill() {
	    		
	    		document.getElementById('reg01').value = "968052039v";
			   <!-- document.getElementById('reg02').value = "Abc"; -->
			    document.getElementById('reg03').value = "10280";
			    document.getElementById('reg04').value = "keshanibogahawatte96@gmail.com";
			    document.getElementById('reg05').value = "808080808";
	    	}
	    
	    </script>
    </head>

    <body>
        <nav class="navbar fixed-top navbar-expand-md navbar-dark fixed-stuff">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/SampathBankWebPortal/UM_Homepage_Common.jsp" title="Go to Common Homepage">Common Home</a>
                    </li>
                    
                </ul>
            </div>
            <div class="mx-auto order-0">
                <a class="navbar-brand mx-auto" href="/SampathBankWebPortal/UM_Homepage_Common.jsp" title="Go to Common Homepage">Sampath Web Portal</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item" title="Sign Up">
                        <a class="nav-link" href="#"><span class="fa fa-user"></span> Sign Up</a>
                    </li>
                    <li class="nav-item" title="Login">
                        <a class="nav-link" href="/SampathBankWebPortal/jsp/user_management/UM_Login.jsp"><span class="fa fa-sign-in"></span> Login</a>
                    </li>
                </ul>
            </div>
        </nav>

        <header class="page-header" id="header01">
            <div class="header-mid">
                <a href="#" title="Go to Sampath Web Site">
                    <div class="container-fluid img-div">
                        <img src="/SampathBankWebPortal/resources/images/sampathbanklogo/SampathBankLogo01.png" alt="" class="logo">
                    </div>
                </a>       
            </div>

            <div class="container-fluid">
                <ul class="nav nav-pills nav-fill nav-justified nav-header">
                    <!--fixed-top-->
                    <li class="nav-item dropdown" title="Click to go to Homepage">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Home</a>
                            
                    </li>
                    <li class="nav-item dropdown" title="Click to See About Us">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">About Us</a>
                        
                    </li>
                    <li class="nav-item dropdown" title="Click to Contact Us">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Contact Us</a>
                        
                    </li>
                    <li class="nav-item dropdown" title="Click to See Available Jobs ">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Careers</a>
                        
                    </li>
                    <li class="nav-item dropdown" title="Click to See News">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">News</a>
                        
                    </li>
                    <li class="nav-item dropdown" title="Click to See Branches">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Branch Network</a>
                        
                    </li>
                </ul>
            </div>
        </header>

        <div class="container" style="height: 600px; padding-top: 40px;">
<!-- 
	FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM
 -->    
 			<h4 style="color: orange; text-align: center;">This is for customer registration only!</h4>
 			<h4 style="color: orange; text-align: center;">Customers who are registering must to have a physical account in the bank itself!!</h4>
 			
 			
<!-- 	 			<input type="text" name="regNic" placeholder="NIC"/>
	 			<input type="date" name="regDOB" placeholder="date"/>
	 			<input type="text" name="regZIP" placeholder="00000"/>
	 			<input type="email" name="regPersonalEmail" placeholder="abc@abc.com"/>
	 			<input type="text" name="regAccountNo" placeholder="000000000"/>
	 			<input type="submit" name="submitInitialRegistration"/> -->
 			
 			<form action="/SampathBankWebPortal/CustomerRegistrationController" method="post">
	 			<div style="align-content: center; margin-right: 5px;  padding-left:250px">
	                <div style="width: 550px; align: center; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px">
	                    <div class="form-group row" style="padding: 4px; padding-left: 16px">
	                        <label class="col-4 col-form-label" for="reg01">NIC: *</label>
	                        <div class="col-8">
	                        	<input type="text" class="form-control" id="reg01" name="regNic" placeholder="000000000v">
	                        </div>
	                    </div>
	                    <div class="form-group row" style="padding: 4px; padding-left: 16px">
	                        <label class="col-4 col-form-label" for="reg02">Date of Birth:</label>
	                        <div class="col-8">
	                            <input type="date" class="form-control" id="reg02" name="regDOB">
	                        </div>
	                    </div>
	                    <div class="form-group row" style="padding: 4px; padding-left: 16px">
	                        <label class="col-4 col-form-label" for="reg03">ZIP: *</label>
	                        <div class="col-8">
	                        	<input type="number" class="form-control" id="reg03" name="regZIP">
	                        </div>
	                    </div>
	                    <div class="form-group row" style="padding: 4px; padding-left: 16px">
	                        <label class="col-4 col-form-label" for="reg04">Personal Email:</label>
	                        <div class="col-8">
	                            <input type="text" class="form-control" id="reg04" name="regPersonalEmail" placeholeder="email@email.com">
	                        </div>
	                    </div>
	                    <div class="form-group row" style="padding: 4px; padding-left: 16px">
	                        <label class="col-4 col-form-label" for="reg05">Account No:</label>
	                        <div class="col-8">
	                            <input type="number" class="form-control" id="reg05" name="regAccountNo">
	                        </div>
	                    </div>
	                    <div class="clearfix">
	                    	<button type="submit" name="submitInitialRegistration">Submit</button>
	                    	<button type="button" onClick="autoFill();"  >Demo</button>
	                    </div>	                    
	                </div>
	                
				</div>
 			</form>
         

		 </div>

        <!-- Footer -->
        <footer class="page-footer font-small blue pt-4 footer-all">
            <div class="container-fluid text-center text-md-left">
                <div class="row">
                    <div class="col-6 mt-md-0 mt-3 footer-all-stuff footer-legal-form-stuff" title="Our Legal Form">
                        <h5 class="text-uppercase">Legal Form</h5>
                        <p style="text-align: justify">A Public Limited Liability Company incorporated in Sri Lanka on 10th March 1986 under the Companies Act No 17 of 1982 and listed in the Colombo Stock Exchange. A licensed Commercial Bank under the Banking Act No 30 of 1988. Re-registered on 28th April 2008 under the Companies Act No 7 of 2007.</p>
                    </div>

                    <hr class="clearfix w-100 d-md-none pb-3">

                    <div class="col mb-md-0 mb-3 footer-all-stuff footer-other-stuff" title="Know About the Company">
                        <h5 class="text-uppercase">Company</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="#!" style="color:white">Home</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">About Us</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Contact Us</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Privacy Policy</a>
                            </li>
                        </ul>
                    </div>
               
                </div>

                <!-- Copyright -->
                <div class="footer-copyright text-left py-1 footer_copyright" title="Disclaimer">� All Rights Reserved @2018 |
                    <a href="#" title="Owners/ Group"> ITP-2018-MLB-G3-10.</a> |
                    <a href="#" title="Privacy Policy"> Privacy Policy.</a>
                </div>
                <!-- Copyright -->
            </div>
            <!-- Footer Links -->

        </footer>
        <!-- Footer -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="/SampathBankWebPortal/resources/css&js&jquery/jquery-3.3.1.slim.min.js"></script>
        <script src="/SampathBankWebPortal/resources/css&js&jquery/popper.min.js"></script>
        <script src="/SampathBankWebPortal/resources/css&js&jquery/bootstrap.min.js"></script>
        <script src="/SampathBankWebPortal/resources/css&js&jquery/customized.js"></script>
    <script>
    
    </script>
    
   
    </body>
</html>