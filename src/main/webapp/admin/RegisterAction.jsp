<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Status</title>
</head>
<body>
	<%! @SuppressWarnings("unchecked") %>
	<%
		HashMap<String,String> items =(HashMap<String, String>)session.getAttribute("person");
		String jntu = items.get("jntu");
		String fname = items.get("fname");
		String lname = items.get("lname");
		String gender = items.get("gender");
		String dob = items.get("dob");
		String phno = items.get("phno");
		String address1 = items.get("address1");
		String address2 = items.get("address2");
		String address3 = items.get("address3");
		String address4 = items.get("address4");
		String qualification = items.get("qualification");
		String branch = items.get("branch");
		String year = items.get("year");
		String graduation =items.get("graduation");
		long mb = Long.parseLong(phno);
		int g = Integer.parseInt(graduation);
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","root02");
			PreparedStatement pst = connect.prepareStatement("insert into personal_details values(?,?,?,?,?,?,?,?,?,?)");
			PreparedStatement pst1 = connect.prepareStatement("insert into student_address values(?,?,?,?,?)");
			pst.setString(1,jntu);
			pst.setString(2,fname);
			pst.setString(3,lname);
			pst.setString(4,gender);
			pst.setString(5,dob);
			pst.setString(6,branch);
			pst.setString(7,year);
			pst.setInt(8,g);
			pst.setString(9,qualification);
			pst.setLong(10,mb);
			pst1.setString(1,address1);
			pst1.setString(2,address2);
			pst1.setString(3,address3);
			pst1.setString(4,address4);
			pst1.setString(5,jntu);
			
			int i = pst.executeUpdate();
			i= i + pst1.executeUpdate();
			System.out.println(i+"row affected");
			connect.close();
		}
		catch(Exception e){
			response.sendRedirect("adminportal.jsp");
			System.out.println(e);
		}
		finally{
			session.removeAttribute("person");
			request.setAttribute("student_id", jntu);
			request.getRequestDispatcher("passwordentry.jsp").include(request,response);
		}
	%>
</body>
</html>