<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="styles/adminlogin.css" />
</head>
<body>
	  <div class="container">
			    <form action="adminverify.jsp">
			        <label>Admin ID:</label>
			        <input type="text" name="username" placeholder="username" required>
			        <label>Password:</label>
			        <input type="password" name="password" placeholder="password" required>
			        <input type="submit" class="button" value="Login">
			    </form>
	    </div>
</body>
</html>