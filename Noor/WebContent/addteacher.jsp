<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function back() {
		window.location.href = "home.jsp";
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<body BACKGROUND="5412.jpg">
<form method="post" action="Validate.jsp">
<div style="padding: 100px 0 0 250px;">
</div>
</form>
<form action="insemp.jsp" method="POST">
<table align="center" cellpadding = "10">
<tr> <td> <h1>Register New Employee</h1> </td> </tr>
<tr>
<td>Employee ID</td>
<td><input type="text" name="EmployeeID" maxlength="100" /></td>
</tr>
<tr>
<td>First Name</td>
<td><input type="text" name="FirstName" maxlength="100" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="LastName" maxlength="100" /></td>
</tr>
<tr>
<td>Department Name</td>
<td><select name="DepartmentID">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
PreparedStatement stmt = conn.prepareStatement("Select * from department");
ResultSet resultSet = stmt.executeQuery();
%>
<% 
while(resultSet.next()){
%>
<option value="<%=resultSet.getInt("DepartmentID")%>"><%=resultSet.getString("DepartmentName")%></option>
<%
}
%>
</select></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="text" name="Gender" maxlength="100" /></td>
</tr>
<tr>
<td>Salary</td>
<td><input type="text" name="SalaryPackage" maxlength="100" /></td>
</tr>

<tr>
<td>Email Address</td>
<td><input type="text" name="EmailAddress" maxlength="100" /></td>
</tr>
<tr>
<td>Contact Number</td>
<td><input type="text" name="ContactNumber" maxlength="100" /></td>
</tr>
<tr>
<td>Address</td>
<td><input type="text" name="Address" maxlength="100" /></td>
</tr>
<tr>
<td>Designation</td>
<td><input type="text" name="Designation" maxlength="100" /></td>
</tr>
<tr>
<td>Date of Join</td>
<td><input type="date" name="WorkingSince" /></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="button" onclick="back()" value="Back">
</td>
</tr>
</table>
</form>
</body>
</html>