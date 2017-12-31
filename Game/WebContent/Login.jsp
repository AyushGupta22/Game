<%@page import="user.Login"%>  
<jsp:useBean id="obj" class="user.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=Login.validate(obj);  
if(status){  
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE"); 
session.setAttribute("userId",obj.getId());
//Thread.sleep(10000);
response.sendRedirect("dashboard.jsp");
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="index.jsp"></jsp:include>  
<%  
}  
%>  