
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <% 
String a = (String)(session.getAttribute("session"));
 if(a == null)
		a = "False";
if(a.equals("TRUE"))
	{%>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>   
   
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql:///game"
     user="root"  password=""/>
 
<sql:query dataSource="${snapshot}" var="result">
    SELECT * from user where id="<%= request.getParameter("id")%>";
</sql:query>
<a href='logout.jsp'>Logout</a>
	<table>
	<tr><td><a href='registeration.jsp'>Add User</a></td></tr>
		<c:forEach var="row" items="${result.rows}" > 
			<tr><td>First Name </td><td><input type="text" value='<c:out value="${row.FirstName}"/>' name="fname" readonly></td></tr>
			<tr><td>Last Name </td><td><input type="text" value='<c:out value="${row.LastName}"/>' name="lname" readonly></td></tr>
			<tr><td>Email </td><td><input type="text" value='<c:out value="${row.Email}"/>' name="email" readonly></td></tr>
			<tr><td>PhoneNo </td><td><input type="text" value='<c:out value="${row.PhoneNo}"/>' name="pnum" readonly></td></tr>
			<tr><td>Address </td><td><input type="text" value='<c:out value="${row.Address}"/>' name="address" readonly></td></tr>
			<tr><td><a href='edit.jsp?id=<c:out value="${row.Id}"/>'>edit</a> </td><td><a href='delete.jsp?id=<c:out value="${row.Id}"/>'>Delete</a> </td></tr>
		</c:forEach>
	</table> 
 
 
</body>  
</html>
<%}
else
	response.sendRedirect("index.jsp");
%>