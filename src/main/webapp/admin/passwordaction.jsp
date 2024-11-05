<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Password</title>
</head>
<body>
	<%
		String student_id = request.getParameter("username");
		String pd = request.getParameter("password");
		String verify_pd = request.getParameter("verify_password");
		if (pd.equals(verify_pd)){
			
			try{
				Class.forName("oracle.jdbc.OracleDriver");
				Connection connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","root02");
				Statement st= connect.createStatement();
				int i = st.executeUpdate("insert into student_login values('"+student_id+"','"+pd+"')");
				response.sendRedirect("Registrations.jsp");
			}
			catch(Exception e){
				request.setAttribute("student_id", student_id);
				System.out.println(e);
				request.getRequestDispatcher("passwordentry.jsp").include(request, response);
			}
		}
		else{
			request.setAttribute("student_id", student_id);
			request.getRequestDispatcher("passwordentry.jsp").include(request, response);
		}
	%>

</body>
</html>