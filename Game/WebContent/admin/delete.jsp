<%@page import="user.Update" %>

<%
String id = request.getParameter("id");
boolean status = Update.delete(id);
if(status){
response.sendRedirect("dashboard.jsp");
}
else{
	out.print("There is some error");
	out.print("<br><a href=\"dashboard.jsp\">Try Again</a>");
	
}
%>