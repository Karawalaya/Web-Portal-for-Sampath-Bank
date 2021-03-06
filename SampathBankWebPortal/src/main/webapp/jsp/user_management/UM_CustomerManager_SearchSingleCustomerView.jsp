<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page  import="POJO_MODEL.employee_hr_payroll_management.Employee, POJO_MODEL.user_management.Customer, java.util.Collection, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- Required meta tags -->
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/customized.css" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<title>Customer Search Result View</title>
		<%
			Employee employee = (Employee) session.getAttribute("employee");
			if(employee == null || !employee.getDesignation().getDesignation().equals("user manager"))
				response.sendRedirect("/SampathBankWebPortal/jsp/user_management/UM_Login.jsp");
		%>
	</head>

    <body>
        <nav class="navbar fixed-top navbar-expand-md navbar-dark fixed-stuff">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp" title="Go to Employee Homepage">EmpHome</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_ViewProfile.jsp" title="View Profile">MyProfile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/SampathBankWebPortal/EmailInboxController" title="View Company Messages">MyInbox</a>
                    </li>
                </ul>
            </div>
            <div class="mx-auto order-0">
                <a class="navbar-brand mx-auto" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp" title="Go to Employee Homepage">SampathEmpWeb</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item" title="Login">
                        <a class="nav-link" href="/SampathBankWebPortal/Logout"><span class="fa fa-sign-in"></span> Sign Out</a>
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
                <div style=" float: right">
                    <div class="container-fluid img_profile_div">
                        <img src="/SampathBankWebPortal/resources/images/ProfilePlaceholder.png" alt="" class="pro-pic">
                    </div>
                    <div class="container-fluid" style="float: right; clear: both;" >
                        <a href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp">Mr. <%=employee.getName().getFirstName()%><br/>
                        <%=employee.getName().getLastName() %></a>
                    </div>
                </div>
            </div>

            <div class="container-fluid" style="margin-top:10px;">
                <ul class="nav nav-pills nav-fill nav-justified nav-header">
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/CustomerRegistrationManagementController?var=getAllRequests" style="color:white">Online Customer Account Management</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/user_management/UM_CustomerManager_SearchForCustomer.jsp" style="color:white">Search For Customers</a>
                        </div>
                    </li>
                    
                    <li class="nav-item dropdown" title="Click to See Leave Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Leave Request Inquiry</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/LeaveHandlingEmployee?xyz=retrieveBase" style="color:white">Apply for Leave</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/LeaveHandlingEmployee?xyz=retrieveHistory" style="color:white">Leave History</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Salary Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Salary Inquiry</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_CalculateSalary.jsp" style="color:white">Calculate Salary</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Employee_Salary_Pay_Slip_PDF.jsp" style="color:white">Pay Slip</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Documentation Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Documents & Reports</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/user_management/UM_CustomerDetailsDocumentation.jsp" style="color:white">Customer Details</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Mail Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Mailing System</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/EmailInboxController" style="color:white">Inbox</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/EmailOutboxController" style="color:white">Outbox</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/user_management/UM_EmailCompose.jsp" style="color:white">New Message</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Profile Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Profile Related</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_ViewProfile.jsp" style="color:white">Profile Details</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_UpdateProfile.jsp" style="color:white">Update Profile</a>
                        </div>
                    </li>
                </ul>
            </div>
        </header>

<!--
    BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY
-->
		<% Customer cus = (Customer) request.getAttribute("cus"); %>
		<nav aria-label="breadcrumb" class="breadcrumb-stuff">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp">EmpHome</a></li>
		    <li class="breadcrumb-item active">Employee Duties</li>
		    <li class="breadcrumb-item active">Search For Customer</li>
		    <%if(cus != null) {%>
		    <li class="breadcrumb-item active" aria-current="page"><%=cus.getPersonId() %></li>
		    <%} else { %>
		    <li class="breadcrumb-item active" aria-current="page">XXXXX</li>
		    <%} %>
		  </ol>
		</nav>
		
		
        <div class="container-fluid" style="margin-bottom: 100px; height: 1000px;">
        
		<%if(cus != null) {%>
		<h3 style="font-weight: bold;"><%=cus.getPersonId() %> : <%=cus.getName().getFullName() %></h3>
					<div style="float: left; margin-right: 15px; margin-left: 22px;">
                        <div style="width: 700px; float: left; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
                            <h5>Basic Details</h5>
                            <table class="table table-borderless">
                            	<tbody>
                            		<tr>
                            			<th scope="row">Full Name: </th>
                            			<td><%=cus.getName().getFullName()%></td>
                            		</tr>
                            		<tr>
                            			<th scope="row">Gender: </th>
                            			<td><%=cus.getGender().getGender() %></td>
                            		</tr>
                            		<tr>
                            			<th scope="row">Nationality: </th>
                            			<td><%=cus.getNationality().getNationality() %></td>
                            		</tr>
                            	</tbody>
                            </table>
                        </div>

                        <div style="width: 700px; padding: 5px; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; clear: both">
                            <h5>Contact Details</h5>
                            <table class="table table-borderless">
                            	<tbody>
                            	<%if(cus.getAddress().getAddressStreet02() != null && cus.getAddress().getAddressStreet02().trim().length() != 0) {%>
                            		<tr>
                            			<th scope="row">Street Address (Line 01): </th>
                            			<td><%=cus.getAddress().getAddressStreet01() %></td>
                            		</tr>
                            		<tr>
                            			<th scope="row">Street Address (Line 02): </th>
                            			<td><%=cus.getAddress().getAddressStreet02() %></td>
                            		</tr>
                            	<%} else {%>
                            		<tr>
                            			<th scope="row">Street Address: </th>
                            			<td><%=cus.getAddress().getAddressStreet01() %></td>
                            		</tr>
                            	<%} %>
                            		<tr>
                            			<th scope="row">City: </th>
                            			<td><%=cus.getAddress().getAddressCity() %></td>
                            		</tr>
                            		<tr>
                            			<th scope="row">Province: </th>
                            			<td><%=cus.getAddress().getAddressProvince() %></td>
                            		</tr>
                            		<tr>
                            			<th scope="row">ZIP Code: </th>
                            			<td><%=cus.getAddress().getAddressZIPCode() %></td>
                            		</tr>
                            		<tr>
                            			<th scope="row">Contact Number </br>(Home): </th>
                            			<td><%=cus.getHomeContact() %></td>
                            		</tr>
								<%if(cus.getMobileContact() != null && cus.getMobileContact().trim().length() != 0) {%>
                            		<tr>
                            			<th scope="row">Contact Number (Mobile): </th>
                            			<td><%=cus.getMobileContact() %></td>
                            		</tr>
                            	<%} %>
                            		<tr>
                            			<th scope="row">Personal Email: </th>
                            			<td><%=cus.getPersonalEmail() %></td>
                            		</tr>
                            	</tbody>
                            </table>
                        </div>
                    </div>

                    <div style="float: left;">
                        <div style="width: 700px; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
                            <h5>Identification</h5>
                            <table class="table table-borderless">
                            	<tbody>
                            		<tr class="table-danger">
                            			<th scope="row">Customer ID: </th>
                            			<td><%=cus.getPersonId() %></td>
                            		</tr>
                            		<tr>
                            			<th scope="row">NIC: </th>
                            			<td><%=cus.getNic() %></td>
                            		</tr>
                            		<tr>
                            			<th scope="row">Date of Birth: </th>
                            			<td><%=cus.getDateOfBirth() %></td>
                            		</tr>
                            	</tbody>
                            </table>
                        </div>
                    </div>
			
		<%} else { %>
			Some Error!
		<%} %>

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

                    <div class="col mb-md-0 mb-3 footer-all-stuff footer-other-stuff">
                        <h5 class="text-uppercase">Profile Related</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="#!" style="color:white">View Profile</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Update Profile</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Update History</a>
                            </li>
                        </ul>

                    </div>

                    <div class="col mb-md-0 mb-3 footer-all-stuff footer-last-stuff" title="Act as a Customer">
                        <h5 class="text-uppercase">Customer Related</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="#!" style="color:white">Transaction</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Loan Calculator</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Lease Calculator</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Complaint</a>
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

<!-- POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP -->
		<style>
			body {font-family: Arial, Helvetica, sans-serif;}
		
			/* Full-width input fields */
			input[type=text], input[type=password] {
			    width: 100%;
			    padding: 12px 20px;
			    margin: 8px 0;
			    display: inline-block;
			    border: 1px solid #ccc;
			    box-sizing: border-box;
			}
			
			/* Set a style for all buttons */
			button {
			    background-color: #4CAF50;
			    color: white;
			    padding: 14px 20px;
			    margin: 8px 0;
			    border: none;
			    cursor: pointer;
			    width: 100%;
			}
			
			button:hover {
			    opacity: 0.8;
			}
			
			/* Extra styles for the cancel button */
			.cancelbtn {
			    width: auto;
			    padding: 10px 18px;
			    background-color: #f44336;
			}
			
			/* Center the image and position the close button */
			.imgcontainer {
			    text-align: center;
			    margin: 24px 0 12px 0;
			    position: relative;
			}
			
			img.avatar {
			    width: 40%;
			    border-radius: 50%;
			}
			
			.container {
			    padding: 16px;
			}
			
			span.psw {
			    float: right;
			    padding-top: 16px;
			}
			
			/* The Modal (background) */
			.modal {
			    display: none; /* Hidden by default */
			    position: fixed; /* Stay in place */
			    z-index: 1; /* Sit on top */
			    left: 0;
			    top: 0;
			    width: 100%; /* Full width */
			    height: 100%; /* Full height */
			    overflow: auto; /* Enable scroll if needed */
			    background-color: rgb(0,0,0); /* Fallback color */
			    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
			    padding-top: 60px;
			}
			
			/* Modal Content/Box */
			.modal-content {
			    background-color: #fefefe;
			    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
			    border: 1px solid #888;
			    width: 80%; /* Could be more or less, depending on screen size */
			}
			
			/* The Close Button (x) */
			.close {
			    position: absolute;
			    right: 25px;
			    top: 0;
			    color: #000;
			    font-size: 35px;
			    font-weight: bold;
			}
			
			.close:hover,
			.close:focus {
			    color: red;
			    cursor: pointer;
			}
			
			/* Add Zoom Animation */
			.animate {
			    -webkit-animation: animatezoom 0.6s;
			    animation: animatezoom 0.6s
			}
			
			@-webkit-keyframes animatezoom {
			    from {-webkit-transform: scale(0)} 
			    to {-webkit-transform: scale(1)}
			}
			    
			@keyframes animatezoom {
			    from {transform: scale(0)} 
			    to {transform: scale(1)}
			}
			
			/* Change styles for span and cancel button on extra small screens */
			@media screen and (max-width: 300px) {
			    span.psw {
			       display: block;
			       float: none;
			    }
			    .cancelbtn {
			       width: 100%;
			    }
			}
		</style>
<!-- POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP -->
<!-- POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP -->
        <div id="id01" class="modal">
		  <form class="modal-content animate" action="/SampathBankWebPortal/ActiveInactiveEmployeeManupulation" method="post">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
		      <img src="/SampathBankWebPortal/resources/images/avatar_sure.png" alt="Avatar" class="avatar">
		    </div>
		
		    <div class="container">
		      	<label for="psw"><b>Enter Your Online Security Key: </b></label>
		      	<input type="password" placeholder="Online Security Key" name="onlineSecKey" required>
		        
		        
		        <input type="hidden" value="removeOnlineAccount" name="anotherDeed"/>
		      	<button type="submit" style="background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 2px; border-style: solid; font-size: 19px; margin-right:10px;">Remove Online</button>
		    </div>
		
		    <div class="container">
		      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
		    </div>
		  </form>
		</div>
		
        <div id="id02" class="modal">
		  <form class="modal-content animate" action="/SampathBankWebPortal/ActiveInactiveEmployeeManupulation" method="post">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
		      <img src="/SampathBankWebPortal/resources/images/avatar_sure.png" alt="Avatar" class="avatar">
		    </div>
		
		    <div class="container">
		    	<label for="psw"><b>Reason for Inactivating: </b></label>
		      	<input type="text" name="reason" required>
		      	
		      	<label for="psw"><b>Enter Your Online Security Key: </b></label>
		      	<input type="password" placeholder="Online Security Key" name="onlineSecKey" required>
		      
		      
		      	<input type="hidden" value="inactivate" name="anotherDeed"/>
		      	<button type="submit" style="background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 2px; border-style: solid; font-size: 19px; margin-right:10px;">Inactivate</button>
		    </div>
		
		    <div class="container">
		      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
		    </div>
		  </form>
		</div>
<!-- POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP -->
		<script>
			// Get the modal
			var modal = document.getElementById('id01');
			var modal2 = document.getElementById('id02');
			
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			    if (event.target == modal || event.target == modal2) {
			        modal.style.display = "none";
			        modal2.style.display = "none";
			    }
			}
		</script>
<!-- POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP -->
    </body>
</html>