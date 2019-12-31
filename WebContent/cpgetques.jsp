<%@ page language="java" contentType="text/plain; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*,cpbeans.*"%>

           <% 
                      String useridq = request.getParameter("userid");
                      if (useridq != null)
                     {
                       String upwdq = request.getParameter("upwd");
                       AccesserCP a = cpbeans.LoginCP.loginCP(useridq,upwdq);
                       if ( a == null)
                    	   out.println("nomatch");
                       
                       else {
                    	   session.setAttribute("userid",a); 
                    	   response.sendRedirect("generateqp.jsp");
                    	   out.println("succesful");
                     	   }
                     } // end of if
                    
                     else 
                    	 out.println("nomatch");
                     