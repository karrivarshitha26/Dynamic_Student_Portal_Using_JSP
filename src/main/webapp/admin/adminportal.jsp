<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>
<link rel="stylesheet" type="text/css" href="styles/adminportal.css">
</head>
<body>
    <div class="container">
    	<form action="admin_action.jsp">
    		<button type="submit" value="n-reg" name="action">New Registrations</button>
    		<button type="submit" value="reg" name="action">Registrations</button>
    		<button type="submit" value="d-reg" name="action">Delete Registrations</button>
	        <button type="submit" value="att" name="action">Student Attendance</button>
	        <button type="submit" value="res" name="action">Results</button>
	        <button type="submit" value="av" name="action">Attendance View</button>
	        <button type="submit" value="rv" name="action">Result view</button>
	        <button type="submit" value="lo" name="action">Log-out</button>
        </form>
    </div>
</body>
</html>