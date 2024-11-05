<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Portal - Attendance</title>
    <style>
    	.container {
    		margin: 50px auto;
		    font-family:Georgia, 'Times New Roman', Times, serif;
		    background-color: #fefefe;
		    width:60%;
		    min-width: 500px;
		    padding:20px;
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
    </style>
</head>
<body>
    <div class="container">
    <% 	
    	String student_id = (String)request.getParameter("student_id");
    	String present =(String)request.getParameter("present");
    	String working = (String)request.getParameter("working");
    	int pre = Integer.parseInt(present);
    	int work = Integer.parseInt(working);
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root02");
            String insertQuery = "INSERT INTO attendence VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(insertQuery);
            pstmt.setString(1, student_id);
            pstmt.setInt(2, pre);
            pstmt.setInt(3, work);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
      %>
      <div>
      	<h3>Data Submitted Successfully</h3>
      </div>
      <%  
      } catch (Exception ex) {
    	  System.out.println(ex);
      %>
      <div>
      	<h3>Data Submitted UnSuccessfully</h3>
      </div>
      <%
            response.sendRedirect("adminportal.jsp");
        }
      %>
      <form action="back.jsp">
      		<input type="submit" id="back" value="back">
      </form>
      </div>
</body>
</html>