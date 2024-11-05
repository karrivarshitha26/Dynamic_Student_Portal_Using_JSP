<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance</title>
<link rel="stylesheet" type="text/css" href="styles/attendance.css">
</head>
<body>
	<div class="container">
		<form action="exist.jsp">
			<label>Student-ID:</label>
			<input type="text" name="student_id" required><br>
			<label>Present-Days:</label>
			<input type="text" name="present" required><br>
			<label>Working-Days:</label>
			<input type="text" name="working" required><br>
			<button type="submit" id="button" value="att" name="submit">Submit</button>
		</form>
	</div>
</body>
</html>