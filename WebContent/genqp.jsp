<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*,cpbeans.*,database.*,java.sql.*,java.io.*" session="true"%>






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
