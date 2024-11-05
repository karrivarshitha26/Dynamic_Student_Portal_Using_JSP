<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Registration Form</title>
        <link rel="stylesheet" type="text/css" href="styles/regstyle.css">
    </head>
    <body>
        <div class="container"> 
            <h1>Registration Form</h1>
            <form action="register_validation.jsp">
                <div>
                    <p>Personal Details</p> 
                    <input type="text" placeholder="JNTU Number" name="jntu" required>
                    <input type="text" name="fname" placeholder="First Name" required>
                    <input type="text" placeholder="Last Name" name="lname" required>
                    <input list="genders" placeholder="Gender" name="gender" required>
                        <datalist id="genders">
                            <option value="Male"></option>
                            <option value="Female"></option>
                        </datalist>
                    <input type="date" placeholder="Date Of Birth" name="dob" required>
                    <input type="number" placeholder="Mobile Number" name="phno" required>
                </div>
                <div>
                    <p>Address Details</p>
                    <input type="text" placeholder="Locality" name="address1" required>
                    <input type="text" placeholder="district" name="address2" required>
                    <input type="text" placeholder="state" name="address3" required>
                    <input type="number" placeholder="Pin Code" name="address4" required>
                </div>
                <div>
                    <p>Academics</p>
                    <input list="qualifications" placeholder="Highest Qualification" name="qualification" required>
                        <datalist id="qualifications">
                            <option value="Intermediate"></option>
                            <option value="Under Graduate"></option>
                            <option value="Other"></option>
                        </datalist>
                    <input list="branches" placeholder="branch" name="branch" required>
                        <datalist id="branches">
                            <option value="CSE"></option>
                            <option value="AI-DS"></option>
                            <option value="AI-ML"></option>
                            <option value="I.T"></option>
                        </datalist>
                    <input list="year" placeholder="Year" name="year" required>
                    	<datalist id="year">
                            <option value="1st year"></option>
                            <option value="2nd year"></option>
                            <option value="3rd year"></option>
                            <option value="4th year"></option>
                        </datalist>
                    <input type="number" placeholder="graduation year" name="graduation" required>
                </div>
                <div class="child1">
                    <p><input type="checkbox" placeholder="iagree" required>I Agree To the Terms And Conditions</p>
                    <p><input type="submit" id="button" value="Submit"></p>
                </div>
            </form>
        </div>
    </body>
</html>