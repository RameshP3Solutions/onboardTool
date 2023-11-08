<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report Details</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
<link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
<link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
<link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen">
<link rel="stylesheet" href="css/prism/prism.css" media="screen">
<link rel="stylesheet" href="css/toastr/toastr.min.css" media="screen">
<link rel="stylesheet" href="css/icheck/skins/line/blue.css">
<link rel="stylesheet" href="css/icheck/skins/line/red.css">
<link rel="stylesheet" href="css/icheck/skins/line/green.css">
<link rel="stylesheet" href="css/bootstrap-tour/bootstrap-tour.css">
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<link rel="stylesheet" href="css/main.css" media="screen">
<link rel="stylesheet" href="css/UserInfo/userinfo.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
<link rel="stylesheet" href="css/headerIcon/headerIcon.css" media="screen">
<link rel="stylesheet" href="css/Responsive/intake-opportunity.css" media="screen">
<link rel="stylesheet" href="css/Responsive/responsive.css" media="screen">
<script src="js/modernizr/modernizr.min.js"></script>
<script src="js/multiplepages.js"></script>
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<script src="js/jquery-ui/jquery-ui.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<script src="js/pace/pace.min.js"></script>
<script src="js/lobipanel/lobipanel.min.js"></script>
<script src="js/iscroll/iscroll.js"></script>
<script src="js/prism/prism.js"></script>
<script src="js/waypoint/waypoints.min.js"></script>
<script src="js/counterUp/jquery.counterup.min.js"></script>
<script src="js/amcharts/amcharts.js"></script>
<script src="js/amcharts/serial.js"></script>
<script src="js/amcharts/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="js/amcharts/plugins/export/export.css" type="text/css" media="all" />
<script src="js/amcharts/themes/light.js"></script>
<script src="js/toastr/toastr.min.js"></script>
<script src="js/icheck/icheck.min.js"></script>
<script src="js/bootstrap-tour/bootstrap-tour.js"></script>
<script src="js/production-chart.js"></script>
<script src="js/traffic-chart.js"></script>
<script src="js/task-list.js"></script>
<script src="js/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>
th {
    border: 10px solid #001;
    text-align: center;
    vertical-align: middle;
}
.table-container {
    width: 100%;
    overflow-x: auto;
}
#overlay {
    position: fixed;
    top: 0;
    z-index: 100;
    width: 1400px;
    height: 100%;
    display: none;
}
.cv-spinner {
    height: 62rem;
    display: flex;
    justify-content: center;
    align-items: center;
}
.pagination li:hover {
    cursor: pointer;
}
.pagination1 li:hover {
    cursor: pointer;
}
.spinner {
    width: 60px;
    height: 60px;
    margin-right: 15rem;
    margin-left: -3.5rem;
    border: 8px #ddd solid;
    border-top: 8px #2e93e6 solid;
    border-radius: 50%;
    animation: sp-anime 0.8s infinite linear;
}
@-webkit-keyframes sp-anime {
    0% {
        -webkit-transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
    }
}
@keyframes sp-anime {
    0% {
        transform: rotate(0deg);
    }
    100% {
        transform: rotate(360deg);
    }
}
.is-hide {
    display: none;
}#overlay1 {
    position: fixed;
    top: 0;
    z-index: 100;
    width: 1400px;
    height: 100%;
    display: none;
}
.cv-spinner1 {
    height: 62rem;
    display: flex;
    justify-content: center;
    align-items: center;
}
.spinner1 {
    width: 60px;
    height: 60px;
    margin-right: 15rem;
    margin-left: -3.5rem;
    border: 8px #ddd solid;
    border-top: 8px #2e93e6 solid;
    border-radius: 50%;
    animation: sp-anime1 0.8s infinite linear;
}
@-webkit-keyframes sp-anime1 {
    0% {
        -webkit-transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
    }
}
@keyframes sp-anime1 {
    0% {
        transform: rotate(0deg);
    }
    100% {
        transform: rotate(360deg);
    }
}
#u_pwd_togglePassword {
    position: absolute;
    margin-top: 22px;
    margin-left: 348px;
}
#conf_u_pwd_togglePassword {
    position: absolute;
    margin-top: 22px;
    margin-left: 289px;
}
</style>
<body>
<style>
  /* Style the Export CSV button */
  .card-header button {
    float: right;
    background-color: #0c7ef0; /* Set the button background color to blue */
    color: white; /* Set the text color to white */
    border-radius: 5px; /* Add curved corners */
    padding: 3px 8px; /* Adjust the padding for a smaller size */
    border: none; /* Remove the border */
    font-size: 12px; /* Adjust the font size to make it smaller */
    transition: background-color 0.3s, color 0.3s; /* Add transition for smooth animation */
  }

  /* Add hover effect */
  .card-header button:hover {
    background-color: #0056b3; /* Change the background color on hover */
    color: #fff; /* Change the text color on hover */
  }
.div-container {
   display: flex;
  justify-content: space-between;
  align-items: center;
}
.left-content{
text-align: left;
margin-left: 20px;
margin-top: 5px;
margin-buttom: 2px;
}
.centered-content {
margin-top: 2px;
  text-align: center;
  margin-right: 100px;
  margin-buttom: 2px;
}
.Search-content {
margin-top: 2px;
  text-align: center;
  margin-right: 100px;
  margin-buttom: 2px;
  display: flex;
}
.right-content {
margin-top: 7px;
  text-align: right;
  margin-right: 20px;
  margin-buttom: 7px;
}
.custom-button {
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 10px;
  padding: 3px 9px;
  cursor: pointer;
  font-size: 14px;
  transition: background-color 0.3s, transform 0.2s;
}

.custom-button:hover {
  background-color: #3498db;
  transform: scale(1.05);
}
 .search-bar {
            display: none;
        }
 .search-bar-request{
 			display: none;
 		}
        .filter-button {
            background-color: #d7dbdb;
            color: #fff;
            padding: 10px 10px;
            border: none;
            cursor: pointer;
            background-image: url('images/search.png'); /* Replace with your image URL */
            background-repeat: no-repeat;
            background-position: center;
            background-size: 9px 9px; /* Set the size of your image */
            transition: background-color 0.3s;
        }
        .filter-button:hover {
            background-color: #939696;
        }
		.search-input {
          	padding: 2px 4px; /* Further reduced padding for a smaller search box */
    		font-size: 16px; /* Further reduced font size */
    		width: 80px; /* Further reduced width for a smaller search box */
    		color: #000; 
      		  					 /* Adjusted width for a smaller search box */
        }
        .searchfunction{
        	padding: 10px 20px;
        	font-size: 16px;
        	width: 80px; 
    		color: #000; 
        }
</style>
<%@include file="Nav-Bar.jspf"%>
<nav class="nav" id="bg-color">
<div class="container-fluid" id="container-fluid-margin">
<div class="row">
<div class="col-lg-12 col-md-12">
<div class="sub-title" style="color: #fff">
<br>
<a href="DashBoard.jsp" id="sitetitle1" style="color: #fff"><span
							class="glyphicon glyphicon-home"></span> Home</a> >> <a
							href="Governance_Home.jsp" id="sitetitle1" style="color: #fff">
							Governance </a> >> Report Generation
</div>
</div>
</div>
</div>
<br>
</nav>
<!--  <nav class="nav " id="bg-color">
<div class="container-fluid" id="container-fluid-margin">
<div class="row" id="d3s-mt-20">
<div class="col-lg-12 col-md-12">
<h5 id="title"  style="color: #fff">Report Generation</h5>
</div>
</div>
 <div class="col-lg-3 col-md-6">
<div class="row align-items-center">
<div class="col-auto">
<i class="fa fa-search search-icon" aria-hidden="true"></i>
</div>
<div class="col-auto">
<input id="Search" type="text" placeholder="Search the application...">
</div>
</div>
</div> 
<div id="results"></div>
<div class="row align-items-center">
<div class="col-auto">
<label class="col-form-label" id="title">Report Name</label>
</div>
<div class="col-auto">
<select class="selectInput filter" id="category">
<option class='options' value='Intake_Report_1'>Report 1</option>
<option class='options' value='Intake_Report_2'>Report 2</option>
<option class='options' value='Intake_Report_3'>Report 3</option>  
</select>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12 col-md-12">
<div class="sub-title" style="color: #fff">
<a href="DashBoard.jsp" id="sitetitle1" style="color: #fff"><span
							class="glyphicon glyphicon-home"></span> Home</a> >> <a
							href="Governance_Home.jsp" id="sitetitle1" style="color: #fff">
							Governance</a> >> Report Generation
</div>
</div>
<br>
</nav> -->

<br />
<div class="card-container-6 card d3s-mt-52">
<div class="withoutPhase display" id="admin_userslist_div">
<div class="div-container">
    <div class="left-content">
	<label >Show &nbsp;</label>
	<select id="maxRows" style="color: black;">
            <option value="5000">Show All</option>
            <option value="5">5</option>
            <option value="10">10</option>
            <option value="15">15</option>
            <option value="20">20</option>
            <option value="50">50</option>
            <option value="70">70</option>
            <option value="100">100</option>
        </select>
        </div>
        <div class="centered-content">
        <label class="col-form-label" id="title" style="color: black;">Report Name &nbsp;</label>
        <select id="category" style="color: black;">
            <option class='options' value='Intake_Report_1'>Report 1</option>
            <option class='options' value='Intake_Report_2'>Report 2</option>
            <option class='options' value='Intake_Report_3'>Report 3</option>
        </select>
       	</div>
		 <div class="Search-content">
		 	<label class="col-form-label" id="title" style="color: black;">Search &nbsp;</label>
			<input id="Search" type="text" placeholder="Search the application...">
			<div id="results"></div> 
		</div>
       	<div class="right-content">
   		<button onclick="exportToCSV()" class="custom-button">Export CSV</button>
   		</div>
</div>
<div class="card-header d3s-pl-16" id="cd-header">Intake Report</div>
<div class="table-container"><br />
<div id="overlay">
<div class="cv-spinner">
<span class="spinner"></span>
</div>
</div>
<table class="table table-bordered table-responsive" id="dynamicHeader"
				style="width: 200%; font-size: 12px;">

</table>
<div class="row">
<div class="col-md-12" align="end">
<div class='pagination-container' style="float: right;">
<nav>
<ul class="pagination">

 

								<li data-page="prev"><span> << <span class="sr-only">(current)</span></span></li>
<!--	Here the JS Function Will Add the Rows -->
<li data-page="next" id="prev"><span> >> <span
										class="sr-only">(current)</span></span></li>
</ul>
</nav>
</div>
</div>
</div>
</div>
</div>
</div>


 

	<!-- ========== PAGE JS FILES ========== -->
<script src="js/prism/prism.js"></script>
<script type="text/javascript"
		src="js/date-picker/bootstrap-datepicker.js"></script>
<script type="text/javascript"
		src="js/date-picker/jquery.timepicker.js"></script>
<script type="text/javascript" src="js/date-picker/datepair.js"></script>
<script type="text/javascript" src="js/date-picker/moment.js"></script>
<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

 

 

 

	<script src="js/navigation/navigation.js"></script>

 

 

 

<script src="js/admin_modify_module/admin_users_pagination.js"></script>
<!-- ========== Pagination ========== -->

 

 

 

 

	<!-- ========== BootstrapV5 ========== -->
<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous">
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

 

 

 

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.8.1/js/bootstrap-select.js"></script>
<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.8.1/css/bootstrap-select.css" />
<!-- ========== Toastr ========== -->
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link
		href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
		rel="stylesheet">
<script src="js/notification/notification.js"></script>
<script src="js/Compliance/IntakeReport.js"></script>
<script src="js/Export.js"></script>
<script src="js/Compliance/Search.js"></script>
<script src="js/Compliance/Pagination.js"></script>
<script src="js/ExportCSV.js"></script>
</body>
</html>