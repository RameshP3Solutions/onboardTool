<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
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
<link rel="stylesheet" href="css/style.min.css">
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
   
    
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/> 
    
    <script type="text/javascript">

    
    $(function() {
    $( "#RO_DATE" ).datepicker({
        format: "dd/mm/yyyy",
        autoclose: true
    });
});
    
    $(function() {
    $( "#SME_DATE" ).datepicker({
        format: "dd/mm/yyyy",
        autoclose: true
    });
});
   </script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            // Create jqxTree
            $('#jqxTree').jqxTree({ height: '550px', width: '0px' });
            $('#jqxTree').css('visibility', 'visible');
            var contextMenu = $("#jqxMenu").jqxMenu({ width: '100px',  height: '56px', autoOpenPopup: false, mode: 'popup' });
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
    
    
    body
    {
     margin:0; padding:0; 
    color:#73879C;
    font-family: "Helvetica Neue",Roboto,Arial,"Droid Sans",sans-serif;
    }
    .navbar-brand {
    
    padding: 10px;
  border: 0px;
  border-radius: 1px;
   font-size: 1.15em;
  font-weight: 400;
    }
    .
    
   .navbar-brand {
  color: black;
}

.navbar-brand:hover {
  color: #ffffff;
  text-shadow: 1px -1px 8px #b3e9ff;
}
    
    
    #sitetitle{
    
    font-size: 22px;
    margin:auto;
}


    
    

   #sidemenu
   {
   
   background:#3276B1 ;
   position: fixed;
top: 45px;
left: -1%;
padding-left:0px;
width:300px !important;
bottom: 0px;
overflow: auto;
color:white;
text-size:30%;
} 
 


#sidemenu a:hover {
    background-color: #ddd;
    color: black;
    }

   
    </style>
    <style>
.bs-wizard {margin-top: 40px;}

/*Form Wizard*/
.bs-wizard {border-bottom: solid 2px #e0e0e0; padding: 0 0 10px 0;}
.bs-wizard > .bs-wizard-step {padding: 0; position: relative;}
.bs-wizard > .bs-wizard-step + .bs-wizard-step {}
.bs-wizard > .bs-wizard-step .bs-wizard-stepnum {color: #595959; font-size: 16px; margin-bottom: 5px;}
.bs-wizard > .bs-wizard-step .bs-wizard-info {color: #999; font-size: 17px;}
.bs-wizard > .bs-wizard-step > .bs-wizard-dot {position: absolute; width: 30px; height: 30px; text-align:center; text-decoration:none; z-index: 1; display: block;  background: #3276B1; top: 47px; left: 50%; padding: 5px 11px; font-weight: 700; margin-top: -14px; margin-left: -15px; border-radius: 50%;} 
.bs-wizard > .bs-wizard-step > .bs-wizard-dot:after {content: ' '; width: 16px; height: 16px;  border-radius: 50px; position: absolute; top: 10px; left: 8px; } 
.bs-wizard > .bs-wizard-step > .progress {position: relative; border-radius: 0px; height: 3px; box-shadow: none; margin: 25px 0;}
.bs-wizard > .bs-wizard-step > .progress > .progress-bar {width:0px; box-shadow: none; background:#3276B1;}
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
      <style>
  
  .sidebar{
  
  position:relative;
  left:5px;
  width:22%;
  
  
  }
  
  
  #panels1
  {
 
    width: 110%;
    
    display: inline-block;
    background: white;
    right:10%;
    border: 1px solid #E6E9ED;
   
    opacity: 1;
    transition: all .2s ease;
}
      
input,
select { width: 100%; }


#table-scroll {
  height:150px;
  overflow:auto;  
  margin-top:20px;
}
.bar {
  background-color: lightblue;
  height: 100%;
  text-align:center;
} 
.selec{color:red;}

.disble{
color:black;
cursor:not-allowed;
}

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
  
  <script>
    function kk2()
  {
      document.getElementById("complexity").disabled  = false;
      document.getElementById("est_archive").disabled  = false;
      document.getElementById("est_scrn").disabled  = false;
      document.getElementById("est_db_size").disabled  = false;
      document.getElementById("est_hrs").disabled  = false;
      document.getElementById("est_cst").disabled  = false;
      document.getElementById("ttl_IA_cst").disabled  = false;
      document.getElementById("ttl_infra_cst").disabled  = false;
      document.getElementById("ttl_IA_prdct_cst").disabled  = false;
      document.getElementById("ttl").disabled  = false;

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
<style>

.required:after {
    content: " *";
    color: red;
}
</style>

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
  <script >
  var bala=10;
  </script>
  <script>
function checkk()
{
document.getElementById('prj_name').readOnly = true;
document.getElementById('IA_lic_cst').readOnly = true;
document.getElementById('IA_maint_cst').readOnly = true;
document.getElementById('Infrastrct_cst').readOnly = true;
document.getElementById('strg_est').readOnly = true;
document.getElementById('lab_cst').readOnly = true;
document.getElementById('proj_name').readOnly = true;
document.getElementById('data_size').disabled = true;
document.getElementById('curnt_users').disabled = true;
document.getElementById('complexity').disabled = true;
document.getElementById('RO_DATE').readOnly = true;
document.getElementById('SME_DATE').readOnly = true;
document.getElementById('est_archive').readOnly = true;
document.getElementById('est_scrn').readOnly = true;
document.getElementById('est_db_size').readOnly = true;
document.getElementById('est_hrs').readOnly = true;
document.getElementById('est_cst').readOnly = true;
document.getElementById('ttl_IA_cst').readOnly = true;
document.getElementById('ttl_infra_cst').readOnly = true;
document.getElementById('ttl_IA_prdct_cst').readOnly = true;
document.getElementById('ttl').readOnly = true;
document.getElementById('ttl_cst_fr_app').readOnly = true;
document.getElementById('add_cst_fr_contigency').readOnly = true;
document.getElementById('add_cst').readOnly = true;
document.getElementById('IA_app_sprt_cst').readOnly = true;
document.getElementById('est_archive_cst').readOnly = true;
 
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
HttpSession details=request.getSession();
String roles=(String)details.getAttribute("role");
String info=(String)details.getAttribute("app_emp");
String appno=(String)details.getAttribute("appno");
String projectname=(String)details.getAttribute("nameofproject");
String det=(String)session.getAttribute("theName");
String appl=(String)details.getAttribute("applications");
String prj=(String)details.getAttribute("projects");
System.out.println("-- "+info+"-- "+appno+"---"+projectname+"---"+det);
 
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "password123");
String query = "SELECT * from app_prior where prj_name='"+projectname+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);


String query3 = "select * from projinfo where id = "+det;
Statement st3 = conn.createStatement();
ResultSet rs3 = st3.executeQuery(query3);

System.out.println(projectname);

String query1="";
if(prj.equals("all"))
	 query1 = "select * from appinfo where prjname = '"+projectname+"'";
else
	 query1 = "select * from appinfo where prjname = '"+prj+"' and appname='"+appl+"'";

System.out.println(query1);
Statement st1 = conn.createStatement();
ResultSet rs1 = st1.executeQuery(query1);


String query2= "SELECT * from app_prior where prj_name='"+projectname+"'";
Statement st2 = conn.createStatement();
ResultSet rs2 = st2.executeQuery(query2);


PreparedStatement statement =  conn.prepareStatement("select sum(ttl_cst_fr_app) from app_prior where prj_name='"+projectname+"'");
ResultSet result = statement.executeQuery();
result.next();
String sum=result.getString(1);
{
%>


<script type="text/javascript">
  var e;
 function updatesum() {
var x=document.loginForm.data_size.value;
  var y=document.loginForm.curnt_users.value;

var a,b,c,d,z;
if(x.charAt(0)=='<' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Low";
}
if(x.charAt(0)=='<' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Low";
}
if(x.charAt(0)=='<' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='<' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='<' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='1' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Low";
}
if(x.charAt(0)=='1' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='1' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='1' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='1' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='2' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='2' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='2' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='2' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='2' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='5' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Low to Medium";
}
if(x.charAt(0)=='5' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='5' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='5' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='5' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='>' && y.charAt(1)=='1'&&y.length<=3)
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='>' && y.charAt(1)=='2')
{
document.loginForm.complexity.value ="Medium";
}
if(x.charAt(0)=='>' && y.charAt(1)=='5')
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='>' && y.charAt(1)=='1'&&y.length==4)
{
document.loginForm.complexity.value ="Medium to High";
}
if(x.charAt(0)=='>' && y.charAt(0)=='1')
{
document.loginForm.complexity.value ="High";
}
if(document.loginForm.complexity.value=="Low")
{
document.loginForm.est_archive.value =700;
document.loginForm.est_scrn.value ="<=5";
z=1;
}
if(document.loginForm.complexity.value=="Low to Medium")
{
document.loginForm.est_archive.value =1000;
document.loginForm.est_scrn.value ="<=10";
z=2;
}
if(document.loginForm.complexity.value=="Medium")
{
document.loginForm.est_archive.value =1400;
document.loginForm.est_scrn.value ="<=20";
z=3;
}
if(document.loginForm.complexity.value=="Medium to High")
{
document.loginForm.est_archive.value =1800;
document.loginForm.est_scrn.value ="<=25";
z=4;
}
if(document.loginForm.complexity.value=="High")
{
document.loginForm.est_archive.value =2500;
document.loginForm.est_scrn.value ="<=30";
z=5;
}
var qqq=<%=appno%>;
document.loginForm.est_db_size.value=(document.loginForm.no_of_app_complexity.value*0.001*document.loginForm.strg_est.value).toFixed(2);
document.loginForm.est_hrs.value =(document.loginForm.no_of_app_complexity.value*document.loginForm.est_archive.value).toFixed(2);
a=(100*document.loginForm.est_hrs.value);
document.loginForm.est_cst.value="$"+a.toFixed(2);
b=document.loginForm.est_db_size.value*document.loginForm.IA_lic_cst.value;
document.loginForm.ttl_IA_cst.value ="$"+b.toFixed(2);
c=10000*document.loginForm.est_db_size.value;
document.loginForm.ttl_infra_cst.value="$"+c.toFixed(2);
d=5*b*0.01*document.loginForm.IA_maint_cst.value
document.loginForm.ttl_IA_prdct_cst.value ="$"+d.toFixed(2);
e=a+b+c+d;
document.loginForm.ttl.value="$"+e.toFixed(2);
document.loginForm.tootal.value=e.toFixed(2);
document.loginForm.ttl_cst_fr_app.value=<%=sum%>+(e.toFixed(2)-0);
document.loginForm.est_archive_cst.value="$"+document.loginForm.ttl_cst_fr_app.value.toFixed(2); 
}
function add()
{
var i;
i=(document.loginForm.ttl_cst_fr_app.value-0)+(document.loginForm.add_cst_fr_contigency.value-0)+(document.loginForm.add_cst.value-0)+(document.loginForm.IA_app_sprt_cst.value-0);
document.loginForm.est_archive_cst.value="$"+i.toFixed(2); 
}
</script>
<script>
function switchColors0()
{
 
links=document.getElementsByTagName("li") ;  
var element=document.getElementById("xxx");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = '#3276B1' ; 
element.style.borderRadius="5px";
element.style.marginRight = "70px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#3276B1";
element.style.background="#3276B1"; 
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = '#3276B1' ; 
 
}
</script>
<script>
function switchColors()  
{  
links=document.getElementsByTagName("li") ;  
var element=document.getElementById("xxz");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = '#3276B1' ; 
element.style.borderRadius="5px";
element.style.marginRight = "85px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#3276B1";
element.style.background="#3276B1";
var list = document.getElementsByTagName("UL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = '#3276B1' ; 


} 
</script>
<script>
function switchColors1()  
{  
links=document.getElementsByTagName("li") ;  
var element=document.getElementById("xxy");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = '#3276B1' ; 
element.style.borderRadius="5px";
element.style.marginRight = "150px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#3276B1";
element.style.background="#3276B1";
var list = document.getElementsByTagName("UL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = '#3276B1' ; 


} 
</script>


 
<form class="form-signin" name="loginForm" method="post">
<div class="container">
<nav class=" navbar-fixed-top" style="background:#3276B1">
            <div class="container-fluid">
            
            <%if (rs3.next()) {%>
                    <a class="navbar-brand" href="project.jsp" style="color:white" id="sitetitle" >Onboarding Tool-<%= rs3.getString(1) %></a>
             <%        String q2="select * from archive_exec where level=1 and projects='"+projectname+"'order by seq_num";
Statement s2 = conn.createStatement();
ResultSet rss = s2.executeQuery(q2);
while(rss.next())
{
session.setAttribute(rss.getString(3),rss.getString(15));
}%>
              
                <div id="navbar" class="navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                       <img src="assets/images/logo1.png" id="image" class="img-rounded" height="50" width="80" alt="Platform3Solutions" />&nbsp;
                       
</li>
 <li><%
                         String uid=(String)details.getAttribute("username");
                         String role=(String)details.getAttribute("role");%>
 <p style="color:white; padding-top:15px;"><%=uid%>&nbsp;logged in as &nbsp;<span><%=role%></span></p>
</li>               <li>
                           <a href="logout.jsp" style="color:white; background:#3276B1">Logout</a>
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
        <div id='jqxTree' style='visibility: hidden;  padding-top:30px;   float:right; '>
                    <ul class="nav nav-sidebar" id ="sidemenu" >

            <ul>
                <li id='home' item-selected='true'> <a href="project.jsp">Home </a></li>
                <li ><a href="editproject.jsp">App Emphasize Module
                    <ul>
                       <li ><a href="editproject.jsp">Project Details
                    <ul>
                        <li><a href="editproject.jsp">Project Information</a></li>
                        <li><a href="application1.jsp">Application Details</a></li>
                        </ul>
                        </li>
                        <li item-expanded='true'> <a href="tree.jsp">Application Prioritization</a>
                         <ul>
                                <li id="xxx">Parameters</li>
                                <li id="xxz">Archival Complexity Calculation</li>
                                <li id="xxy">Archival Cost Estimate</li>
                                
                            </ul>
                        </li>
                        <li><a href="applnprior.jsp">Application-Prioritized</a></li>
          

                    </ul>
                </li>
                
           <li item-expanded='true'><a href='firstinsert.jsp'>Intake Module</a>
                <ul>
                <li item-expanded='true'><a href='firstinsert.jsp'>Business</a>
                <ul>
                <li><a href='firstinsert.jsp'>Application Information</a></li>
                <li><a href='firstinsert.jsp'>Legacy Retention Information</a></li>
                <li><a href='firstinsert.jsp'>Archive Data Management</a></li>
                <li><a href='firstinsert.jsp'>System Requirements</a></li>
                
                </ul></li>
                <li item-expanded='true'><a href='firstinsert.jsp'>Technical</a>
                <ul>
                <li><a href='firstinsert.jsp'>Application Data Information</a></li>
                <li><a href='firstinsert.jsp'>Infrastructure & Environment Inforamation</a></li>
                <li><a href='firstinsert.jsp'>Technical Information</a></li>
                </ul>
                </li>
                
                 <li item-expanded='true'><a href='firstinsert.jsp'>Archival Requirements</a>
                 <ul>
                 <li><a href='firstinsert.jsp'>Screen/Report Requirements</a></li>
                 <li><a href='firstinsert.jsp'>Archive Requirements</a></li>
                 </ul>
                 </li>
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
             </div>   <script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>

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
                    
                    
                <div class="col-md-8">
          
 <%
String initiate=(String)session.getAttribute("Ideation and Initiate");
String plan=(String)session.getAttribute("Plan");
String execute=(String)session.getAttribute("Execute");
String hypercare=(String)session.getAttribute("Closure");
if(initiate == null)
initiate="0";
if(plan == null)
plan="0";
if(execute == null)
execute="0";
if(hypercare == null)
hypercare="0";
%>                            

<div class="row">

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Initiate</label></center>
  <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" id="prog_bar" style="width: <%=initiate%>%" aria-valuenow="<%=initiate %>" aria-valuemin="0" aria-valuemax="100"><span style="color:black;"><%=initiate %>%</span></div>
</div></div></div>

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Plan</label></center>
  <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" id="prog_bar1" style="width: <%=plan%>%" aria-valuenow="<%=plan%>" aria-valuemin="0" aria-valuemax="100"><span style="color:black;"><%=plan %>%</span></div>
</div></div></div>

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Execute</label></center>
  <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" id="prog_bar2" style="width: <%=execute %>%" aria-valuenow="<%=execute %>" aria-valuemin="0" aria-valuemax="100"><span style="color:black;"><%=execute %>%</span></div>
</div></div></div>

 <div class="col-md-3">
 <div class="form-group">
 <center><label >Closure</label></center>
 <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-stripedss-bar" role="progressbar" id="prog_bar3" style="width: <%=hypercare %>%" aria-valuenow="<%=hypercare %>" aria-valuemin="0" aria-valuemax="100"><span style="color:black;"><%=hypercare %>%</span></div>
</div></div></div>
</div><jsp:include page="progress_details.jsp" >
<jsp:param name="Initiate" value="<%=initiate %>"/>
<jsp:param name="Plan" value="<%=plan %>"/>
<jsp:param name="Execute" value="<%=execute %>"/>
<jsp:param name="Hypercare" value="<%=hypercare %>"/>
</jsp:include>
 <div class="row">
 
        
            <div class="row bs-wizard" style="border-bottom:0;">
                
                <div class="col-xs-3 bs-wizard-step complete">
                  <div class="text-center bs-wizard-stepnum">Project Information</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot" style="color:white">1</a>
                
                </div>
                
                <div class="col-xs-3 bs-wizard-step active"><!-- complete -->
                  <div class="text-center bs-wizard-stepnum">Cost Complexity Calculation</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot" style="color:white">2</a>
                </div>
                
                <div class="col-xs-3 bs-wizard-step disabled"><!-- complete -->
                  <div class="text-center bs-wizard-stepnum">Prioritized Applications</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot">3</a>
                </div>
                
                <div class="col-xs-3 bs-wizard-step disabled"><!-- active -->
                  <div class="text-center bs-wizard-stepnum">Final</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot">4</a>
                </div>
            </div>
        
        
        
</div>
        
<script> 
links=document.getElementsByTagName("li") ;  
var element=document.getElementById("xxx");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = '#3276B1' ; 
element.style.borderRadius="5px";
element.style.marginRight = "70px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#3276B1";
element.style.background="#3276B1"; 
var list = document.getElementsByTagName("UL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = '#3276B1' ; 
</script>



              
                    <br/><br/><br/>
                    <div class="panel-group" id="panels1"> 
                                                <div class="panel panel-default">
        <div class="panel-heading" style="color:white; background:#3276B1"> 
                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#panels1" href="#collapse1" onclick="switchColors0();" style="color:white; background:#3276B1"> Parameters   </a> </h4> 
                            </div>  
                                                       
                            <div id="collapse1" class="panel-collapse collapse in"> 
                                <div class="panel-body text-left">
                                
                                <%if(rs.next()){
                                
                                	%>
                                    
                                    
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526"><div class="required">Project Name</div></label>
                                            <input type="text" class="form-control" id="prj_name"  name="prj_name" value="<%=projectname %>" required>
                                        </div>
                                       
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526"><div class="required">IA License cost per TB($)</div></label>
                                            <input type="text" class="form-control" id="IA_lic_cst"  name="IA_lic_cst" value="<%=rs.getString("IA_lic_cst")%>" required>
                                        </div>
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput526"><div class="required">IA Maintenance Cost Per Year(%)</div></label>
                                            <input type="text" class="form-control" id="IA_maint_cst"  name="IA_maint_cst" value="<%=rs.getString("IA_maint_cst")%>" required>
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput316"><div class="required">Infra Structure Cost per TB($)</div></label>
                                              <input type="text" class="form-control" id="Infrastrct_cst"  name="Infrastrct_cst" value="<%=rs.getString("Infrastrct_cst")%>" required> 
                                         </div>
                                        <div class="form-group">
                                       
                                            <label class="control-label" for="formInput526"><div class="required">Storage Estimate(%)</div></label>
                                            <input type="text" class="form-control" id="strg_est"  name="strg_est" value="<%=rs.getString("strg_est")%>" required>
                                      
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526"><div class="required">Labor Cost Per Hour for IA Dev Team($)</div></label>
                                            <input type="text" class="form-control" id="lab_cst"  name="lab_cst" value="<%=rs.getString("lab_cst")%>" required>
                                        </div>
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput526"><div class="required">Number of Applications based on Complexity</div></label>
                                            <input type="text" class="form-control" id="no_of_app_complexity"  name="no_of_app_complexity" value="<%=rs.getString("no_of_app_complexity")%>" required>
                                        </div>
                                        <div>
                                        <button type="button"  class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal" id="btt" onclick="switchColors();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2" style="color:white">  Next</a><span class="glyphicon glyphicon-chevron-right"></span></button>
                                        </div>
                                                                        </div>                                 
                            </div>                             
                        </div> 
    
                               <div class="panel panel-default"> 
                            <div class="panel-heading" style="color:white; background:#3276B1"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2" onclick="switchColors();">    Archival Complexity Calculation    </a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                                
                                
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
          <th>Application Name<span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> <span class="glyphicon glyphicon-search pull-right" onClick="myFunction1()"></span></th>
          <th>Complexity <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> <span class="glyphicon glyphicon-search pull-right" onClick="myFunction2()"></span></th>
          <th>Estimated Size of xDB <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> <span class="glyphicon glyphicon-search pull-right" onClick="myFunction3()"></span></th>
          <th>Estimated Service Cost <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span><span class="glyphicon glyphicon-search pull-right" onClick="myFunction4()"> </span></th>
        </tr>
        
        <!-- Filtering
                        * js-filter => filter trigger (input, select)
                        -->
        <tr>
          <th> <!-- input filter -->
            
            <input  class="js-filter form-control" type="text" style="display:none" value="" id="myDiv1">
          </th>
          <th> <!-- select filter --
            
            <input  class="js-filter  form-control" type="text" style="display:none" value="" id="myDiv2">
          </th>
          <th><input class="js-filter  form-control" type="text" style="display:none" value="" id="myDiv3"></th>
          <th><input class="js-filter  form-control" type="text" style="display:none" value="" id="myDiv4"></th>
        </tr>
      </thead>
      
      <!-- table body -->
      <tbody>   
        
      
          <%
          
while(rs1.next()){

%>

        <tr>
        
          <td class="edit_row" style="cursor:pointer" id="1"><%=rs1.getString("appname") %></td>
          <td class="row_s" style="cursor:pointer" id="2"><%=rs1.getString("complexity") %></td>
          <td class="row_t" style="cursor:pointer" id="3"><%=rs1.getString("est_db_size") %></td>
          <td class="row_d" style="cursor:pointer" id="4"><%=rs1.getString("est_cst") %></td>
       
         
        </tr>
        <% } 
        
 
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
    var projectname_value=document.getElementById('proj_name').value;
    var knt=0;
 <%
 String query8= "SELECT * from app_prior where prj_name='"+projectname+"'";
 Statement st8 = conn.createStatement();
 ResultSet rs8 = st8.executeQuery(query8);
 while(rs8.next())
 {
	 %>
	 valuess="<%=rs8.getString("proj_name")%>";
	 if(valuess==projectname_value)
		 {
		 
		 window.alert("true");
		 knt++;
		 
		 document.getElementById('complexity').value = "<%= rs8.getString("complexity") %>";
		    document.getElementById('est_db_size').value = "<%= rs8.getString("est_db_size") %>";
		    document.getElementById('est_cst').value = "<%= rs8.getString("est_cst") %>";
		    document.getElementById('curnt_users').value = "<%= rs8.getString("curnt_users") %>";
		    document.getElementById('data_size').value = "<%= rs8.getString("data_size") %>";
		    document.getElementById('RO_DATE').value = "<%= rs8.getString("read_date") %>";
		    document.getElementById('SME_DATE').value = "<%= rs8.getString("sme_date") %>";
		    document.getElementById('est_archive').value = "<%= rs8.getString("est_archive") %>";
		    document.getElementById('est_scrn').value = "<%= rs8.getString("est_scrn") %>";
		    document.getElementById('est_hrs').value = "<%= rs8.getString("est_hrs") %>";
		    document.getElementById('ttl_IA_cst').value = "<%= rs8.getString("ttl_IA_cst") %>";
		    document.getElementById('ttl_infra_cst').value = "<%= rs8.getString("ttl_infra_cst") %>";
		    document.getElementById('ttl_IA_prdct_cst').value = "<%= rs8.getString("ttl_IA_prdct_cst") %>";
		    document.getElementById('ttl').value = "<%= rs8.getString("ttl") %>";
		 }
<% }
 %>
 if(knt==0){
    document.getElementById('complexity').value = " ";
    document.getElementById('est_db_size').value = " ";
    document.getElementById('est_cst').value = " ";
    document.getElementById('curnt_users').value = " ";
    document.getElementById('data_size').value = " ";
    document.getElementById('RO_DATE').value = " ";
    document.getElementById('SME_DATE').value = " ";
    document.getElementById('est_archive').value = " ";
    document.getElementById('est_scrn').value = " ";
    document.getElementById('est_hrs').value = " ";
    document.getElementById('ttl_IA_cst').value = " ";
    document.getElementById('ttl_infra_cst').value = " ";
    document.getElementById('ttl_IA_prdct_cst').value = " ";
    document.getElementById('ttl').value = " ";
 }
    }, false);
}

</script>
     
  </div>
  <br />
                                 
                                  
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput664">Application Name</label>
                                            <input type="text" class="form-control" id="proj_name"  name="proj_name">
                                        </div>                                         
                                    <%
                                    System.out.println(rs.getString("proj_name"));
                                    //String q="select * from app_prior where prj_name='"+projectname+"' and proj_name='"+rs.getString("proj_name")+"'";
                                    
                                    
                                    %>
                                      
                                              <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Data Size</label>                                             
                                            <select id="data_size" class="form-control" name="data_size" onChange="updatesum()" required > 
                                            <option></option>
                                                <option><100 GB</option>                                                 
                                                <option>100 to 250 GB</option>
                                                <option>250 to 500 GB</option>
                                                <option>500 to 1 TB</option>
                                                <option>>1 TB</option>                                                 
                                            </select>
                                        </div>                    
                                       
                                        
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664"><b>Data Source</b></label> 
                                            </div>
                                            <div class="checkbox"> 
                                            <label class="Data Source"> 
                                                <input type="checkbox" name="data_source" value="regulardb" <%=rs.getString("data_source")%>>Regular DB</label><br />
                                            <label class="Data Source">     <input type="checkbox" name="data_source" value="erp" <%=rs.getString("data_source")%>>ERP</label><br />
                                                <label class="Data Source"> <input type="checkbox" name="data_source" value="product" <%=rs.getString("data_source")%>>Product based 
                                                </label>  <br />                          
                                        </div>
                                        
                                      
                                          <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Current users</label>                                             
                                            <select id="curnt_users" class="form-control" name="curnt_users" onChange="updatesum()" required> 
                                            <option></option>
                                                <option><10</option>                                                 
                                                <option><25</option>
                                                <option><50</option>
                                                <option><100</option> 
                                                <option>100 to 500</option>                                                 
                                            </select>
                                        </div>                    
                                       
                                       <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Complexity</label>                                             
                                            <select id="complexity" class="form-control" name="complexity" onChange="updatesum()" required>
                                                <option></option>
                                                <option>Low</option>                                                 
                                                <option>Low to Medium</option>
                                                <option>Medium</option>
                                                <option>Medium to High</option> 
                                                <option>High</option>                                                 
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="formInput664">Read Only Date</label>                                             
                                            <input type="text" class="form-control" id="RO_DATE"  name="read_date" onChange="updatesum()"> 
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="formInput664">SME Date</label>                                             
                                            <input type="text" class="form-control" id="SME_DATE"  name="sme_date" onChange="updatesum()"> 
                                        </div>          
                                        
                                    <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Archival Service Effort</label>                                             
                                            <input type="text" class="form-control" id="est_archive"  name="est_archive" onChange="updatesum()"> 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Number of Screen</label>                                             
                                            <input type="text" class="form-control" id="est_scrn"  name="est_scrn" onChange="updatesum()" > 
                                        </div>
                                     <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Size of xDB</label>                                             
                                            <input type="text" class="form-control" id="est_db_size"  name="est_db_size" onChange="updatesum()" > 
                                        </div>
                                      <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Hours</label>                                             
                                            <input type="text" class="form-control" id="est_hrs"  name="est_hrs" onChange="updatesum()"   >  
                                        </div>
                                                                                <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Total Service Cost</label>                                             
                                            <input type="text" class="form-control" id="est_cst"  name="est_cst" onChange="updatesum()" > 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Total IA License Cost</label>                                             
                                            <input type="text" class="form-control" id="ttl_IA_cst"  name="ttl_IA_cst" onChange="updatesum()"  > 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Total Infrastructure Storage Cost</label>                                             
                                            <input type="text" class="form-control" id="ttl_infra_cst"  name="ttl_infra_cst" onChange="updatesum()"  > 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Total Info Archive Product Maintenance Cost for 5 years</label>                                             
                                            <input type="text" class="form-control" id="ttl_IA_prdct_cst"  name="ttl_IA_prdct_cst" onChange="updatesum()"  > 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Total</label>                                             
                                            <input type="text" class="form-control" id="ttl"  name="ttl"  > 
                                            <input type="text" class="form-control" id="tootal"  name="tootal"  style="display:none;" > 
                                        </div>   
                                        <div>
                                        <button type="button"  class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal" id="btn_new" onclick="switchColors1();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3" style="color:white">Next</a><span class="glyphicon glyphicon-chevron-right"></span></button>
                                        <button type="button"  class="btn btn-default  pull-right" data-toggle="modal" data-target="#myModal" id="btn_new" onclick="switchColors0();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse1" style="color:black"><span class="glyphicon glyphicon-chevron-left"></span>  Previous</a></button>
                                        </div>                                                  
                                </div>                                 
                            </div>                             
                        </div>
                   
                        
                               <div class="panel panel-default"> 
                            <div class="panel-heading" style="color:white; background:#3276B1"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3" onclick="switchColors1();" >    Archival Cost Estimate    </a> </h4> 
                            </div>                             
                            <div id="collapse3" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                                 
                                  
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput664">Total Cost for all applications in the project</label>
                                            <input type="text" class="form-control" id="ttl_cst_fr_app"  name="ttl_cst_fr_app" onChange="add()" value="<%=sum%>" >
                                        </div>                                         
                                          <div class="form-group">
                                            <label class="control-label" for="formInput664">Additional Cost for Contingency</label>
                                             <div class="input-group">
                                               <input type="text" class="form-control" id="add_cst_fr_contigency" name="add_cst_fr_contigency" onChange="add()" value="<%=rs.getString("add_cst_fr_contigency")%>"> 
                                                <div class="input-group-addon">
                                           <a href="#" data-toggle="tooltip" title="Infra Setup/unplanned labor/travel Etc."> <span class="glyphicon glyphicon-info-sign" ></span></a> 
                                               </div>
                                               </div>                                     
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Additional Cost</label>     
                                             <div class="input-group">                                        
                                            <input type="text" class="form-control" id="add_cst" name="add_cst" onChange="add()" value="<%=rs.getString("add_cst")%>">
                                            <div class="input-group-addon">
                                           <a href="#" data-toggle="tooltip" title="if there is a program team"> <span class="glyphicon glyphicon-info-sign" ></span></a> 
                                               </div>
                                               </div>    
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">IA Application Support Cost Labor</label>                                             
                                            <input type="text" class="form-control" id="IA_app_sprt_cst" name="IA_app_sprt_cst" onChange="add()" value="<%=rs.getString("IA_app_sprt_cst")%>"> 
                                        </div>
                                         <div class="form-group">
                                            <label class="control-label" for="formInput664">Estimated Archival Cost for CAR Projection</label>                                             
                                            <input type="text" class="form-control" id="est_archive_cst" name="est_archive_cst" value="<%=rs.getString("est_archive_cst")%>"> 
                                        </div>
                                          <button type="button"  class="btn btn-default  pull-right" data-toggle="modal" data-target="#myModal" id="btn_new" onclick="switchColors();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2" style="color:black"> <span class="glyphicon glyphicon-chevron-left"></span> Previous</a></button>
                        
                         <input type="text" id="pwqej" value="<%= info %>" hidden>  
                        </div>
                        </div>
                        </div>
                        <br/>
                      <script>
                      function OnButton1()
                      {
                          document.loginForm.action = "Displaydb"
                          document.loginForm.submit();   
                          // document.Form1.target = "_blank";    // Open in a new window
                          document.loginForm.submit();             // Submit the page
                      }
                      </script>
         
                                                                                            
                                   
                                   
<button type="button" class="btn btn-success pull-right" onclick="OnButton1()">Save & Continue ...</button>

        
                            
     
                    <a href="root1.jsp" class="btn btn-default" class="btn pull-right">Cancel</a>
                                      <% } %> 
                                      
                                </div>                                 
                            </div>
                            <script>
 if(document.getElementById('pwqej').value=="R")
checkk();
 </script>
                             <%
}
}}
catch(Exception e){}
%>
</body>
</html>
