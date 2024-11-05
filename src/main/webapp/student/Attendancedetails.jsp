<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance Details</title>
<link rel="stylesheet" type="text/css" href="stylecss/Attendancedetails.css">
</head>
<body>
	<%
		String student_id =(String)session.getAttribute("student_id");
		String name = (String)session.getAttribute("name");
		String sql = "select * from attendence where jntu="+"'"+student_id+"'";
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","root02");
			Statement s = connect.createStatement();
			ResultSet rs =s.executeQuery(sql);
			if(rs.next()){
				int presentDays = rs.getInt(2);
		        int totalWorkingDays = rs.getInt(3);
		        double attendancePercentage = (double) presentDays / totalWorkingDays * 100;
		%>
	<div class="container">
         <div class="child1">
             <img src="pictures/profile.png" alt="profile of student" width="300" height="300">
             <p>${name }</p>
             <p>${student_id }</p>
             <form action="backtoportal.jsp">
             	<button type="submit">Go Back</button>
             </form>
         </div>
         <div class="child2">
            <h3>Attendance Details</h3>
	        <p>Student ID: <%=student_id %></p>
	        <p>Present Days: <%=presentDays%></p>
	        <p>Total Working Days: <%=totalWorkingDays %></p>
	        <p>Attendance Percentage: <%=String.format("%.2f", attendancePercentage) %></p>
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