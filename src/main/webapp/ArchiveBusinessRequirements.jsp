<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ========== COMMON STYLES ========== -->
<link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
<link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
<link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >

<title>Decom3Sixty - Business Requirements</title>
<!-- ========== PAGE STYLES ========== -->
<link rel="stylesheet" href="css/prism/prism.css" media="screen" > <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
 <link rel="stylesheet" href="css/toastr/toastr.min.css" media="screen" >
 <link rel="stylesheet" href="css/icheck/skins/line/blue.css" >
 <link rel="stylesheet" href="css/icheck/skins/line/red.css" >
 <link rel="stylesheet" href="css/icheck/skins/line/green.css" >
 <link rel="stylesheet" href="css/bootstrap-tour/bootstrap-tour.css" >
<link rel="stylesheet" href="css/UserInfo/userinfo.css" >
<!-- ========== THEME CSS ========== -->
<link rel="stylesheet" href="css/main.css" media="screen" >

<!-- =========== Header Icon ========= -->
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
 <link rel="stylesheet" href="css/headerIcon/headerIcon.css" media="screen" >

<!-- ========== MODERNIZR ========== -->
<script src="js/modernizr/modernizr.min.js"></script>
<script src="js/jquery/jquery-2.2.4.min.js"></script>   
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
<script src = "js/Requirements/ArchiveRequirements/businessRequirementsDetails/businessReqInfo/businessReqDataRetrieveAjaxCall.js"></script>

<script src = "js/Requirements/ArchiveRequirements/businessRequirementsDetails/funtionalReqInfo/archiveFunctionalReqDataRetrieveAjaxCall.js"></script>

<script src = "js/Requirements/ArchiveRequirements/businessRequirementsDetails/screenReqInfo/screenReqDataRetrieveAjaxCall.js"></script>

<script src="js/jquery/jquery-2.2.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<link rel="stylesheet" href="js_in_pages/requirements.css" type="text/css"/>
<link rel="stylesheet" href="css/Responsive/intake-opportunity.css"
	media="screen">
<link rel="stylesheet" href="css/Responsive/responsive.css"
	media="screen">

    

</head><!--from  w  w w  . ja  va 2 s.co  m-->

<style>
   body {
  background-color: #fff;
  margin: 0;
  padding: 0;
}

.page-title-div {
background:#1565c0;
padding: 15px; 
}

    h1 {
        text-align: center;
        font-family: Tahoma, Arial, sans-serif;
        color: #06D85F;
        margin: 80px 0;
    }

    .box {
        width: 40%;
        margin: 0 auto;
        background: rgba(255, 255, 255, 0.2);
        padding: 50px;
        border: 2px solid #fff;
        border-radius: 20px/50px;
        background-clip: padding-box;
        text-align: center;
    }

    .overlay {
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background: rgba(0, 0, 0, 0.7);
        transition: opacity 500ms;
        visibility: hidden;
    }

    .overlay:target {
        visibility: visible;
        opacity: 1;
    }

    .popup {
        margin: 210px auto;
        padding: 20px;
        background: #fff;
        border-radius: 5px;
        width: 40%;
        position: relative;

    }

    .popup h2 {
        margin-top: 0;
        color: #333;
        font-family: Tahoma, Arial, sans-serif;
    }

    .popup .close {
        position: absolute;
        top: 20px;
        right: 30px;
        transition: all 200ms;
        font-size: 30px;
        font-weight: bold;
        text-decoration: none;
        color: black;
    }

    .popup .close:hover {
        color: black;
    }

    .popup .content {
        max-height: 30%;
        overflow: auto;
    }

    .button {
        color: white;
    }

    @media screen and (max-width: 700px) {
        .box {
            width: 70%;
        }

        .popup {
            width: 70%;
        }

    }

    #nav_userid {
        color: green;
    }

    #nav_role {
        color: blue;
    }

    .ScrollStyle {
        max-height: 350px;
        overflow-y: scroll;
    }
    .table-title .add-new {
    float: right;
    height: 30px;
    font-weight: bold;
    font-size: 12px;
    text-shadow: none;
    min-width: 100px;
    border-radius: 50px;
    line-height: 13px;
	}
	.table-title .add-new i {
    margin-right: 4px;
	}
	table.table td a {
    cursor: pointer;
    display: inline-block;
    margin: 0 5px;
    min-width: 24px;
	}    
	table.table td a.add {
    color: #27C46B;
	}
	table.table td a.edit {
    color: #FFC107;
	}
	table.table td a.delete {
    color: #E34724;
	}
	table.table td i {
    font-size: 19px;
	}
	table.table td a.add i {
    font-size: 24px;
    margin-right: -1px;
    position: relative;
    top: 3px;
	}    
	table.table .form-control {
    height: 32px;
    line-height: 32px;
    box-shadow: none;
    border-radius: 2px;
	}
	table.table .form-control.error {
    border-color: #f50000;
	}
	table.table td .add {
    display: none;
	}

.panelSize {
  display: inline-grid;
  justify-content: center;
}

/* table { 
	box-shadow: 5px 5px 5px #999; 
	} */
    /*END Form Wizard*/
   
    .active1{
    background:#1565c0;
}
 .page-title-div {
    background:#1565c0;
	padding: 15px;  
}
   
</style>

<body class="top-navbar-fixed">

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%
SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
Date date = new Date();
System.out.println("[INFO]-----"+formatter.format(date)+"-----Accessed Grid JSP PAGE-----[INFO]"); %>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="onboard.DBconnection"%>
<%@page import="java.util.Calendar"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0"); // Proxies.
DBconnection dBconnection = new DBconnection();



if (session.getAttribute("username")==null)
{
response.sendRedirect("Login.jsp");



}
else{
String name=(String)session.getAttribute("ID");
HttpSession details=request.getSession();
Connection con = null;
session.setAttribute("theName", name);
String roles=(String)details.getAttribute("role");
String OpportunityName = (String)details.getAttribute("SelectedOpportunity");
String s=OpportunityName;
System.out.println("Welcome"+OpportunityName);

int sumcount=0;
Statement st,st2;
try{

con=dBconnection.getConnection();
Statement st1;

%>
<form class="form-signin" name="loginForm" method="post">

    <div class="main-wrapper">

          <!--  <nav class="navbar top-navbar bg-white box-shadow">
        <div class="container-fluid">
            <div class="row">
                <div class="navbar-header no-padding" style = "height : 100px;">
                    <a class="navbar-brand" href="OpportunityList.jsp" id="sitetitle">
                        <img src="images/Decom3Sixty_logo.png" alt="Decomm3Sixty" class="logo" style = "margin-top : 50px;">
                    </a>
                </div>
                /.navbar-header
                <div class="tabs-content">
                 <ul class="nav navbar-nav headerTab navAlign">
		              <li class="active1"><a href="OpportunityList.jsp" style= "color:#fff;"><i class="fad fa-folders fa-2x iconAlign activeIcon"></i>Applications</a></li>
		              <li><a href="Admin_Module_Send_Invites.jsp"><i class="fad fa-user-cog iconAlign iconColor fa-2x"></i>Administration</a></li>
		              <li><a href="PhaseList.jsp"><i class="fad fa-desktop iconAlign iconColor fa-2x"></i>Governance</a></li>
		              <li><a href="#"><i class="fad fa-wallet iconAlign iconColor fa-2x"></i>Finance</a></li>
		              <li ><a href="DashBoard.jsp"><i class="fad fa-chart-pie iconAlign iconColor fa-2x"></i>Dashboards</a></li>
		              <li><a href="#"><i class="fad fa-comment-lines iconAlign iconColor fa-2x"></i>Compliance</a></li>
		          </ul>
		         <ul class="nav navbar-nav navbar-right" style = "margin-top:45px;">
                      <li><a href="#"><span id="nav_userid">admin &nbsp;</span>logged in as &nbsp;<span id='nav_role'> admin </span></a></li>
                        <li><a href="Logout" class="text-center"> Logout</a> </li>
                    </ul>
                </div>
      </div>
      <nav class="navbar navbar-down">
				  <div class="container-fluid fixed-top">
                    <div class="row page-title-div">
                             <div class="col-sm-6">
                        
                            
                         <p class="sub-title" style="color:#fff ; margin-right: -26px; "> <a  href="OpportunityList.jsp" id="sitetitle1" style="color:#fff"><span class="glyphicon glyphicon-home"></span> Home</a>  >> <a  href="ArchiveRequirementsIntroDetails.jsp" id="sitetitle1" style="color:#fff">
                           Introduction</a> >>
                           <a  href="archiveRequirementsLegacyDetails.jsp" id="sitetitle1" style="color:#fff">
                           Legacy Application Info</a> >>
                           <a  href="archiveRequirementsRetentionDetails.jsp" id="sitetitle1" style="color:#fff">
                           Retention Details</a> >> Business Requirements</p>
                     
                    

                    </div>

                </div>
			</nav>
      
        </div>
        /.container-fluid
    </nav>
     <br/>
    <br/>
    <br/> -->
     <%@include file="Nav-Bar.jspf"%>
		<nav class="nav nav-height-70 nav-font" id="bg-color"
			style="font-size: 14px;">
			<div class="container-fluid" id="container-fluid-margin">
				<div class="row" id="d3s-mt-10">
						<div class="col-lg-12 col-md-12">
							<div class="sub-title" style="color: #fff">
								<a  href="OpportunityList.jsp" id="sitetitle1" style="color:#fff"><span class="glyphicon glyphicon-home"></span> Home</a> >> <%=OpportunityName%> >><a  href="ArchiveRequirementsIntroDetails.jsp" id="sitetitle1" style="color:#fff">
                          			 Introduction</a> >>
                           		<a  href="archiveRequirementsLegacyDetails.jsp" id="sitetitle1" style="color:#fff">
                          			 Legacy Application Info</a> >>
                         		<a href="archiveRequirementsRetentionDetails.jsp" id="sitetitle1" style="color:#fff">
                           			Retention Details</a> >> Business Requirements
							</div>
						</div>
					</div>
			</div>
		</nav>
		
		<%
}
catch(Exception e){
e.printStackTrace();
}



} %>
        <div class="content-wrapper">
        <div class="col-md-12">
								<div style="margin-bottom: -138px;" class="form-wizard">
						<div class="form-wizard-header">
							
							<ul class="list-unstyled form-wizard-steps clearfix nav-font" style="margin-left:23px;">
							<p class="nav-font" style="margin-bottom: -52px;">Fill all the required fields to go next step</p>
								
								<li class="activated" onclick="location.href='ArchiveRequirementsIntroDetails.jsp;'"><span>1</span><i>Introduction</i></li>
								<li class="activated" onclick="location.href='archiveRequirementsLegacyDetails.jsp;'"><span>2</span><i>Legacy Application Info</i></li>
								<li class="activated" onclick="location.href='archiveRequirementsRetentionDetails.jsp;'"><span>3</span><i>Retention Details</i></li>
								<li class="active" onclick="location.href='ArchiveBusinessRequirements.jsp';"><span>4</span><i>Business requirements</i></li>
								<li onclick="location.href='archiveReqAbbrevation.jsp;'"><span>5</span><i>Abbreviations</i></li>
								<li onclick="location.href='archiveRequirementsDocumentRevisions.jsp;'"><span>6</span><i>Revisions</i></li>
								<li onclick="location.href='archiveRequirementsAddendum.jsp;'"><span>7</span><i>Addendum</i></li>
								<li onclick="location.href='archiveRequirementsReviewDetails.jsp;'"><span>8</span><i>Review</i></li>
								<li onclick="location.href='archiveRequirementsApprovalDetails.jsp;'"><span>9</span><i>Approval</i></li>
						
							</ul>
						</div>
						</div></div>
						<br/>
						<br/>
            <div class="content-container">

      
                <!-- Projects List Start -->

                <div class="main-page">

                    <section class="wizard-section">

                        <div class="row">
							<div class="container" id="module_header">
							<div class="panelSize col-md-12 col-sm-12">
                                    <%
                                        String initiate = (String) session.getAttribute("Ideation and Initiate");
                                        String plan = (String) session.getAttribute("Plan");
                                        String execute = (String) session.getAttribute("Execute");
                                        String hypercare = (String) session.getAttribute("Closure");
                                        if (initiate == null)
                                            initiate = "0";
                                        if (plan == null)
                                            plan = "0";
                                        if (execute == null)
                                            execute = "0";
                                        if (hypercare == null)
                                            hypercare = "0";
                                    %>
                                    <br/><br/><br/>
                 

                         

                                           
                                  <div class="tab-pane" role="tabpanel" id="step4">
                                    
                                     <!-- Business Requirements Table -->
                                     
                            <div class="card-container-3 card">
                                        <div class="card-header" id="cd-header">
                                        Business Requirements
                                         
                                        </div>
                                        
                                        <div id="collapse4" class="panel-collapse ">
                                          
                                            <div id="collapse1" class="panel-collapse " name="collapse">
                                                <div class="panel-body">
                                                    <div id="inputFieldsBusiness">
                                                 <div class="modal-body">
                    <form name="myForm">
                        <div class="form-group" id="TemplateFields">
                            <div class="row changeText1 business" contenteditable='true'>
                                                 <ul>
													<li>Each requirement must be marked as In-Scope or Out-of-Scope for this project, with additional information specific to each requirement if necessary. </li>
													<li>Requirement ID's are linked to test script ID's to ensure traceability from requirement to test execution. Requirement ID's may be formatted according to client needs.</li>
												</ul>
													</div>
													</div>
												</form>	
												 </div>   
											    </div>
									              
                               <!-- Req in scope -->
							    <div class="panel panel-default">
                                        <div class="card-header" id="cd-header">
                                        <h4 class="panel-title">
                                                <a class="collapsed" data-bs-toggle="collapse" data-bs-parent="#panels1" href="#collapse6">Requirement In Scope</a></h4>
                                        </div>
                                        
                                         <div id="collapse6" class="panel-collapse collapse">
                                            <div class="panel-body">
                                        		<div id="collapse1" class="panel-collapse collapse show" name="collapse">
                                        			<div id="inputFieldsReqinscope">
                                               		
                                                 			<div>
                                                   				<table class="table-bordered" style="width: 100%;">
														  		 <thead> 												
																	<tr>
																		<th style='text-align:center;vertical-align: middle;'>REQ IN-SCOPE(Y/N)</th>
																		<th style='text-align:center;vertical-align: middle;'>DESCRIPTION</th>
																		<th style='text-align:center;vertical-align: middle;'>ACTION</th>
																		
																	</tr>
																</thead>
																<tbody id ="reqinscope">
      												    												
      															</tbody>
																</table>
  																</div> 
												  
												 <div class="col-12" align="end">
												 
												 <button type="submit" class="btn btn-primary" id="SaveReqInScope">Save</button>
												 
                                       			 <button type="button" class="btn btn-primary pull-right" id="OpportunityListbtn" onclick ="window.location.href='archiveRequirementsLegacyDetails.jsp';"style="display:none;"></button>
                                       			</div>
                                            </div>
                                              
                                            </div> 
                                            </div> 
                                            </div> 
                                            </div>
                                            
                                                      
                               <!-- Data Req -->
							    <div class="panel panel-default">
                                        <div class="card-header" id="cd-header">
                                        <h4 class="panel-title">
                                                <a class="collapsed" data-bs-toggle="collapse" data-bs-parent="#panels1" href="#collapse6">Functional Requirements</a></h4>
                                        </div>
                                        
                                        <div id="collapse6" class="panel-collapse collapse">
                                            <div class="panel-body">
                                        		<div id="collapse1" class="panel-collapse collapse show" name="collapse">
                                        			<div id="inputFieldsReqinscope">
                                               		
                                                 			<div>
                                                 			<h4 class="title1">4.1.1 Data Requirements</h4>
                                                   				<table class="table-bordered" style="width: 100%;">
														  		 <thead> 												
																	<tr>
																		<th style='text-align:center;vertical-align: middle;'>Req Id</th>
																		<th style='text-align:center;vertical-align: middle;'>Req In-Scope Y/N</th>
																		<th style='text-align:center;vertical-align: middle;'>Requirement Type</th>
																		<th style='text-align:center;vertical-align: middle;'>Requirement</th>
																		<th style='text-align:center;vertical-align: middle;'>Additional Info</th>
																		<th style='text-align:center;vertical-align: middle;'>Action</th>
																	</tr>
																</thead>
																<tbody id ="DataReqId">
      												    												
      															</tbody>
																</table>
  																</div> 
												  
												 <div class="col-12" align="end">
												 <button class="btn btn-secondary addClass" type="button" id="dataReqAdd">Add</button>
												 <button type="submit" class="btn btn-primary dataSaveClass" id="dataSaveReq">Save</button>
												 
                                       	
                                       			</div>
                                            </div>
                                            
                                            <div id="inputFieldsReqinscope">
                                               		
                                                 			<div>
                                                 			<h4 class="title1">4.1.2 Retention and Legal Requirements</h4>
                                                   				<table class="table-bordered" style="width: 100%;">
														  		 <thead> 												
																	<tr>
																		<th style='text-align:center;vertical-align: middle;'>Req Id</th>
																		<th style='text-align:center;vertical-align: middle;'>Req In-Scope Y/N</th>
																		<th style='text-align:center;vertical-align: middle;'>Requirement Type</th>
																		<th style='text-align:center;vertical-align: middle;'>Description</th>
																		<th style='text-align:center;vertical-align: middle;'>Additional Info</th>
																		<th style='text-align:center;vertical-align: middle;'>Action</th>
																	</tr>
																</thead>
																<tbody id ="LegalReqId">
      												    												
      															</tbody>
																</table>
  																</div> 
												  
												 <div class="col-12" align="end">
												 <button class="btn btn-secondary addClass" type="button" id="legalReqSaveAdd">Add</button>
												 <button type="submit" class="btn btn-primary dataSaveClass" id="legalReqSaveReq">Save</button>
												 
                                       	
                                       			</div>
                                            </div>
                                              
                                              <div id="inputFieldsReqinscope">
                                               		
                                                 			<div>
                                                 			<h4 class="title1">4.1.3 Security Requirements</h4>
                                                   				<table class="table-bordered" style="width: 100%;">
														  		 <thead> 												
																	<tr>
																		<th style='text-align:center;vertical-align: middle;'>Req Id</th>
																		<th style='text-align:center;vertical-align: middle;'>Req In-Scope Y/N</th>
																		<th style='text-align:center;vertical-align: middle;'>Requirement Type</th>
																		<th style='text-align:center;vertical-align: middle;'>Description</th>
																		<th style='text-align:center;vertical-align: middle;'>Additional Info</th>
																		<th style='text-align:center;vertical-align: middle;'>Action</th>
																	</tr>
																</thead>
																<tbody id ="SecurityReqId">
      												    												
      															</tbody>
																</table>
  																</div> 
												  
												 <div class="col-12" align="end">
												 <button class="btn btn-secondary addClass" type="button" id="securityReqAdd">Add</button>
												 <button type="submit" class="btn btn-primary dataSaveClass" id="securityReqSaveReq">Save</button>
												 
                                       	
                                       			</div>
                                            </div>
                                              
                                              <div id="inputFieldsReqinscope">
                                               		
                                                 			<div>
                                                 			<h4 class="title1">4.1.4 Usability Requirements</h4>
                                                   				<table class="table-bordered" style="width: 100%;">
														  		 <thead> 												
																	<tr>
																		<th style='text-align:center;vertical-align: middle;'>Req Id</th>
																		<th style='text-align:center;vertical-align: middle;'>Req In-Scope Y/N</th>
																		<th style='text-align:center;vertical-align: middle;'>Requirement Type</th>
																		<th style='text-align:center;vertical-align: middle;'>Description</th>
																		<th style='text-align:center;vertical-align: middle;'>Additional Info</th>
																		<th style='text-align:center;vertical-align: middle;'>Action</th>
																	</tr>
																</thead>
																<tbody id ="UsabilityReqId">
      												    												
      															</tbody>
																</table>
  																</div> 
												  
												 <div class="col-12" align="end">
												 <button class="btn btn-secondary addClass" type="button" id="UsabilityReqAdd">Add</button>
												 <button type="submit" class="btn btn-primary dataSaveClass" id="UsabilityReqSaveReq">Save</button>
												 
                                       	
                                       			</div>
                                            </div>
                                              
                                              <div id="inputFieldsReqinscope">
                                               		
                                                 			<div>
                                                 			<h4 class="title1">4.1.5 Audit Requirements</h4>
                                                   				<table class="table-bordered" style="width: 100%;">
														  		 <thead> 												
																	<tr>
																		<th style='text-align:center;vertical-align: middle;'>Req Id</th>
																		<th style='text-align:center;vertical-align: middle;'>Req In-Scope Y/N</th>
																		<th style='text-align:center;vertical-align: middle;'>Requirement Type</th>
																		<th style='text-align:center;vertical-align: middle;'>Description</th>
																		<th style='text-align:center;vertical-align: middle;'>Additional Info</th>
																		<th style='text-align:center;vertical-align: middle;'>Action</th>
																	</tr>
																</thead>
																<tbody id ="AuditReqId">
      												    												
      															</tbody>
																</table>
  																</div> 
												  
												 <div class="col-12" align="end">
												 <button class="btn btn-secondary addClass" type="button" id="auditReqAdd">Add</button>
												 <button type="submit" class="btn btn-primary dataSaveClass" id="auditReqSaveReq">Save</button>
												 
                                       	
                                       			</div>
                                            </div>
                                              
                                            </div> 
                                            </div> 
                                            </div> 
                                            </div>
                                        
                                        <!-- Screen Requirements -->
							    <div class="panel panel-default">
                                        <div class="card-header" id="cd-header">
                                        <h4 class="panel-title">
                                                <a class="collapsed" data-bs-toggle="collapse" data-bs-parent="#panels1" href="#collapse6">Screen Requirements</a></h4>
                                        </div>
                                        <div id="collapse6" class="panel-collapse collapse">
                                            <div class="panel-body">
                                        		<div id="collapse1" class="panel-collapse collapse show" name="collapse">
                                        			<div id="inputFieldsReqinscope">
                                               		
                                                 			<div>
                                                   				<table class="table-bordered" style="width: 100%;">
														  		 <thead> 												
																	<tr>
																		<th style='text-align:center;vertical-align: middle;'>Req Id</th>
																		<th style='text-align:center;vertical-align: middle;'>Screen Display Name in Infoarchive</th>
																		<th style='text-align:center;vertical-align: middle;'>Purpose</th>
																		<th style='text-align:center;vertical-align: middle;'>Equivalent in the Legacy Application</th>	
																		<th style='text-align:center;vertical-align: middle;'>Action</th>
																	</tr>
																</thead>
																<tbody id ="screenReqInfo">
      												    												
      															</tbody>
																</table>
  																</div> 
  																<div class="col-12" align="end">
												 
												 <button class="btn btn-secondary" type="button" data-bs-toggle="modal" data-bs-target="#screenReqAddPopUp">Add</button>
												 <button type="submit" class="btn btn-primary" id="saveScreenReqId">Save</button>
												 
                                       			 <button type="button" class="btn btn-primary pull-right" id="OpportunityListbtn" onclick ="window.location.href='archiveRequirementsLegacyDetails.jsp';"style="display:none;"></button>
                                       			</div>
  																
  																<br/>
  																<br/>
  																<br/>
  																<div>
                                                   				<table class="table-bordered" style="width: 100%;">
														  		 <thead> 												
																	<tr>
																		<th style='text-align:center;vertical-align: middle;'>Req Id</th>
																		<th style='text-align:center;vertical-align: middle;'>Search Form Name</th>
																		<th style='text-align:center;vertical-align: middle;'>Search Field Name</th>
																		<th style='text-align:center;vertical-align: middle;'>Field Format</th>	
																		<th style='text-align:center;vertical-align: middle;'>Data Type</th>
																		<th style='text-align:center;vertical-align: middle;'>Date Retrieval Requirement</th>
																		<th style='text-align:center;vertical-align: middle;'>Required Field</th>
																		<th style='text-align:center;vertical-align: middle;'>Search Field Additional Information</th>
																		<th style='text-align:center;vertical-align: middle;'>Action</th>
																	</tr>
																</thead>
																<tbody id ="searchFormInfo">
      												    												
      															</tbody>
																</table>
  																</div> 
												  
												 <div class="col-12" align="end">
												 <button class="btn btn-secondary" type="button" data-bs-toggle="modal" data-bs-target="#searchFormAddPopUp">Add</button>
												 <button type="submit" class="btn btn-primary" id="saveSearchFormId">Save</button>
												 
                                       			 <button type="button" class="btn btn-primary pull-right" id="OpportunityListbtn" onclick ="window.location.href='archiveRequirementsLegacyDetails.jsp';"style="display:none;"></button>
                                       			</div>
                                            </div>
                                              
                                            </div> 
                                            </div> 
                                            </div> 
                                            </div>
                                            
                                            <button type="button" class="btn btn-primary pull-right" id="DataDeleteId" data-bs-toggle="modal" data-bs-target="#DataDeletePopUp" style="display: none;">Delete PopUp</button>
                                            
                                            <button type="button" class="btn btn-primary pull-right" id="screenInfoDeleteId" data-bs-toggle="modal" data-bs-target="#screenInfoDeletePopUp" style="display: none;">Delete PopUp</button>
                                        <div class="col-12">
                                        	<br/>
                                        <div class="col-4"> 
                                    
                                       <button type="button" class="btn btn-secondary" style="padding-top: 5px; padding-left: 10px; float: left;" onclick="location.href='archiveRequirementsRetentionDetails.jsp';" >Prev</button></div>
                                       <div class="col-12" align="end">
                                       
                                      <button class="btn btn-primary"  id="busreqNext">
                                                                 <a href="archiveReqAbbrevation.jsp">Next</a></button>
                                     
                                       </div>
                                     </div>
                                     
                                     
                                     
								</div>
					            </div>
                                  </div>
					            </div>
					        </div>
                
                <!-- /.row -->
            </div>
            </div>
            
            </section>
            <!-- /.section -->

        </div>
        <!-- /.main-page -->

        <!-- Project List End -->

    </div>
    <!-- /.content-container -->

    <!-- /.main-wrapper -->
    <script>
        function validateform9() {

            var f = document.loginForm;
            f.method = "post";
            f.action = 'ArchivalRequirements';
            f.submit();

        }
    </script>


    <%
       //     }
    //    }
    %>
    </div></div></form>
   
 <!-- Data Req Delete PopUp -->  
  <div class="modal" id="DataDeletePopUp" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      
       <div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Delete Field</h5>
			<button type="button"  id ="DataDeleteClose" class="btn-close" data-bs-dismiss="modal"
				aria-label="Close"></button>
	  </div>
      <div class="modal-body">
        <form name="DeleteForm">
                <div class="modal-body">
                    <p>Do you want to delete this Row permanently?</p>
                    <input type="hidden" id="DataDeleteSeq"/>
                </div>
            </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="DataDeleteSubmit" class="btn btn-primary submitDisableData" data-bs-dismiss="modal" >Yes</button>
        <button type="button" class="btn btn-secondary" id = "closeDataIdDelete" data-bs-dismiss="modal" aria-label="Close" >No</button>
      </div>
    </div>
  </div>
</div>

<!-- Screen Req Info Add Popup  -->

<div class="modal" id="screenReqAddPopUp" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Add Input Fields</h5>
			<button type="button"  id="screenReqAddClose" class="btn-close" data-bs-dismiss="modal"
				aria-label="Close"></button>
	  </div>
      <div class="modal-body">
        <form name="PopUpform">
            <div class="row">
                    <div class="form-group">
                        <div class="col-lg-8">
                            <label class="control-label" for="Legacy">Screen Display Name in Infoarchive:</label>
                            <input type="text" class="form-control" id="screenReqAddId"  name="screenReqAddName" required>
                        </div>
                    </div>
                </div><br/><input type="text" id="screenReqAddSeqNum" name="" value="" style="display:none;"/>
                <input type="text" id="screenReqAddSection" name="" value="" style="display:none;"/>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="screenReqAddSubmit" class="btn btn-primary" data-bs-dismiss="modal">Submit</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id = "closeIdScreenInfo" aria-label="Close">Cancel</button>
        
      </div>
    </div>
  </div>
</div> 
   
   <!-- Search Form Add popup -->
   <div class="modal" id="searchFormAddPopUp" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
     
       <div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Add Input Fields</h5>
			<button type="button"  id="searchFormAddClose" class="btn-close" data-bs-dismiss="modal"
				aria-label="Close"></button>
	  </div>
      <div class="modal-body">
        <form name="PopUpform">
            <div class="row">
                    <div class="form-group">
                        <div class="col-lg-8">
                            <label class="control-label" for="formInput526">Type:</label>
                            <select id="searchFormTypesId" class="form-select" name="searchFormTypesName" required >
                                
                            </select>
                        </div>
                    </div>
                </div>
                <br/>
                <input type="text" id="searchFormAddSeqNum" name="" value="" style="display:none;"/>
                <input type="text" id="searchFormAddSection" name="" value="" style="display:none;"/>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="searchFormAddSubmit" class="btn btn-primary" data-bs-dismiss="modal">Submit</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id = "closeIdsearchForm" aria-label="Close">Cancel</button>
        
      </div>
    </div>
  </div>
</div> 

<!-- Screen Req Info Delete PopUp -->  
  <div class="modal" id="screenInfoDeletePopUp" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
       <div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Delete Field</h5>
			<button type="button"  id ="screenInfoDeleteClose" class="btn-close" data-bs-dismiss="modal"
				aria-label="Close"></button>
	  </div>
      <div class="modal-body">
        <form name="DeleteForm">
                <div class="modal-body">
                    <p>Do you want to delete this Row permanently?</p>
                    <input type="hidden" id="screenInfoDeleteSeq"/>
                </div>
            </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="screenInfoDeleteSubmit" class="btn btn-primary submitDisableScreenInfo" data-bs-dismiss="modal">Yes</button>
        <button type="button" class="btn btn-secondary" id = "closeScreenInfoDelete" data-bs-dismiss="modal" aria-label="Close" >No</button>
      </div>
    </div>
  </div>
</div>

<%-- <jsp:include page="samp_forms.jsp">
    <jsp:param name="ProjectName" value="<%=Opportunityname %>"/>
    <jsp:param name="AppName" value="<%=idd %>"/>
    <jsp:param name="number" value="2"/>
    <jsp:param name="servlet" value="Requirements"/>
</jsp:include>
<%
     //       }
    //    }
    } 
    catch (Exception e) {
    }
%> --%>

<!-- Active Icon Color changes  -->
<script>
$(document).on('mouseenter','.active1', function(){
		
		 $('.activeIcon').css('color','#1565c0');
		 
	 });
	 
	 $(document).on('mouseleave','.active1', function(){
			
		 $('.activeIcon').css('color','#fff');
		 
	 });
</script>

<!-- ========== COMMON JS FILES ========== -->
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<script src="js/jquery-ui/jquery-ui.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<script src="js/pace/pace.min.js"></script>

<script src="js/iscroll/iscroll.js"></script>
<script type="text/javascript" src="js/Requirements/ArchiveRequirements/businessRequirementsDetails/businessReqInfo/businessReqInScopeToDoList.js"></script>

<!-- ========== PAGE JS FILES ========== -->
<script src="js/prism/prism.js"></script>
<script src="js/waypoint/waypoints.min.js"></script>
<script src="js/counterUp/jquery.counterup.min.js"></script>
<script src="js/amcharts/amcharts.js"></script>
<script src="js/amcharts/serial.js"></script>
<script src="js/amcharts/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="js/amcharts/plugins/export/export.css"
        type="text/css" media="all" />
<script src="js/amcharts/themes/light.js"></script>
<script src="js/toastr/toastr.min.js"></script>
<script src="js/icheck/icheck.min.js"></script>
<script src="js/bootstrap-tour/bootstrap-tour.js"></script>

<!-- ========== THEME JS ========== -->
<script src="js/production-chart.js"></script>
<script src="js/traffic-chart.js"></script>
<script src="js/task-list.js"></script>

<!-- ========== THEME JS ========== -->

<script id ="scripttag"></script>

<!-- ========== PAGE JS FILES ========== -->
<script src="js/prism/prism.js"></script>
<script type="text/javascript" src="js/date-picker/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/date-picker/jquery.timepicker.js"></script>
<script type="text/javascript" src="js/date-picker/datepair.js"></script>
<script type="text/javascript" src="js/date-picker/moment.js"></script>

<script src="js/notification/notification.js"></script>
<script type="text/javascript" src="js/Requirements/ArchiveRequirements/businessRequirementsDetails/businessReqInfo/businessReqSave.js"></script>

<script type="text/javascript" src="js/Requirements/ArchiveRequirements/businessRequirementsDetails/funtionalReqInfo/archiveFunctionalReqAddAjaxCall.js"></script>
<script type="text/javascript" src="js/Requirements/ArchiveRequirements/businessRequirementsDetails/funtionalReqInfo/archiveFunctionalReqDeleteAjaxCall.js"></script>
<script type="text/javascript" src="js/Requirements/ArchiveRequirements/businessRequirementsDetails/funtionalReqInfo/archiveFunctionalReqSaveAjaxCall.js"></script>

<script src = "js/Requirements/ArchiveRequirements/businessRequirementsDetails/screenReqInfo/screenReqAddAjaxCall.js"></script>
<script src = "js/Requirements/ArchiveRequirements/businessRequirementsDetails/screenReqInfo/screenReqSearchFormAddAjaxCall.js"></script>
<script src = "js/Requirements/ArchiveRequirements/businessRequirementsDetails/screenReqInfo/screenReqEditDeleteAjaxCall.js"></script>
<script src = "js/Requirements/ArchiveRequirements/businessRequirementsDetails/screenReqInfo/screenReqSaveAjaxCall.js"></script>
<script src = "js/Requirements/ArchiveRequirements/businessRequirementsDetails/screenReqInfo/screenReqSearchFormSaveAjaxCall.js"></script>
<script src="js/navigation/navigation.js"></script>
<!-- ========== Toastr ========== -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
</body>
</html>