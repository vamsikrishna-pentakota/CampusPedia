<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*,cpbeans.*,database.*,java.sql.*,java.io.*" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="cpstyles.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<script src="jquery.js"></script>
<link href="editor.css" type="text/css" rel="stylesheet"/>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">


<script src="bootstrap/js/bootstrap.js"></script>
<script src="bootstrap/js/tooltip.js"></script>
<script src="editor.js"></script>



<title>Campus Pedia</title>
</head>
<body oncontextmenu="return false">
  	<%
		AccesserCP a = (AccesserCP) session.getAttribute("userid");
    	%>
    

     <nav class="navbar navbar-default">
 <div class="container">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
      <a class="navbar-brand">Welcome    <%= a.getUserid()%><span class="sr-only">(current)</span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li role="presentation" class="active"><a href="#dash" aria-controls="dash" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span>  Dashboard</a></li>
    <li role="presentation"><a href="#addques" aria-controls="home" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>  Add Questions</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>  Profile</a></li>
    <li role="presentation"><a href="#qbank" aria-controls="qbank" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-file" aria-hidden="true"></span>  Question Bank</a></li>
    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>  Settings</a></li>
     
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>  Logout</a></li>
      </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</div>
</nav>
    
    <div class="container">

 

  <!-- Tab panes -->
  <div class="tab-content">
  <br>
   <div role="tabpanel" class="tab-pane active" id="dash">
   
   
   
   
     <div class="container target">
    <div class="row">
        <div class="col-sm-10">
             <h1 align="justify" class=""><%= a.getUserid()%>'s Dashboard </h1>
         
          
<br>
        </div>
    
    </div>
  <br>
    <div class="row">
        <div class="col-sm-3">
            <!--left col-->
            <ul class="list-group">
                <li class="list-group-item active" align="center" contenteditable="false">Activity Statistics &nbsp;     <span class="glyphicon glyphicon-tags" aria-hidden="true"></span></li>
                <li class="list-group-item">
                 <span class="badge">0</span>
                         Questions Entered
                  <li class="list-group-item">
                      <span class="badge">0</span>
                          Your Active Forums
                               </li>
                 
                 <li class="list-group-item">
                      <span class="badge">0</span>
                          Forums Created
                               </li>
            </ul>
           <div class="panel panel-success">
             <div class="panel-heading">Subjects Assigned

                </div>
                <div class="panel-body"><i style="color:green" class="fa fa-check-square"></i> Advanced Java Web Technologies</div>
                <div class="panel-body"><i style="color:green" class="fa fa-check-square"></i> OSS</div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i>

                </div>
                <div class="panel-body"><a href="http://g4ce.co.in" class="">www.g4ce.co.in</a>

                </div>
            </div>
          
        
            <div class="panel panel-default">
                <div class="panel-heading">Social Media</div>
                <div class="panel-body">	<i class="fa fa-facebook fa-2x"></i>  <i class="fa fa-github fa-2x"></i> 
                    <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i>  <i class="fa fa-google-plus fa-2x"></i>

                </div>
            </div>
        </div>
        <!--/col-3-->
        <div class="col-sm-9" contenteditable="false" style="">
            <div class="panel panel-info">
                <div class="panel-heading">Your Notifications </div>
                <div class="panel-body"> All Notification Content
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

                </div>
            </div>
            <div class="panel panel-success">
                <div class="panel-heading" contenteditable="false">People Who Recently Viewed You</div>
                <br><br><br><br><br><br><br><br><br>
               
               
               
              
    </div>
           <div class="panel panel-default">
                <div class="panel-heading"><%= a.getUserid()%> Notes</div>
                <div class="panel-body"> My Notes and To Do List
                     <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>
</div></div>


            <div id="push"></div>
        </div>
        
   
   </div>
  
  </div>
  <!-- ---------------TAB FOR QUESTION ENTRY-------------------------- -->
  
  
  <div role="tabpanel" class="tab-pane" id="addques">
     <div class="tabcontentalign">
     <div class="row">
  <div class="col-md-10">
  <div class="panel panel-default">
  <div class="alert alert-success" id="alert1" role="alert"><strong> Question Has been Successfully Added</strong>   </div>
  
         <blockquote>
             <p>Add A Question to the Question Bank</p>
              </blockquote>
    <br>
 <div class="col-md-10">
<form class="form-inline">
  <div class="form-group">
    
    <div class="input-group">
      <div class="input-group-addon"><strong>Enter a random Ques ID : </strong></div>
      <input type="text" maxlength="4" class="form-control" id="qid" placeholder="Question ID">
      <div class="input-group-addon">(4-digits only)</div>
    </div>
  </div>
  
</form>
</div>

<br><br><br><br>
 <div class="col-md-2">
    <strong>Year :</strong>  
   <select class="form-control" id="year">
   <option>1</option>
   <option>2</option> 
   <option>3</option>
   <option>4</option>
   </select> 
   </div>

  
  
   <div class="col-md-2">
   <strong>Semester :</strong> 
   <select class="form-control" id="sem">
  <option>1</option> 
  <option>2</option>
  </select>
   </div>
 <div class="col-md-2">
  <strong>Regulation :</strong>
  <select class="form-control" id="reg">
 <option>R10</option>
  <option>R13</option>
  </select>
  </div>
 <div class="col-md-2">
  <strong>Branch:</strong> 
  <select class="form-control" id="branch">
  <option>CSE</option>
  <option>EEE</option>
  <option>ECE</option>
  <option>MECH</option>
  <option>CIVIL</option>
  <option>IT</option>
  <option>ECM</option>   
  </select>
  </div>
 


   <div class="col-md-6">
   <strong>Subject:</strong> 
  <select class="form-control" id="subject">
   
  </select>
  
   </div> 
   
   
   
   <div class="col-md-2">
  <strong>Question Type(marks):</strong>
  <select class="form-control" id="questype">
 
  <option>03</option>
  <option>04</option>
  <option>08</option>
  <option>16</option>
  </select>
  </div>

   
   
   <script type="text/javascript">
// ****** This is for dynamically loading the subject names ******//   
   var threetwoR13CSE = {"x32R13CSE" : 
       [
     {"sub" : "DWDM"},
     {"sub" : "DAA"},
     {"sub" : "SE"},
     {"sub" : "WEB TECHNOLOGIES"},
      
       ]};
   
  

	  var threetwoR13CSEitems= "";
   for (var i = 0; i < threetwoR13CSE.x32R13CSE.length; i++){
 	  threetwoR13CSEitems+= "<option>" + threetwoR13CSE.x32R13CSE[i].sub + "</option>";
   }
	  
  
   $("#subject").focus(function(){
	      var qids = $("#qid").val();
		  var years = $("#year").val();
		  var sems = $("#sem").val();
		  var regs = $("#reg").val();
		  var branchs= $("#branch").val();
		  var qtypes= $("#questype").val();
		  
		  var prepstring = years+sems+regs+branchs ; 
		// alert(prepstring);
		  
		// ****** This is for dynamically loading the subject names ******//		
		 
// ****** This is for dynamically loading the subject names ******//
		 
			    if(prepstring=="32R13CSE"){
			        $("#subject").html(threetwoR13CSEitems);
			    }
			   
			});
	
// ****** This is for dynamically loading the subject names ******//





	$(document).ready( function() {
        $("#alert1").hide();
        $("#txtEditor").Editor();                    
   
      
        $("#insert").click(function(){
       	
        	$('#status').modal('show');
        	
        	var content = $('#txtEditorContent').text($('#txtEditor').Editor("getText")).val();
       	  
               //  alert(content);       	 
         var qids = $("#qid").val();
		  var years = $("#year").val();
		  var sems = $("#sem").val();
		  var regs = $("#reg").val();
		  var branchs= $("#branch").val();
		  var subjectss= $("#subject").val();
		  var qtypes= $("#questype").val();
		 
		
		  
		 var prepstring1 = years+sems+regs+branchs+qids+qtypes; 
		 
				$.get("enterques.jsp", {
       				qstring : prepstring1,			 				
       				subject : subjectss, 
       				question : content,
       				status : 0,
       				rating : 0
       				
       			}, doUpdate);
       			
       			
       		

              		function doUpdate(response) {

       			var fulldatafromserver = response;
       			var fulldatafromservertrimmed = fulldatafromserver.trim();

       			if (fulldatafromservertrimmed == "success") {
       				
       				$('#status').modal('hide');
       				$('#status1').modal('show');
       			}

       			else {
       			  //alert("failed");
       				$('#status').modal('hide');
           			$('#statusfail').modal('show');
       			}
       			
       		}

       	 
       	 
       	 });
        
   });

	   
		 
</script>
 <br><br><br><br><br><br><br><br>

  
  	<textarea id="txtEditor"></textarea> 
    	<textarea id="txtEditorContent" name="txtEditorContent" hidden=""></textarea>
    	<br>
    	 <button type="button" id="insert" class="btn btn-success">Insert this Question</button>
  
  <br><br><br>
    </div>
    
<br><br><br><br>
	
    
    

    
    
 </div>
 </div>
</div>
</div>

  <!-- ---------------TAB FOR QUESTION ENTRY-------------------------- -->
  
    <!-- ---------------SCRIPT FOR QUESTION ENTRY-------------------------- -->
  
 <script type="text/javascript">
			
		
	</script>

<!-- ---------------SCRIPT FOR QUESTION ENTRY-------------------------- -->

<!-- ---------------MODAL FOR QUESTION ENTRY-------------------------- -->


<div id="status" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm">
        <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Status</h4>
      </div>
      <div class="modal-body">
        <p>Please Wait ..... Inserting Question &hellip;</p>
        <div class="progress">
  <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
    <span class="sr-only">100% Complete</span>
  </div>
</div>
      </div>
      <div class="modal-footer">
        <p>Taking too long??  <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>  <a href="campuspedia.jsp"> Click Here </a></p>
      </div>
    </div><!-- /.modal-content -->
  </div>
</div>

<!-- ---------------MODAL FOR QUESTION ENTRY-------------------------- -->

<div id="status1" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog">
        <div class="modal-content">
      <div class="modal-header">
      
        <h4 class="modal-title"><div class="alert alert-success" role="alert"><span class="
glyphicon glyphicon-ok-sign" aria-hidden="true"></span>     Question Entered Succesfully!</div></h4>
      </div>
      <div class="modal-body">
     
        <p>     <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>    You have succesfully this Question into the Question Bank    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span></p>
       

      </div>
      <div class="modal-footer">
      
      
      
        <p><a href="campuspedia.jsp">Click Here to Insert Another Question / Move to Dashboard</a></p>
      </div>
    </div><!-- /.modal-content -->
  </div>
</div>


<!-- ---------------MODAL FOR QUESTION ENTRY Failure-------------------------- -->


<div id="statusfail" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog">
        <div class="modal-content">
      <div class="modal-header">
      
        <h4 class="modal-title"><div class="alert alert-danger" role="alert"><span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>      Failed</div></h4>
      </div>
      <div class="modal-body">
     
        <p> <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>   Sorry Something went wrong while Inserting this Question into the Question Bank  <span class="glyphicon glyphicon-remove" aria-hidden="true"></span></p>
        <p>The Following might have been one of the reasons :
       <ol>
        <li>You might have Logged in with in-sufficient privilages. </li>
        <li> Servers might have been busy at the moment.</li>
     
        </ol>
        </p>


      </div>
      <div class="modal-footer">
        <p><a href="campuspedia.jsp">       <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>   Click Here to Try Again</a></p>
      </div>
    </div><!-- /.modal-content -->
  </div>
</div>

<!-- ---------------MODAL FOR QUESTION ENTRY Failure-------------------------- -->


    <div role="tabpanel" class="tab-pane" id="profile">
    
<h1 class="page-header">Edit Profile</h1>
  <div class="row">
    <!-- left column -->
    <div class="col-md-4 col-sm-6 col-xs-12">
      <div class="text-center">
        <img src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-person-128.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block well well-sm">
      </div>
    </div>
    <!-- edit form column -->
    <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
      <div class="alert alert-info alert-dismissable">
        <a class="panel-close close" data-dismiss="alert">×</a> 
        <i class="fa fa-coffee"></i>
        <strong>Please complete your Registration !</strong>
      </div>
      <h3>Personal info</h3>
      <form class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-lg-3 control-label">First name:</label>
          <div class="col-lg-8">
            <input class="form-control" value="Vamsi" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Last name:</label>
          <div class="col-lg-8">
            <input class="form-control" value="Krishna P" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Company:</label>
          <div class="col-lg-8">
            <input class="form-control" value="" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Email:</label>
          <div class="col-lg-8">
            <input class="form-control" value="vamckrishna749@gmail.com" type="text">
          </div>
        </div>
    
        <div class="form-group">
          <label class="col-md-3 control-label">Username:</label>
          <div class="col-md-8">
            <input class="form-control" value="vamck" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label">Password:</label>
          <div class="col-md-8">
            <input class="form-control" value="11111122333" type="password">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label">Confirm password:</label>
          <div class="col-md-8">
            <input class="form-control" value="11111122333" type="password">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label"></label>
          <div class="col-md-8">
            <input class="btn btn-primary" value="Save Changes" type="button">
            <span></span>
            <input class="btn btn-default" value="Cancel" type="reset">
          </div>
        </div>
      </form>
    </div>
  </div>
</div>    
    
                     <!--   *************** TAB for Questions Display ********************  -->
    
 <script type="text/javascript">
 
   
     $("#getques").click(function(){
    	
     	$('#status').modal('show');
     	
     	
    	  
            //  alert(content);       	 
      var qids = $("#qid").val();
		  var years = $("#year").val();
		  var sems = $("#sem").val();
		  var regs = $("#reg").val();
		  var branchs= $("#branch").val();
		  var subjectss= $("#subject").val();
		  var qtypes= $("#questype").val();
		 
		
		  
		 var prepstring1 = years+sems+regs+branchs+qids+qtypes; 
		 
				$.get("enterques.jsp", {
    				qstring : prepstring1,			 				
    				subject : subjectss, 
    				question : content,
    				status : 0,
    				rating : 0
    				
    			}, doUpdate);
    			
    			
    		

           		function doUpdate(response) {

    			var fulldatafromserver = response;
    			var fulldatafromservertrimmed = fulldatafromserver.trim();

    			if (fulldatafromservertrimmed == "success") {
    				
    				$('#status').modal('hide');
    				$('#status1').modal('show');
    			}

    			else {
    			  //alert("failed");
    				$('#status').modal('hide');
        			$('#statusfail').modal('show');
    			}
    			
    		}
  	 });
     
/* 
 function getQues(){
	 $('#accordion').append(" <div class='panel panel-default'> <div class='panel-heading'> <h4 class='panel-title'> <a data-toggle='collapse' data-parent='#accordion' href='#collapseTwo'>2. What is CSS?</a></h4></div><div id='collapseTwo' class='panel-collapse collapse in'><div class='panel-body'><p>HTML stands for HyperText Markup Language. HTML is the main markup language for describing the structure of Web pages.</p></div></div></div> ");
 } */ 
 
 
 
 </script>
 
 
 
    <div role="tabpanel" class="tab-pane" id="qbank">
    
       <div class="col-sm-16">
          <div class="panel panel-success">
     
                          <div class="panel-body">
   
    						<div class="row">
       								<div class="col-md-4">
  
         									 <select class="form-control input-lg" id="sem">
											     			<option selected="selected" value="-1">Choose a Semester</option>
											     			<option value="11">1-1</option>
											  				<option value="12">1-2</option>
											  				<option value="21">2-1</option>
											  				<option value="22">2-2</option>
											  				<option value="31">3-1</option>
											  				<option value="32">3-2</option>
											  				<option value="41">4-1</option>
											  				<option value="42">4-2</option>
  		  									 </select>
 
      								</div>
      								
      								<div class="col-md-4">
  
         									 <select class="form-control input-lg">
											     			<option>Subject</option>
											  				<option>AJWT</option>
											  				<option>OSS</option>
											  				<option>DWDM</option>
											  				<option>DAA</option>
											  				
  		  									 </select>
 
      								</div>
      								
  									<div class="col-md-4">	
                                      <button type="button" class="btn btn-primary btn-lg btn-block" id="getques">Search</button>
                                    </div>
                                    
   							</div>   
      
     				</div>
     
     </div>
    
   
    
    </div>
    


<br><br><br>

    Here are your Search Results : 
<br><br><br>
      <div class='col-sm-12'>
              
  <div class='bs-example' id='get'>
    <div class='panel-group' id='accordion'>
        
        
        <div class='panel panel-default'>
            <div class='panel-heading'>
                <h4 class='panel-title'>
                    <a data-toggle='collapse' data-parent='#accordion' href='#collapseOne'>1. What is HTML?</a>
                </h4>
            </div>
            <div id='collapseOne' class='panel-collapse collapse in'>
                <div class='panel-body'>
                    <p>HTML stands for HyperText Markup Language. HTML is the main markup language for describing the structure of Web pages. <a href="http://www.tutorialrepublic.com/html-tutorial/" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
       
       
      
       
       
       
        
    </div>
	
</div>
            </div>    
   </div> 
    


 <!--   *************** TAB for Questions Display ********************          -->


    
    
    <div role="tabpanel" class="tab-pane" id="settings">...</div>
  
</div>
 <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2015 Vamsi Krishna P &middot; <a href="#">Facebook</a> &middot; <a href="#">Twitter</a> &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
</div>
  
  
</body>
</html>