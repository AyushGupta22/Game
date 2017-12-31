<%@page import="user.Register"%>  
  
<%  
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String num = request.getParameter("pnum");
String address = request.getParameter("address");
String  pass = request.getParameter("pswd");
boolean status=Register.register(fname,lname,email,num,address,pass);  
if(status){  
out.println("You r successfully logged in");  
out.println("<a href=\"dashboard.jsp\">go to Dashboard</a>"); 
}  
else  
{  
out.print("Sorry, Some error");  
 
}  
%>