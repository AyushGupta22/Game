<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String a = (String)(session.getAttribute("session"));
if(a == null)
	a = "False";
if(a.equals("TRUE"))
	{%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="profile.jsp">Profile</a>
<a href="logout.jsp">logout</a>
</body>
</html>
<%}
else
	response.sendRedirect("index.jsp");
%>
