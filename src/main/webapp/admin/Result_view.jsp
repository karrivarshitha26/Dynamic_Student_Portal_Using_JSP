<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.applicationform.application.gradeCalculator" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Results</title>
    <style>
    	.container {
    		margin: 50px auto;
		    font-family:Georgia, 'Times New Roman', Times, serif;
		    background-color: #fefefe;
		    width:60%;
		    min-width: 500px;
		    padding:10px;
		    text-align: center;
		    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
		    border-radius: 20px;
		}
    	#back{
			margin:10px auto 0px;
		    border-radius: 10px;
		    background-color:#408080;
		    width:40%;
		    border: 0;
		    padding:10px;
		    color: #fbfbfb;
		    cursor: pointer;
		    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.2);
    	}
    	h1{
    		text-align:center;
    	}
    	table{
    		margin:0 auto;
    		width:90%;
    		padding:10px;
    		border-collapse:collapse;
    	}
    	td:hover{
    		background-color:yellow;
    	}
    	th:hover{
    		background-color:black;
    		color:white;
    	}
    </style>
</head>
<body>
	<div class="container">
    <h1>Student Results</h1>
    <table border="1">
        <tr>
            <th>Student ID</th>
            <th>Python</th>
            <th>C-language</th>
            <th>Java</th>
            <th>JavaScript</th>
            <th>PHP</th>
            <th>R-Language</th>
            <th>Total Marks</th>
            <th>Overall Grade</th>
        </tr>
        <% 
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "root02");
                gradeCalculator grade = new gradeCalculator();
                String selectQuery = "SELECT * FROM marks";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(selectQuery);

                while (rs.next()) {
                	String studentId = rs.getString(1);
                	int python = rs.getInt(2);
    				String grade1 = grade.calculateGrade(python);
    				int c = rs.getInt(3); 
    				String grade2 = grade.calculateGrade(c);
    				int java = rs.getInt(4);
    				String grade3 = grade.calculateGrade(java);
    				int javascript = rs.getInt(5);
    				String grade4 = grade.calculateGrade(javascript);
    				int php = rs.getInt(6);
    				String grade5 = grade.calculateGrade(php);
    				int r = rs.getInt(7); 
    				String grade6 = grade.calculateGrade(r);
    				int totalmarks = python+c+java+javascript+php+r;
    				int tm = totalmarks/6;
    				String totalgrade = grade.calculateGrade(tm);

                    %>
                    <tr>
                        <td><%= studentId %></td>
                        <td><%= python %></td>
                        <td><%= c %></td>
                        <td><%= java %></td>
                        <td><%= javascript %></td>
                        <td><%= php %></td>
                        <td><%= r %></td>
                        <td><%= totalmarks %></td>
                        <td><%= totalgrade %></td>
                    </tr>
                    <%
                }

                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
    </table>
          <form action="back.jsp">
      		<input type="submit" id="back" value="back">
      </form>
    </div>
</body>
</html>