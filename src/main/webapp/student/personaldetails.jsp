<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!Doctype html>
<html lang="en">
    <head>
        <title>Personal Details</title>
        <link rel="stylesheet" type="text/css" href="stylecss/personaldetails.css">
    </head>
<body>
    	
    	<% 
    	String student_id =(String)session.getAttribute("student_id");
    	String name = (String)session.getAttribute("name");
    	String sql = "select * from personal_details where jntu="+"'"+student_id+"'";
    	String sql1 = "select * from student_address where jntu_no="+"'"+student_id+"'";
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection connect = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","root02");
			Statement s = connect.createStatement();
			ResultSet rs =s.executeQuery(sql);
			if(rs.next()){
			String gender=rs.getString(4);
			String dob = rs.getString(5);
			String branch =rs.getString(6);
			String year = rs.getString(7);
			String graduation =rs.getString(8);
			String qualification =rs.getString(9);
			Long mb = rs.getLong(10);
			rs.close();
			s.close();
			Statement st = connect.createStatement();
			ResultSet rs1 =st.executeQuery(sql1);
			if(rs1.next()){
				String locality =rs1.getString(1);
				String district = rs1.getString(2);
				String state = rs1.getString(3);
				int pin_code =rs1.getInt(4);
				rs1.close();
				st.close();
			
		%>
        <div class="container">
            <div class="child1">
                <img src="pictures/profile.png" alt="profile of student" width="300" height="300">
                <p>${name}</p>
                <p>${student_id}</p>
                <form action="backtoportal.jsp">
                	<button type="submit">Go Back</button>
                </form>
            </div>
            <div class="child2">
                <div class="cat">
                    <h3>Personal Details</h3>
                    <p>Name: <%=name %></p>
                    <p>Gender: <%=gender %></p>
                    <p>Date of Birth: <%=dob %></p>
                    <p>Mobile: <%=mb %></p>
                </div>
                <div class="cat">
                    <h3>Academic Details:</h3>
                    <p>Branch: <%=branch %></p>
                    <p>Year: <%=year %></p>
                    <p>Graduation Year: <%=graduation%></p>
                    <p>Qualification: <%=qualification %></p>
                </div>
                <div class="cat">
                    <h3>Address:</h3>
                    <p>Locality: <%=locality%></p>
                    <p>District: <%=district%></p>
                    <p>State: <%=state%></p>
                    <p>Pin-code: <%=pin_code%></p>
                </div>
            </div>
          </div>
         <%}}
		connect.close();
		}
		catch (Exception e){
			System.out.println(e);
			response.sendRedirect("studentportal.jsp");
		} %>
    </body>
</html>