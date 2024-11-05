<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Verification</title>
</head>
<body>
	<%	
		String uname = request.getParameter("username");
		request.getSession();
		session.setAttribute("student_id", uname);
		String pword = request.getParameter("password");
		String sql = "select * from student_login where student_id="+"'"+uname+"'";
		try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","root02");
		Statement s = connect.createStatement();
		ResultSet rs =s.executeQuery(sql);
		if(rs.next()){
			if (uname.equals(rs.getString(1)) && pword.equals(rs.getString(2))){
					request.getRequestDispatcher("studentportal.jsp").include(request,response);
			}
			else{
				response.sendRedirect("Loginform.jsp");
			}
		}
		rs.close();
		connect.close();
		}
		catch (Exception e){
			response.sendRedirect("Loginform.jsp");
		}
	%>

</body>
</html>