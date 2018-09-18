<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page  import="POJO_MODEL.employee_hr_payroll_management.Employee"%>
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
		<title>Employee Profile</title>
		<%
			Employee employee = (Employee) session.getAttribute("employee");
			if(employee == null)
				response.sendRedirect("/SampathBankWebPortal/jsp/user_management/UM_Login.jsp");
		%>
	</head>
	<body>
        <nav class="navbar fixed-top navbar-expand-md navbar-dark fixed-stuff">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp" title="Go To Employee Homepage">EmpHome</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" title="View Profile">MyProfile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" title="View Company Messages">MyInbox</a>
                    </li>
                </ul>
            </div>
            <div class="mx-auto order-0">
                <a class="navbar-brand mx-auto" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp" title="Go To Employee Homepage">SampathEmpWeb</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item" title="Login">
                        <a class="nav-link" href="#"><span class="fa fa-sign-in"></span> Sign Out</a>
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
                        <a href="">Mr. <%=employee.getName().getFirstName()%><br/>
                        <%=employee.getName().getLastName() %></a>
                    </div>
                </div>
            </div>

            <div class="container-fluid" style="margin-top:10px;">
                <ul class="nav nav-pills nav-fill nav-justified nav-header">
                <%if(employee.getDesignation().getDesignation().equals("human resource manager")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_HRManager_RecruitAnEmployee.jsp" style="color:white">Recruit an Employee</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/OnlineEmployeeAccountController?abc=check" style="color:white">Create Employee Online Account</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/ActiveInactiveSearchEmployees?deed=allActive" style="color:white">Active Employees</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/ActiveInactiveSearchEmployees?deed=inActive" style="color:white">Inactive Employees</a>
                            <a class="dropdown-item" href="" style="color:white">Search for Employees</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/HRLeaveRequestManagement?lmanage=getAllLeaveRequests" style="color:white">Leave Request Management</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/UpdateProfileDetailsHRSide?upmanage=retrieveAll" style="color:white">Update Details Request Management</a>
                            <a class="dropdown-item" href="#" style="color:white">Salary Management</a>
                        </div>
                    </li>
                    <%} else if(employee.getDesignation().getDesignation().equals("admin")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                    	<a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                    	<div class="dropdown-menu nav-dropdown">
	                        <a class="dropdown-item" href="#" style="color:white">admin job 01</a>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#" style="color:white">admin job 02</a>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#" style="color:white">admin job 03</a>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#" style="color:white">admin job 04</a>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#" style="color:white">admin job 05</a>
                    	</div>
                	</li>
                    <%} else if(employee.getDesignation().getDesignation().equals("normal employee")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 01</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 02</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 03</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 04</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 05</a>
                        </div>
                    </li>
                    <%} %>
                    
                    <li class="nav-item dropdown" title="Click to See Leave Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Leave Request Inquiry</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/LeaveHandlingEmployee?xyz=retrieveBase" style="color:white">Apply for Leave</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/LeaveHandlingEmployee?xyz=retrieveHistory" style="color:white">Leave History</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">Leave Analysis</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Salary Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Salary Inquiry</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Calculate Salary</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">Salary History</a>
                            <a class="dropdown-item" href="#" style="color:white">Next Salary Details</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Skills Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Skills Management</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Action</a>
                            <a class="dropdown-item" href="#" style="color:white">Another action</a>
                            <a class="dropdown-item" href="#" style="color:white">Something else here</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">Separated link</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Mail Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Mailing System</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Inbox</a>
                            <a class="dropdown-item" href="#" style="color:white">Outbox</a>
                            <a class="dropdown-item" href="#" style="color:white">New Message</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Profile Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Profile Related</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Profile Details</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_UpdateProfile.jsp" style="color:white">Update Profile</a>
                        </div>
                    </li>
                </ul>
            </div>
        </header>

<!--
    BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY
-->
		<nav aria-label="breadcrumb" class="breadcrumb-stuff">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item" aria-current="page"><a href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp">EmpHome</a></li>
		    <li class="breadcrumb-item acive" aria-current="page">Employee Profile</li>
		    <li class="breadcrumb-item acive" aria-current="page"><%=employee.getPersonId() %></li>
		  </ol>
		</nav>
		
        <div class="container-fluid" style="margin-bottom: 100px; height: auto">
			<div class="container" style="height: 400px; background-color: lightgrey; border-width: 1px; border-style: solid; border-color: #FD4F00;">
				<div class="container" style="float: left; width: 250px; padding: 0px; margin-right: 50px;">
					<img src="/SampathBankWebPortal/resources/images/ProfilePlaceholder.png" class="img-circle pro-pic" alt="Cinque Terre" width="100%" style="border-width: 2px; border-style: solid; border-color: #FD4F00;">
				</div>
				<div class="container" style="float: left; width: auto; padding: 0px; font-family: century-gothic; color: black;">
					<table class="table table-borderless">
						<tbody>
							<tr>
								<th scope="row" style="font-size: 28px;"><%=employee.getName().getFullName() %> (<%=employee.getPersonId() %>)</th>
							</tr>
							<tr>
								<td style="font-size: 20px;"><%=employee.getDesignation().getDesignation().toUpperCase() %></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="container" style="height: auto; background-color: white; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-top: 10px; padding: 2px;">
				<div style="height: 40px; font-size: 26px; padding-left: 10px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #FD4F00;">
					Basic Information
				</div>
				<div>
					<table class="table table-borderless" style="margin: 20px; width: 1100px;">
					  <tbody>
					    <tr style="color: #FD4F00; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #FD4F00;">
					      <th colspan="2">Contact Info</th>
					      <th>Other Info</th>
					    </tr>
					    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: black;">
					      <td style="width: 240px; font-weight: bold;">Personal Email</td>
					      <td style="width: 550px"><%=employee.getPersonalEmail() %></td>
					      <td><button type="button" class="btn btn-sm" onclick="document.getElementById('id01').style.display='block'" style="width:full; background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 1px; border-style: solid; font-size: 19px; width: full; margin: 0px;">Personal</button></td>
					    </tr>
					    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: black;">
					      <td style="width: 240px; font-weight: bold;">Company Email</td>
					      <td style="width: 550px"><%=employee.getCompanyEmail() %></td>
						  <td><button type="button" class="btn btn-sm" onclick="document.getElementById('id02').style.display='block'" style="width:full; background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 1px; border-style: solid; font-size: 19px; width: full; margin: 0px;">Employment</button></td>
					    </tr>
					    <tr style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: black;">
					      <td style="width: 240px; font-weight: bold;">Home</td>
					      <td style="width: 550px"><%=employee.getHomeContact() %></td>
					      <td><button type="button" class="btn btn-sm" onclick="document.getElementById('id03').style.display='block'" style="width:full; background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 1px; border-style: solid; font-size: 19px; width: full; margin: 0px;">Branch</button></td>
					    </tr>
					    <tr>
					      <td style="width: 240px; font-weight: bold;">Mobile</td>
					      <td style="width: 550px"><%=employee.getMobileContact() %></td>
					      <td><button type="button" class="btn btn-sm" onclick="document.getElementById('id04').style.display='block'" style="width:full; background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 1px; border-style: solid; font-size: 19px; width: full; margin: 0px;">Department</button></td>
					    </tr>
					  </tbody>
					</table>
				</div>
			</div>
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
			    background-color: #FD4F00;
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
		  <form class="modal-content animate" action="#" method="#">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
		    </div>
		
		    <div class="container">
				<div style="float: left;">
	                <div style="width: 500px; float: left; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
	                    <table class="table table-borderless table-hover">
	                    	<tbody>
	                    		<tr>
	                    			<th style="width: 150px;" scope="row">Full Name: </th>
	                    			<td style="width: 350px;"><%=employee.getName().getFullName()%></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 150px;" scope="row">NIC: </th>
	                    			<td style="width: 350px;"><%=employee.getNic() %></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 150px;" scope="row">Gender: </th>
	                    			<td style="width: 350px;"><%=employee.getGender().getGender() %></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 150px;" scope="row">Nationality: </th>
	                    			<td style="width: 350px;"><%=employee.getNationality().getNationality() %></td>
	                    		</tr>
	                    	</tbody>
	                    </table>
	            	</div>
		    	</div>
				<div style="float: left; margin-left: 10px;">
	                <div style="width: 500px; float: left; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
	                    <table class="table table-borderless table-hover">
	                    	<tbody>
	                    		<tr>
	                    			<th style="width: 150px;" scope="row">Birth Date: </th>
	                    			<td style="width: 350px;"><%=employee.getDateOfBirth()%></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 150px;" scope="row">Address: </th>
	                    			<td style="width: 350px;"><%=employee.getAddress().getFullAddress()%></td>
	                    		</tr>
	                    	</tbody>
	                    </table>
	            	</div>
		    	</div>
		    </div>
		
		    <div class="container">
		      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Done</button>
		    </div>
		  </form>
		</div>
		
        <div id="id02" class="modal">
		  <form class="modal-content animate" action="#" method="#">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
		    </div>
		
		    <div class="container">
				<div style="float: left;">
	                <div style="width: 1000px; float: center; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
	                    <table class="table table-borderless table-hover">
	                    	<tbody>
	                    		<tr>
	                    			<th style="width: 300px;" scope="row">Registration Date (Physical): </th>
	                    			<td style="width: full;"><%=employee.getRegistrationDates().getPhysicalRegistrationDate()%></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 300px;" scope="row">Registration Date (Online): </th>
	                    			<td style="width: full;"><%=employee.getRegistrationDates().getOnlineRegistrationDate() %></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 300px;" scope="row">Designation: </th>
	                    			<td style="width: full;"><%=employee.getDesignation().getDesignation() %></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 300px;" scope="row">Type: </th>
	                    			<td style="width: full;"><%=employee.getEmployeeType() %></td>
	                    		</tr>
	                    	</tbody>
	                    </table>
	            	</div>
		    	</div>
		    </div>
		
		    <div class="container">
		      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
		    </div>
		  </form>
		</div>
		
        <div id="id03" class="modal">
		  <form class="modal-content animate" action="#" method="#">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
		    </div>
		
		    <div class="container">
				<div style="float: left;">
	                <div style="width: 1000px; float: center; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
	                    <table class="table table-borderless table-hover">
	                    	<tbody>
	                    		<tr>
	                    			<th style="width: 250px;" scope="row">Branch ID: </th>
	                    			<td style="width: full;"><%=employee.getBranch().getBranchId()%></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 250px;" scope="row">Branch Address: </th>
	                    			<td style="width: full;"><%=employee.getBranch().getBranchAddress().getFullAddress() %></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 250px;" scope="row">Branch Email: </th>
	                    			<td style="width: full;"><%=employee.getBranch().getBranchEmail() %></td>
	                    		</tr>
	                    	</tbody>
	                    </table>
	            	</div>
		    	</div>
		    </div>
		
		    <div class="container">
		      <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Done</button>
		    </div>
		  </form>
		</div>
		
        <div id="id04" class="modal">
		  <form class="modal-content animate" action="#" method="#">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>
		    </div>
		
		    <div class="container">
				<div style="float: left;">
	                <div style="width: 1000px; float: center; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
	                    <table class="table table-borderless table-hover">
	                    	<tbody>
	                    		<tr>
	                    			<th style="width: 250px;" scope="row">Department ID: </th>
	                    			<td style="width: full;"><%=employee.getDepartment().getDepartmentId()%></td>
	                    		</tr>
	                    		<tr>
	                    			<th style="width: 250px;" scope="row">Department Name: </th>
	                    			<td style="width: full;"><%=employee.getDepartment().getDepartmentName() %></td>
	                    		</tr>
	                    	</tbody>
	                    </table>
	            	</div>
		    	</div>
		    </div>
		
		    <div class="container">
		      <button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>
		    </div>
		  </form>
		</div>
<!-- POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP -->
		<script>
			// Get the modal
			var modal = document.getElementById('id01');
			var modal2 = document.getElementById('id02');
			var modal3 = document.getElementById('id03');
			var modal4 = document.getElementById('id04');
			
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			    if (event.target == modal) {
			        modal.style.display = "none";
			    } else if(event.target == modal2) {
			    	modal2.style.display = "none";
			    } else if(event.target == modal3) {
			    	modal3.style.display = "none";
			    } else if(event.target == modal4) {
			    	modal4.style.display = "none";
			    }
			}
		</script>
		</script>
<!-- POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP POP UP -->
    </body>
</html>