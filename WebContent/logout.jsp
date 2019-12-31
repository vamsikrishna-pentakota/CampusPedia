<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGOUT</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>

<br><br><br><br><br><br><br><br><br>
<div class="row">
<div class="col-md-4">
</div>
  <div class="col-md-4"><div class="panel panel-info">
  <div class="panel-heading"><h4 align="center">You have Logged out Successfully !!</h4></div>
 
  <div class="panel-body">
  
<%
    session.invalidate();
    System.out.println("Logged OUT");

%>

<h3 align="center">Click Here To <a href="indexcp.html">RE-LOGIN</a></h3>  



  </div>
 </div>
  
</div>
 
</div>
</body>
</html>