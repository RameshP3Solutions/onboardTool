<!DOCTYPE html>
<html lang="en">
<head>
<script type='text/javascript'
  src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/style.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  
   <script src="js/jquery.js"></script>
  <script src="js/jstree.min.js"></script>
   <script src="js/multiplepages.js"></script>

    <meta name="keywords" content="jQuery Tree, Tree Widget, TreeView" />
    <meta name="description" content="The jqxTree displays a hierarchical collection of items. You
        can populate it from 'UL' or by using its 'source' property." />
   
    <link rel="stylesheet" href="jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="scripts/demos.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxpanel.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxtree.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcheckbox.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // Create jqxTree
            $('#jqxTree').jqxTree({ height: '550px', width: '300px' });
            $('#jqxTree').css('visibility', 'visible');
            var contextMenu = $("#jqxMenu").jqxMenu({ width: '120px',  height: '56px', autoOpenPopup: false, mode: 'popup' });
            var clickedItem = null;
            
            var attachContextMenu = function () {
                // open the context menu when the user presses the mouse right button.
                $("#jqxTree li").on('mousedown', function (event) {
                    var target = $(event.target).parents('li:first')[0];
                    var rightClick = isRightClick(event);
                    if (rightClick && target != null) {
                        $("#jqxTree").jqxTree('selectItem', target);
                        var scrollTop = $(window).scrollTop();
                        var scrollLeft = $(window).scrollLeft();
                        contextMenu.jqxMenu('open', parseInt(event.clientX) + 5 + scrollLeft, parseInt(event.clientY) + 5 + scrollTop);
                        return false;
                    }
                });
            }
            attachContextMenu();
            $("#jqxMenu").on('itemclick', function (event) {
                var item = $.trim($(event.args).text());
                switch (item) {
                    case "Add Item":
                        var selectedItem = $('#jqxTree').jqxTree('selectedItem');
                        if (selectedItem != null) {
                            $('#jqxTree').jqxTree('addTo', { label: 'Item' }, selectedItem.element);
                            attachContextMenu();
                        }
                        break;
                    case "Remove Item":
                        var selectedItem = $('#jqxTree').jqxTree('selectedItem');
                        if (selectedItem != null) {
                            $('#jqxTree').jqxTree('removeItem', selectedItem.element);
                            attachContextMenu();
                        }
                        break;
                }
            });
            // disable the default browser's context menu.
            $(document).on('contextmenu', function (e) {
                if ($(e.target).parents('.jqx-tree').length > 0) {
                    return false;
                }
                return true;
            });
            function isRightClick(event) {
                var rightclick;
                if (!event) var event = window.event;
                if (event.which) rightclick = (event.which == 3);
                else if (event.button) rightclick = (event.button == 2);
                return rightclick;
            }
        });
    </script>
      <style>

.glyphicon { cursor: pointer; }

input,
select { width: 100%; }

.bar {
  background-color: lightblue;
  height: 100%;
  text-align:center;
} 
.test input {
    border: 0;
}
</style>
  <style>
.bs-wizard {margin-top: 40px;}

/*Form Wizard*/
.bs-wizard {border-bottom: solid 1px #e0e0e0; padding: 0 0 10px 0;}
.bs-wizard > .bs-wizard-step {padding: 0; position: relative;}
.bs-wizard > .bs-wizard-step + .bs-wizard-step {}
.bs-wizard > .bs-wizard-step .bs-wizard-stepnum {color: #428bca; font-size: 16px; margin-bottom: 5px;}
.bs-wizard > .bs-wizard-step .bs-wizard-info {color: #999; font-size: 14px;}
.bs-wizard > .bs-wizard-step > .bs-wizard-dot {position: absolute; width: 30px; height: 30px; display: block; background:#428bca; top: 45px; left: 50%; margin-top: -15px; margin-left: -15px; border-radius: 100%;} 
.bs-wizard > .bs-wizard-step > .bs-wizard-dot:after {content: ' '; width: 14px; height: 14px; background: lightblue; border-radius: 50px; position: absolute; top: 8px; left: 8px; } 
.bs-wizard > .bs-wizard-step > .progress {position: relative; border-radius: 0px; height: 8px; box-shadow: none; margin: 20px 0;}
.bs-wizard > .bs-wizard-step > .progress > .progress-bar {width:0px; box-shadow: none; background: #428bca;}
.bs-wizard > .bs-wizard-step.complete > .progress > .progress-bar {width:100%;}
.bs-wizard > .bs-wizard-step.active > .progress > .progress-bar {width:50%;}
.bs-wizard > .bs-wizard-step:first-child.active > .progress > .progress-bar {width:0%;}
.bs-wizard > .bs-wizard-step:last-child.active > .progress > .progress-bar {width: 100%;}
.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot {background-color: #f5f5f5;}
.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot:after {opacity: 0;}
.bs-wizard > .bs-wizard-step:first-child  > .progress {left: 50%; width: 50%;}
.bs-wizard > .bs-wizard-step:last-child  > .progress {width: 50%;}
.bs-wizard > .bs-wizard-step.disabled a.bs-wizard-dot{ pointer-events: none; }
/*END Form Wizard*/

</style>
  
   <script>
function myFunction1() {
    var x = document.getElementById('myDiv1');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } 
    else {
        x.style.display = 'none';
    }
}
function myFunction2() {
    var x = document.getElementById('myDiv2');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } 
    else {
        x.style.display = 'none';
    }
}
function myFunction3() {
    var x = document.getElementById('myDiv3');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } 
    else {
        x.style.display = 'none';
    }
}
function myFunction4() {
    var x = document.getElementById('myDiv4');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } 
    else {
        x.style.display = 'none';
    }
}
</script>
    
<script type="text/javascript">
    function EnableDisableTextBox(chkROD) {
        var txtROD = document.getElementById("txtROD");
        txtROD.disabled = chkROD.checked ? false : true;
        if (!txtROD.disabled) {
            txtROD.focus();
        }
        
    }
</script>
<script>

$(function() {
    $("#datamig").change(function() {
        if ($(this).val() == "yes") {
            console.log(true);
            $("#textbox").removeAttr("disabled");
        }
        else {
            console.log(false);
            $("#textbox").attr("disabled", "disabled");
        }
    });
});
$(function() {
    $("#datamig").change(function() {
        if ($(this).val() == "yes") {
            console.log(true);
            $("#textbox1").removeAttr("disabled");
        }
        else {
            console.log(false);
            $("#textbox1").attr("disabled", "disabled");
        }
    });
});


</script>
<script type="text/javascript">
    function ShowHideDiv() {
        var adMigrated = document.getElementById("adMigrated");
        var adMigratedDet = document.getElementById("adMigratedDet");
        adMigratedDet.style.display = adMigrated.value == "Y" ? "block" : "none";
    }
</script>

<script type="text/javascript">
    function ShowHideDiv() {
        var arcNeed = document.getElementById("arcNeed");
        var arcReason = document.getElementById("arcReason");
        arcReason.style.display = arcNeed.value == "N" ? "block" : "none";
        var arcComment = document.getElementById("arcComment");
        arcComment.style.display = arcNeed.value == "O" ? "block" : "none";
    }
</script>
<script>
function call()
{
	var f=document.loginForm;
    f.method="post";
    f.action='updatedb';
    f.submit();
	}

</script>
<script>
function back()
{
	var f=document.loginForm;
    f.method="post";
    f.action='editproject.jsp';
    f.submit();
	}

</script>
 
    
</head>
<body class='default'>
    <%@page language="java"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.NumberFormat" %>

<%
double ans=0.0;
try {
	int  total;
	String det=(String)session.getAttribute("theName");
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "password123");
String query3 = "select * from projinfo where id = "+det;

String name=request.getParameter("name");
session.setAttribute("newname",name);
Statement st1 = conn.createStatement();
Statement st2 = conn.createStatement();
Statement st3 = conn.createStatement();
ResultSet rs3 = st3.executeQuery(query3);
String query1= "SELECT * from app_prior where prj_name='"+name+"' order by priorities";
ResultSet rs1 = st1.executeQuery(query1);
String query2= "select count(prj_name) As total from app_prior where prj_name='"+name+"'";
ResultSet rs2 = st2.executeQuery(query2);
{
%>

<%if(rs2.next())
{
total=rs2.getInt("total");

%>

 
<form class="form-signin" name="loginForm" method="post">
<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
            
            <%if (rs3.next()) {%>
                
                    
                    <a class="navbar-brand" href="#">Onboarding Tool-<%=rs3.getString("projectname") %></a>
              
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                        <img src="assets/images/Logo sized.jpg" class="img-rounded" height="50" width="80" alt="Avatar">
</li>
                        <li>
                            <a href="#">Settings</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li>
                            <a href="#">Help</a>
                        </li>
                    </ul>
                    
                </div>
               
            </div>
        </nav>
        </div>
       
            <div class="row">
            <br>
                <div class="col-md-3 sidebar">
                  <div id='jqxWidget'>
        <div id='jqxTree' style='visibility: hidden;  padding-top:40px; float:left;  margin-left: -45px; padding-left:0 '>
                    <ul class="nav nav-sidebar">
                        

            <ul>
                <li id='home' item-selected='true'> <a href="project.jsp">Home </a></li>
                <li item-expanded='true'>App Emphasize Module
                    <ul>
                       <li item-expanded='true'>Project Details
                    <ul>
                        <li><a href="editproject.jsp">Project Information</a></li>
                        <li item-selected='true'><a href="application1.jsp">Application Details</a></li>
                        </ul>
                        </li>
                        <li item-expanded='true'> <a href="tree.jsp">Application Prioritization</a>
                         <ul>
                                <li >Parameters</li>
                                <li>Archival Complexity Calculation</li>
                                <li>Archival Cost Estimate</li>
                                
                            </ul>
                        </li>
                        <li item-selected='true'><a href="applnprior.jsp">Application-Prioritized</a></li>
                       <li> <a href="demo.jsp">ROI Calculation</a></li>
                        <li>Estimates</li>

                    </ul>
                </li>
                <li item-expanded='true'><a href='firstinsert.jsp'>Intake Module</a>
                <ul>
                <li item-expanded='true'>Business
                <ul>
                <li>Application Information</li>
                <li>Legacy Retention Information</li>
                <li>Archive Data Management</li>
                <li>System Requirements</li>
                
                </ul></li>
                <li item-expanded='true'>Technical
                <ul>
                <li>Application Data Information</li>
                <li>Infrastructure & Environment Inforamation</li>
                <li>Technical Information</li>
                </ul>
                </li>
                
                 <li item-expanded='true'>Archival Requirements
                 <ul>
                 <li>Screen/Report Requirements</li>
                 <li>Archive Requirements</li>
                 </ul>
                 </li>
                </ul>
                </li>
                <li><a href="archive_exec_samp.jsp">Archive Execution Module</a>
               </li> 
                
               
                          </ul>
    
     </ul>
         </div>
   </div>
                </div>

               
   <script>
  $(function () {
    // 6 create an instance when the DOM is ready
    $('#jstree').jstree();
    // 7 bind to events triggered on the tree
    $('#jstree').on("changed.jstree", function (e, data) {
      console.log(data.selected);
    });
    // 8 interact with the tree - either way is OK
    $('button').on('click', function () {
      $('#jstree').jstree(true).select_node('child_node_1');
      $('#jstree').jstree('select_node', 'child_node_1');
      $.jstree.reference('#jstree').select_node('child_node_1');
    });
  });
  </script>

  </script>
  

                    <br/><br/><br/>
                    
                    
                <div class="col-md-9">
          
            

<div class="row">

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Initiate</label></center>
  <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
</div></div></div>

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Plan</label></center>
  <div class="progress">
  <div id="one" class="bar" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">30%</div>
</div></div></div>

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Execute</label></center>
  <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
</div></div></div>

 <div class="col-md-3">
 <div class="form-group">
 <center><label >Hypercare</label></center>
 <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
</div></div></div>
</div>
           <div class="row">
		
        
            <div class="row bs-wizard" style="border-bottom:0;">
                
                <div class="col-xs-3 bs-wizard-step complete">
                  <div class="text-center bs-wizard-stepnum">Project Information</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                
                </div>
                
                <div class="col-xs-3 bs-wizard-step complete"><!-- complete -->
                  <div class="text-center bs-wizard-stepnum">Cost Complexity Calculation</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                
                <div class="col-xs-3 bs-wizard-step active"><!-- complete -->
                  <div class="text-center bs-wizard-stepnum">Prioritized Applications</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                
                <div class="col-xs-3 bs-wizard-step disabled"><!-- active -->
                  <div class="text-center bs-wizard-stepnum">Final</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
            </div>
           
                    <br/><br/><br/>
               
        
        
	</div>  
                                
                                
  <div class="table-responsive" id="table-scroll"> 
    
    <!-- Initialization 
                * js-dynamitable => dynamitable trigger (table)
                -->
    <table class="js-dynamitable     table table-bordered" id="myTable">
      
      <!-- table heading -->
      <thead>
        
        <!-- Sortering
                        * js-sorter-asc => ascending sorter trigger
                        * js-sorter-desc => desending sorter trigger
                        -->
        <tr>
          <th>Application Name</th>
          <th>Complexity</th>
          <th>Estimated Size of xDB </th>
          <th>Estimated Service Cost </th>
          <th>Priorities</th>
         
    </tr>
        
        <!-- Filtering
                        * js-filter => filter trigger (input, select)
                        -->
        
      </thead>
      
      <!-- table body -->
      <tbody>   
        
      <%int i=0	; %>
          <%
        
while(rs1.next()){

%>

        <tr>
        
          <td class="edit_row" style="cursor:pointer" id="11"><span class="test"><input type="text" id="project_name<%=i%>" name="project_name<%=i%>" value="<%=rs1.getString("proj_name") %>"></span></td>
          <td class="row_s" style="cursor:pointer" id="22"><span class="test"><input type="text" id="complexity<%=i%>" name="complexity<%=i%>" value="<%=rs1.getString("complexity") %>"></span></td>
          <td class="row_t" style="cursor:pointer" id="33"><span class="test"><input type="text" id="est_db_size<%=i%>" name="est_db_size<%=i%>" value="<%=rs1.getString("est_db_size") %>"></span></td>
          <td class="row_d" style="cursor:pointer" id="44"><span class="test"><input type="text" id="est_cst<%=i%>" name="est_cst<%=i%>" value="<%=rs1.getString("est_cst") %>"></span></td>
          <% if(Integer.parseInt(rs1.getString("priorities"))>0){ %>
          <td class="row_d" id="55">
          <span class="test"><input type="text" name="priority<%=i %>" id="priority<%=i %>" value="<%=rs1.getString("priorities")%>"></span>
        </td>
        <%}else{ %>
          <td class="row_d" id="55">
          <span class="test"><input type="text" name="priority<%=i %>" id="priority<%=i %>" value="<%=rs2.getInt("total")-i %>"></span>
        </td>
        <%} %>
       
         
         
        </tr>
        <%
i++;        
} 
        
	
        %>
        
    </tbody>
    </table>
 
      <script>
// JavaScript script from: http://coursesweb.net/javascript/

// gets all the .edit_row cells, registers click to each one
var edit_row = document.querySelectorAll('#myTable .edit_row');
for(var i=0; i<edit_row.length; i++) {
  edit_row[i].addEventListener('click', function(e){
    // get parent row, add data from its cells in form fields
    var tr_parent = this.parentNode;
    document.getElementById('proj_name').value = tr_parent.querySelector('.edit_row').innerHTML;
    document.getElementById('complexity').value = tr_parent.querySelector('.row_s').innerHTML;
    document.getElementById('est_db_size').value = tr_parent.querySelector('.row_t').innerHTML;
    document.getElementById('est_cst').value = tr_parent.querySelector('.row_d').innerHTML;
    }, false);
}

</script>
     
  </div>
  <br />
                                
                        
                            <br/>
                      
         
                                                                                            
                                   
<button type="button" class="btn btn-primary" onclick="back()" >Back</button>   
<button type="button" class="btn btn-primary" onclick="call()" >Submit</button>     
     
                    <a href="root1.jsp" class="btn btn-primary" class="btn pull-right">Cancel</a>
                                      <% } 
                                      }
%> 
                           
                                </div>                                 
                            </div>
                             <%

}}
catch(Exception e){}
%>
</body>
</html>