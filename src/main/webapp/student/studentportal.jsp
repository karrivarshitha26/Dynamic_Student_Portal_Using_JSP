<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Portal</title>
<link rel="stylesheet" type="text/css" href="stylecss/studentportal.css"/>
</head>
<body>
	<%
		String student_id = (String)session.getAttribute("student_id");
		String sql = "select * from personal_details where jntu= "+"'"+student_id+"'";
		try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","root02");
		Statement s = connect.createStatement();
		ResultSet rs =s.executeQuery(sql);
		if(rs.next()){
			String name = rs.getString(2)+" "+rs.getString(3);
			request.getSession();
			session.setAttribute("name", name);
	%>
	<div class="container">
            <div class="child1">
                <img src="pictures/profile.png" alt="profile of student" width="300" height="300">
                <p><%=name%></p>
                <p><%=student_id%></p>
            </div>
            <div class="child2">
            	<form action="user_action.jsp">
            		<button type="submit" value="pd" name="action">Personal Details</button>
            		<button type="submit" value="ad" name="action">Attendance Details</button>
            		<button type="submit" value="r" name="action">Marks/results</button>
            		<button type="submit" value="lo" name="action">Log-Out</button>
                </form>
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
			response.sendRedirect("Loginform.jsp");
		}
	  %>
</body>
</html>