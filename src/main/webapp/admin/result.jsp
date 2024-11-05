<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<link rel="stylesheet" type="text/css" href="styles/result.css">
</head>
<body>
	<div class="container">
		<form action="exist.jsp">
			<label>Student-ID:</label>
			<input type="text" name="student_id" required><br>
			<label>Python:</label>
			<input type="number" name="python" required><br>
			<label>C-language:</label>
			<input type="number" name="c" required><br>
			<label>Java:</label>
			<input type="number" name="java" required><br>
			<label>Javascript:</label>
			<input type="number" name="javascript" required><br>
			<label>PHP:</label>
			<input type="number" name="php" required><br>
			<label>R-language:</label>
			<input type="number" name="r" required><br>
			<button type="submit" id="button" value="res" name="submit">Submit</button>
		</form>
	</div>
</body>
</html>