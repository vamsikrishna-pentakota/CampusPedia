<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*,cpbeans.*,database.*,java.sql.*,java.io.*" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Generate Question Paper</title>
		<meta name="description" content="Creative styles and ideas for custom select elements" />
		<meta name="keywords" content="custom select, select style, javascript, inspiration, select element" />
		<meta name="author" content="Vamsi Krishna P" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/cs-select.css" />
		<link rel="stylesheet" type="text/css" href="css/cs-skin-rotate.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/genqp.css">
			
		<script src="jquery.js"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body class="color-6">
	
		<nav class="navbar navbar-inverse custom">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img alt="Brand" src="WebContent/img/logo.jpg"></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Profile <span class="sr-only">(current)</span></a></li>
        <li><a href="#">
        <%
		AccesserCP a = (AccesserCP) session.getAttribute("userid");
    	%>
    	</a></li>
      
      </ul>
       <a class="navbar-brand">Welcome    <%= a.getUserid()%><span class="sr-only">(current)</span></a>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Profile <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Edit</a></li>
            <li><a href="#">Request Permissions</a></li>
            <li><a href="#">Notifications</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="logout.jsp">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	
	
		<div class="container">
	
				<!-- Top Navigation -->
				<header class="codrops-header">
				<h1><span>Please customize the Question Paper</span></h1>	
				
			</header>
			
			
			<div class="jumbotron">
     	
     	
		<div class="container">
     	<div class="row">
                     <div class="col-md-4">
                     <section>
				<label class="select-label">Choose Year :</label>
				<select class="cs-select cs-skin-rotate">
					<option value="1">1st Year</option>
					<option value="2">2nd Year</option>
					<option value="3">3rd Year</option>
					<option value="4">4th Year</option>
					
				</select>
			</section>
			</div>
			
			
			
 	 					<div class="col-md-4">
 	 					
 	 					<section>
				<label class="select-label">Choose Sem :</label>
				<select class="cs-select cs-skin-rotate">
					<option value="1">SEM 1</option>
					<option value="2">SEM 2</option>
				</select>
			</section>
 	 					
 	 					</div>
  	
  		<div class="col-md-4">
	
	
				<section>
				<label class="select-label">Choose Branch :</label>
				<select class="cs-select cs-skin-rotate">
					<option value="1">CSE</option>
					<option value="2">ECE</option>
					<option value="3">EEE</option>
					<option value="4">MECH</option>
					
				</select>
			</section>
	
		</div>
			</div>
			
     		
			  <div class="row">
                <div class="col-md-4">
                  <section>
				<label class="select-label">Select Subject :</label>
				<select class="cs-select cs-skin-rotate">
					<option value="1">Advanced Java and Web Technologies</option>
					<option value="2">Software Engineering</option>
					<option value="3">Data Mining and Warehousing</option>
					<option value="4">Design and Analysis Of Algorithms</option>
					
				</select>
			</section>
                </div>
               
               
                <div class="col-md-4">
                  <section>
				<label class="select-label">Which Mid?</label>
				<select class="cs-select cs-skin-rotate">
					<option value="1">Mid 1</option>
					<option value="2">Mid 2</option>
					
					
				</select>
			</section>
                </div> 
              <form action="generateqp.jsp" method="post">
                <div class="col-md-4">
                 <section>
           <input class="btn btn-default button" type="button" value="Generate Question Paper"></button>
           </section>
                </div>
                </form>
               </div>	
          </div>
          <br><br><br><br>
     </div>
	
	
			
			
	
			
			
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/selectFx.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script>
			(function() {
				[].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {	
					new SelectFx(el);
				} );
			})();
		</script>
	</body>
</html>



 <%
    
    
 String status;
    try {
		Connection con = null;
		int stat = EnterQuestionCP.makePdf();
		if (stat == 1) {
		    status = "success";
			System.out.println("Reached Here for PDF");
			out.println(status);
			System.out.println(status);
        
		DatabaseConnection.close(con);
	}
		else if(stat == 99){
			status= "failed";
			out.println(status);
		}
	}
	    catch (Exception ex) {
		status= "failed";
		System.out.println(status);
		out.println(status);
		
	}
 
 
 
 %>
