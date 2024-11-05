<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.applicationform.application.gradeCalculator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result Page</title>
<link rel="stylesheet" type="text/css" href="stylecss/Resultdetails.css">
</head>
<body>
	<%
		String student_id =(String)session.getAttribute("student_id");
		String name = (String)session.getAttribute("name");
		String sql = "select * from marks where jntu="+"'"+student_id+"'";
		gradeCalculator grade = new gradeCalculator();
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","root02");
			Statement s = connect.createStatement();
			ResultSet rs =s.executeQuery(sql);
			if(rs.next()){
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
	<div class="container">
            <div class="child1">
                <img src="pictures/profile.png" alt="profile of student" width="300" height="300">
                <p>${name }</p>
                <p>${student_id}</p>
                <form action="backtoportal.jsp">
                	<button type="submit">Go Back</button>
                </form>
            </div>
            <div class="child2">
               <h3>Result:</h3>
               <table>
               			<tr><th>Subject</th><th>Marks</th><th>Grade</th></tr>
						<tr><td>PYTHON</td><td><%=python %></td><td><%=grade1 %></td></tr>
						<tr><td>C-Language</td><td><%=c %></td><td><%=grade2 %></td></tr>
						<tr><td>Java</td><td><%=java %></td><td><%=grade3 %></td></tr>
						<tr><td>Java-script</td><td><%=javascript %></td><td><%=grade4 %></td></tr>
						<tr><td>PHP</td><td><%=php %></td><td><%=grade5 %></td></tr>
						<tr><td>R-Language</td><td><%=r %></td><td><%=grade6 %></td></tr>
				</table>
				<p>Total grade: <%=totalgrade %></p>
				<p>Total Marks: <%=totalmarks %></p>
            </div>
         </div>
       <%
       	}
		else{
		%>
			<div class="container">
				<h3>No Data Found</h3>
			</div>
		<%
        }
		rs.close();
		connect.close();
		}
		catch(Exception e){
			response.sendRedirect("studentportal.jsp");
		} 
	%>
</body>
</html>