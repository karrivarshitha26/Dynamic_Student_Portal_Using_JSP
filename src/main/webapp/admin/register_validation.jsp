<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Draft Page</title>
<style>
	.container{
    margin:20px auto;
    padding: 10px;
    background-color: aliceblue;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
    border-radius: 20px;
    width:50%;
	}
	table{
		width:100%;
		padding:20px;
	}
	th{
	    text-align: left;
	    padding-bottom: 5px;
	}
	body{
	    background-color: lightskyblue;
	}
	td{
	    padding:5px 0px 5px 0px;
	}
	table tr #msg{
		color:red;
		margin-top:20px;
	}
	input[type="submit"]{
		border:0px;
	    width: 100px;
	    padding:10px;
	    background-color: rgb(0, 102, 255);
	    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
    	border-radius: 10px;
    	color:white;
	}
	input[type="submit"]:hover{
	    background-color: rgba(17, 216, 216, 0.725);
	    transition: all 0.5s ease 0s;
	}
</style>
</head>
<body>
	<%
		HashMap<String,String> items =new HashMap<>();
		String jntu = request.getParameter("jntu");
		items.put("jntu",jntu);
		String fname = request.getParameter("fname");
		items.put("fname",fname);
		String lname = request.getParameter("lname");
		items.put("lname",lname);
		String gender = request.getParameter("gender");
		items.put("gender",gender);
		String dob = request.getParameter("dob");
		items.put("dob",dob);
		String phno = request.getParameter("phno");
		items.put("phno",phno);
		String address1 = request.getParameter("address1");
		items.put("address1",address1);
		String address2 = request.getParameter("address2");
		items.put("address2",address2);
		String address3 = request.getParameter("address3");
		items.put("address3",address3);
		String address4 = request.getParameter("address4");
		items.put("address4",address4);
		String qualification = request.getParameter("qualification");
		items.put("qualification",qualification);
		String branch = request.getParameter("branch");
		items.put("branch",branch);
		String year = request.getParameter("year");
		items.put("year",year);
		String graduation =request.getParameter("graduation");
		items.put("graduation",graduation);
		request.getSession();
		session.setAttribute("person",items);
		
	%>
	<form class="container" action="RegisterAction.jsp">
		<table>
			<tr>
				<th>Headers</th><th>Details</th>
			</tr>
			<tr><td>JNTU</td><td><%=jntu%></td></tr>
			<tr><td>First Name</td><td><%=fname%></td></tr>
			<tr><td>Last Name</td><td><%=lname %></td></tr>
			<tr><td>Gender</td><td><%=gender%></td></tr>
			<tr><td>Date Of Birth</td><td><%=dob %></td></tr>
			<tr><td>Mobile Number</td><td><%=phno %></td></tr>
			<tr><td>Locality</td><td><%=address1 %></td></tr>
			<tr><td>District</td><td><%=address2 %></td></tr>
			<tr><td>State</td><td><%=address3 %></td></tr>
			<tr><td>Pin-code</td><td><%=address4 %></td></tr>
			<tr><td>Qualification</td><td><%=qualification %></td></tr>
			<tr><td>Branch</td><td><%=branch %></td></tr>
			<tr><td>Year</td><td><%=year %></td></tr>
			<tr><td>Graduation year</td><td><%=graduation %></td></tr>
			<tr><td id="msg">Check before submitting <a href="registration.jsp"> Edit?</a></td><td><input type="submit" value="Next"></td></tr>
		</table>
	</form>

</body>
</html>