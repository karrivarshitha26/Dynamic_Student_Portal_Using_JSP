<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User action</title>
</head>
<body>
	<%
		String action = request.getParameter("action");
		if (action.equals("pd")){
			response.sendRedirect("personaldetails.jsp");
		}
		else if (action.equals("ad")){
			response.sendRedirect("Attendancedetails.jsp");
		}
		else if(action.equals("r")){
			response.sendRedirect("Resultdetails.jsp");
		}
		else if (action.equals("lo")){
			request.getSession();
			session.removeAttribute("student_id");
			session.removeAttribute("name");
			response.sendRedirect("../Homepage.jsp");
		}
		else{
			response.sendRedirect("studentportal.jsp");
		}
	 %>

</body>
</html>