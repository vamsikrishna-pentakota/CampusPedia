<%@ page language="java" contentType="text/plain;charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,cpbeans.*,database.*,java.sql.*" session="true"%>
 <%
    String qstringq = request.getParameter("qstring");
    String subjectq = request.getParameter("subject");
    String questionq = request.getParameter("question");
    String statusq = request.getParameter("status");
    String ratingq = request.getParameter("rating");    
    
 
 
    AccesserCP a = (AccesserCP) session.getAttribute("userid");
    String useridq = a.getUserid();
 
    String status;
    try {
		Connection con = null;
		int count = EnterQuestionCP.enterQuestionWithString(qstringq,subjectq,questionq,statusq,ratingq);
		if (count == 1) {
		    status = "success";
			System.out.println("Reached Here for Question Bank");
			out.println(status);
			System.out.println(status);
        
		DatabaseConnection.close(con);
	}
		else if(count == 99){
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
