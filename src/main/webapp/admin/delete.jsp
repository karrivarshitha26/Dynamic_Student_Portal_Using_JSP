<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<%
		String student_id = (String)request.getParameter("delete");
	    try {
	        Class.forName("oracle.jdbc.driver.OracleDriver");
	        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "root02");
	        System.out.println("here0");
	        String Q1 = "Delete from attendence where jntu=? and exists(select * from attendence where jntu=?)";
	        PreparedStatement pst1 = conn.prepareStatement(Q1);
	        pst1.setString(1, student_id);
	        pst1.setString(2, student_id);
	        pst1.executeUpdate();
	        pst1.close();
	        System.out.println("here1");
	        String Q2 = "Delete from marks where jntu=? and exists(select * from marks where jntu=?)";
	        PreparedStatement pst2 = conn.prepareStatement(Q2);
	        pst2.setString(1, student_id);
	        pst2.setString(2, student_id);
	        pst2.executeUpdate();
	        pst2.close();
	        System.out.println("here1");
	        String Q3 = "Delete from student_login where student_id=? and exists(select * from student_login where student_id=?)";
	        PreparedStatement pst3 = conn.prepareStatement(Q3);
	        pst3.setString(1, student_id);
	        pst3.setString(2, student_id);
	        pst3.executeUpdate();
	        pst3.close();
	        System.out.println("here1");
	        String Q4 = "Delete from student_address where jntu_no=? and exists(select * from student_address where jntu_no=?)";
	        PreparedStatement pst4 = conn.prepareStatement(Q4);
	        pst4.setString(1, student_id);
	        pst4.setString(2, student_id);
	        pst4.executeUpdate();
	        pst4.close();
	        System.out.println("here1");
	        String Q5 = "Delete from personal_details where jntu=? and exists(select * from personal_details where jntu=?)";
	        PreparedStatement pst5 = conn.prepareStatement(Q5);
	        pst5.setString(1, student_id);
	        pst5.setString(2, student_id);
	        pst5.executeUpdate();
	        System.out.println("here1");
	        pst5.close();
	        conn.close();
	    }
	    catch(Exception e){
	    	System.out.println(e);
	    }
	    finally{
	    	response.sendRedirect("Registration_delete.jsp");
	    }
	%>

</body>
</html>