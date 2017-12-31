<% 
String a = (String)(session.getAttribute("session"));
if(a == null)
	a = "False";
if(a.equals("TRUE"))
	{%>
<%@page import="user.Update"%>  
  
<%  
String id = request.getParameter("id");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String num = request.getParameter("pnum");
String address = request.getParameter("address");
boolean status=Update.updat(id,fname,lname,email,num,address);  
if(status){  
response.sendRedirect("profile.jsp");
}  
else  
{  
out.print("Sorry, Some error");  
 
}  
%>
<%}
else
	response.sendRedirect("index.jsp");
%>