<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrations</title>
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
    	h1{
    		text-align:center;
    		width:20%;
    		margin:0 auto;
    	}
    	table{
    		margin:0 auto;
    		width:50%;
    		padding:10px;
    		border-collapse:collapse;
    		text-align:center;
    	}
    	td:hover{
    		background-color:yellow;
    	}
    	th:hover{
    		background-color:black;
    		color:white;
    	}
    </style>
</head>
<body>
	<div class="container">
	<h1>Registrations</h1>
    <table border="1">
        <tr>
            <th>Student ID</th>
            <th>Name</th>
            <th>Year</th>
        </tr>
        <% 
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "System", "root02");
                String selectQuery = "SELECT jntu,year,f_name,l_name FROM personal_details";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(selectQuery);

                while (rs.next()) {
                    String studentId = rs.getString(1);
                    String year = rs.getString(2);
                    String name = rs.getString(3)+" "+rs.getString(4);

                    %>
                    <tr>
                        <td><%= studentId %></td>
                        <td><%= name %></td>
                        <td><%= year %></td>
                    </tr>
                    <%
                }

                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
        </table>
        <form action="back.jsp"><input type="submit" id="back" value="<<Back"></form>
        </div>
</body>
</html>