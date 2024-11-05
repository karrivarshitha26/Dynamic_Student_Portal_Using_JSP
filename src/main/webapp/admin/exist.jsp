<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Processing</title>
</head>
<body>
	<%
		String student_id = (String)request.getParameter("student_id");
		String action = (String)request.getParameter("submit");
		request.setAttribute("student_id", student_id);
		try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "root02");
            
			if (action.equals("att")){
				String sql = "select * from attendence where jntu="+"'"+student_id+"'";
	            Statement s = connect.createStatement();
				ResultSet rs =s.executeQuery(sql);
				if(rs.next()){
					request.getRequestDispatcher("Attendenceupdate.jsp").include(request,response);
				}
				else{
					request.getRequestDispatcher("attendanceentry.jsp").include(request,response);
				}
				s.close();
				rs.close();
			}
			else{
				String sql = "select * from marks where jntu="+"'"+student_id+"'";
	            Statement s = connect.createStatement();
				ResultSet rs =s.executeQuery(sql);
				if(rs.next()){
					request.getRequestDispatcher("ResultUpdate.jsp").include(request,response);
				}
				else{
					request.getRequestDispatcher("resultentry.jsp").include(request,response);
				}
			}
		}
		catch(Exception ex){
			response.sendRedirect("adminportal.jsp");
			System.out.println(ex);
		}
    %>

</body>
</html>