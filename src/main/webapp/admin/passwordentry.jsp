<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Password</title>
<link rel="stylesheet" type="text/css" href="styles/password.css">
</head>
<body>
<div class="form">
		    <h1>Create Password</h1>
		    <form action="passwordaction.jsp">
		        <label>Student-Id:</label>
		        <input type="text" name="username" placeholder="Enter your jntu" required>
		        <label>Create Password:</label>
		        <input type="password" name="password" placeholder="New password" required>
		        <label>Verify Password:</label>
		        <input type="password" name="verify_password" placeholder="Verify password" required>
		        <input type="submit" class="button" value="confirm"> 
		    </form>
	    </div>
</body>
</html>