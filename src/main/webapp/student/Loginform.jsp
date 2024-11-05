<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login Form</title>
        <link rel="stylesheet" type="text/css" href="stylecss/loginstyle.css" />
    </head>
    <body>
         <div class="form">
		    <h1>Login</h1>
			    <form action="loginaction.jsp">
			        <label>User name:</label>
			        <input type="text" name="username" placeholder="username" required>
			        <label>Password:</label>
			        <input type="password" name="password" placeholder="password" required>
			        <input type="submit" class="button" value="Login">
			    </form>
	    </div>
    </body>
</html>