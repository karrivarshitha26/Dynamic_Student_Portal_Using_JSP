<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String action = request.getParameter("action");
		if (action.equals("d-reg")){
			response.sendRedirect("Registration_delete.jsp");
		}
		else if (action.equals("n-reg")){
			response.sendRedirect("newRegistration.jsp");
		}
		else if (action.equals("reg")){
			response.sendRedirect("Registrations.jsp");
		}
		else if (action.equals("att")){
			response.sendRedirect("attendance.jsp");
		}
		else if (action.equals("res")){
			response.sendRedirect("result.jsp");
		}
		else if (action.equals("av")){
			response.sendRedirect("Attendence_view.jsp");
		}
		else if (action.equals("rv")){
			response.sendRedirect("Result_view.jsp");
		}
		else if (action.equals("lo")){
			response.sendRedirect("../Homepage.jsp");
		}
		else{
			response.sendRedirect("adminportal.jsp");
		}
	 %>

</body>
</html>