<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>UserConfiguration Page</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="styles/styles.css" type="text/css"/>
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css"/>
    <script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>
    <!-- ========== COMMON STYLES ========== -->
    <link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
    <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
    <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen">
    <!-- ========== PAGE STYLES ========== -->

    <!-- ========== THEME CSS ========== -->
    <link rel="stylesheet" href="css/main.css" media="screen">

    <!-- ========== MODERNIZR ========== -->
    <script src="js/modernizr/modernizr.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.34.7/css/bootstrap-dialog.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.34.7/js/bootstrap-dialog.min.js"></script>



</head>
<style>
    .btn {

        margin-left: 50px;

    }
    body {
        font-size: 14px;;
        font-family: "pt-sans-regular", sans-serif;
        font-weight: initial;
        background:#F6F8FA;
    }
    .card .card-body {
        padding: 1.88rem 1.81rem;
    }

    .grid-margin {
        margin-bottom: 1.875rem;
    }
    .col-12 {
        flex: 0 0 100%;
        max-width: 100%;
    }
    .card {
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 1px solid rgba(0, 0, 0, 0.125);
        border-radius: 0.3125rem;
    }
    .card-body {
        flex: 1 1 auto;
        padding: 1.25rem;
    }

    .card-title {
        margin-bottom: 0.75rem;
    }

    form {
        display: block;
        margin-top: 0em;
    }


    #container {

        animation: rotateStuff 1.5s steps(20) infinite;
    }
    .loading {
        position: absolute;
        align-self: center;
        width: 3vh;
        height: 3vh;
        border-radius: 50%;
    }


</style>
<body class="top-navbar-fixed">
<%
    HttpSession details = request.getSession();
    String project_name = (String) details.getAttribute("nameofproject");
    String info = (String) details.getAttribute("admin");
%>

<div class="main-wrapper">

    <!-- ========== TOP NAVBAR ========== -->
    <nav class="navbar top-navbar bg-white box-shadow">
        <div class="container-fluid">
            <div class="row">
                <div class="navbar-header no-padding">
                    <a class="navbar-brand" href="Project_List.jsp" id="sitetitle">
                        <img src="images/logo1.png" alt="Onboarding Tool" class="logo">
                    </a>
                    <span class="small-nav-handle hidden-sm hidden-xs"><i class="fa fa-outdent"></i></span>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-ellipsis-v"></i>
                    </button>
                    <button type="button" class="navbar-toggle mobile-nav-toggle">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
                <!-- /.navbar-header -->
                <a class="navbar-brand" href="Project_List.jsp" id="sitetitle">
                </a>

                <div class="collapse navbar-collapse" id="navbar-collapse-1">

                    <!-- /.nav navbar-nav -->
                    <ul class="nav navbar-nav navbar-right">

                        <li><a href="Logout" class=" text-center"><i class="fa fa-sign-out"></i> Logout</a>
                        </li>
                    </ul>

                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </nav>


    <form class="form-signin" name="loginForm" method="post">

        <div class="content-wrapper">
            <div class="content-container">

                <!-- ========== LEFT SIDEBAR for UserConfiguration ========== -->
                <div class="left-sidebar fixed-sidebar bg-primary box-shadow tour-three">
                    <div class="sidebar-content" id='jqxWidget'>


                        <div class="left-sidebar fixed-sidebar bg-primary box-shadow tour-three">
                            <div class="sidebar-content" id='jqxWidget'>


                                <div class="sidebar-nav">
                                    <ul class="side-nav color-gray">
                                        <li class="nav-header">
                                            <br>
                                            <span class="">Main Category</span>
                                        </li>
                                        <li id='home' item-selected='true'>
                                            <a href="Project_List.jsp"><i class="fa fa-home"></i> <span>Home</span> </a>
                                        </li>

                                        <li class="nav-header">
                                            <a><span class="">User Module</span></a>
                                        </li>
                                        <li>
                                            <a href="User_Configuration.jsp"><i class="fa fa-file-text"></i> <span>User Configuration</span> </a>
                                        </li>

                                        <li>
                                            <a href="Admin_Userslist.jsp"><i class="fa fa-paint-brush"></i> <span>Users List</span> </a>
                                        </li>

                                        <li>
                                            <a href="Admin_Role_Details.jsp"><i class="fa fa-map-signs"></i> <span>Authorization </span> </a>
                                        </li>
                                    </ul>

                                </div>
                                <!-- /.sidebar-nav -->
                            </div>
                            <!-- /.sidebar-content -->
                        </div>
                        <!-- /.sidebar-nav -->
                    </div>
                    <!-- /.sidebar-content -->
                </div>
                <!-- /.left-sidebar -->


                <!-- Projects List Start -->

                <div class="main-page">

                    <div class="container-fluid">

                        <div class="row page-title-div">
                            <div class="col-sm-6">
                                <h2 class="title">User Profile

                                </h2>
                            </div>
                        </div>
                        <!-- /.row -->
                        <div class="row breadcrumb-div">
                            <div class="col-sm-6">
                                <ul class="breadcrumb">
                                    <li><a href="Project_List.jsp"><i class="fa fa-home"></i>Home</a></li>
                                    <li class="active">Admin</li>

                                </ul>
                            </div>



                        </div>
                        <!-- /.row -->
                    </div>

                    <section class="section">
                        <div class="row">
                            <div class="col-md-12">


                                <div class="container-fluid">
                                    <div class="col-12 grid-margin">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title"><b>Personal Info</b></h4>
                                                <br>
                                                <form class="form-sample">
                                                    <p class="card-description">

                                                    </p>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label"><div class="required_fie">First Name</div></label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" id="fname" name="fname" class="form-control">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label"><div class="required_fie">Last Name</div></label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" id="lname" class="form-control">
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label"><div class="required_fie">Email</div></label>
                                                                <div class="col-sm-9">
                                                                    <input type="email" class="form-control" id="email_val">
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="col-md-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label"><div class="required_fie">Role Name</div></label>
                                                                <div class="col-sm-9">
                                                                    <select id="dates-field2"
                                                                            class="selectpicker multiselect-ui form-control"
                                                                            data-show-subtext="true"
                                                                            data-live-search="true"
                                                                            &lt;%&ndash;multiple="multiple" &ndash;%&gt;>
                                                                        <option data-subtext="Archival Admin">
                                                                            ArchivalAdmin
                                                                        </option>
                                                                        <option data-subtext="Legacy Technical SME">
                                                                            LegacyTechnicalSME
                                                                        </option>
                                                                        <option data-subtext="Legacy Business SME">
                                                                            LegacyBusinessSME
                                                                        </option>
                                                                        <option data-subtext="Archival Program Manager">
                                                                            ArchivalProgramManager
                                                                        </option>
                                                                        <option data-subtext="Archival Project Manager">
                                                                            ArchivalProjectManager
                                                                        </option>
                                                                        <option data-subtext="Legacy Program Manager">
                                                                            LegacyProgramManager
                                                                        </option>
                                                                        <option data-subtext="Archival Business Analyst">
                                                                            ArchivalBusinessAnalyst
                                                                        </option>
                                                                        <option data-subtext="Archival Technical Lead">
                                                                            ArchivalTechnicalLead
                                                                        </option>
                                                                        <option data-subtext="Archival Developer">
                                                                            ArchivalDeveloper
                                                                        </option>
                                                                        <option data-subtext="Test Lead">TestLead</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label"><div class="required_fie">Project</div></label>
                                                                <div class="col-sm-9">
                                                                    <select class="selectpicker multiselect-ui form-control"
                                                                            id="project_id_Select" name="project_id_Select"
                                                                            data-live-search="true" multiple="multiple">
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label"><div class="required_fie">Applications</div></label>
                                                                <div class="col-sm-9">
                                                                    <select class="selectpicker multiselect-ui form-control"
                                                                            id="projapp" name="projapp"
                                                                            data-live-search="true" multiple="multiple">
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-3 col-form-label">Message</label>
                                                                <div class="col-sm-9">
                        <textarea class="form-control" rows="5"
                                  id="message"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-1">
                                                            <input type="hidden" id="send_invites_id" value="<%= info %>"
                                                                   hidden>

                                                        </div>
                                                        <div class="col-md-3">

                                                            <button type="button" class="btn btn-primary" id="send_btn"
                                                                    onclick="send_email();">Send Invites
                                                            </button><div id="container"></div>
                                                        </div>
                                                    </div>



                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>




                            </div>
                            <!-- /.col-md-6 -->

                        </div>
                        <!-- /.row -->

                    </section>
                    <!-- /.section -->

                </div>
                <!-- /.main-page -->

                <!-- Project List End -->

            </div>
            <!-- /.content-container -->
        </div>
        <!-- /.content-wrapper -->
    </form>
</div>
<!-- /.main-wrapper -->
<!-- ========== COMMON JS FILES ========== -->
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<script src="js/jquery-ui/jquery-ui.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<script src="js/pace/pace.min.js"></script>
<script src="js/lobipanel/lobipanel.min.js"></script>
<script src="js/iscroll/iscroll.js"></script>
<!-- ========== PAGE JS FILES ========== -->
<script src="js/prism/prism.js"></script>
<script src="js/waypoint/waypoints.min.js"></script>
<script src="js/counterUp/jquery.counterup.min.js"></script>
<script src="js/amcharts/amcharts.js"></script>
<script src="js/amcharts/serial.js"></script>
<script src="js/amcharts/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="js/amcharts/plugins/export/export.css" type="text/css" media="all"/>
<script src="js/amcharts/themes/light.js"></script>
<script src="js/toastr/toastr.min.js"></script>
<script src="js/icheck/icheck.min.js"></script>
<script src="js/bootstrap-tour/bootstrap-tour.js"></script>
<!-- ========== THEME JS ========== -->
<script src="js/production-chart.js"></script>
<script src="js/traffic-chart.js"></script>
<script src="js/task-list.js"></script>
<!-- ========== THEME JS ========== -->
<script src="js/main.js"></script>
<!-- ========== PAGE JS FILES ========== -->
<script src="js/prism/prism.js"></script>
<script type="text/javascript" src="js/date-picker/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/date-picker/jquery.timepicker.js"></script>
<script type="text/javascript" src="js/date-picker/datepair.js"></script>
<script type="text/javascript" src="js/date-picker/moment.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
<script src="js/admin_module/admin_module_send_invites.js"></script>
</body>
</html>
