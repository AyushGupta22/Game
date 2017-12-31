<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header><h1>XYZ company</h1></header>
<h3>Login</h3>
<form action="Login.jsp" method="get">
	<label>Email</label>
	<input type="email" name = "user">
	<br><br>
	<label>password</label>
	<input type="password" name = "pswd">
	<br><br>
	<input type="submit" value="login">
</form>
<a href="registeration.jsp">Register here</a>
<footer>Copyright &copy; xyz</footer>
</body>
</html>

