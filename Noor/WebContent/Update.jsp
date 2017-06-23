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
<title>Update Employee</title>
</head>
<body BACKGROUND="862.jpg">
<div style="padding: 100px 0 0 250px;">
</div>
<form action="" method="post">
<table align="center" cellpadding = "10">
<tr> <td> <h1>Enter Employee ID to Update</h1> </td> </tr>
<tr>
<td>Employee ID : <input type="text" name="EmployeeID"/></td>
</tr>
<tr>
<td align="center">
<input type="submit" value="search">
<td>
</td>
</table>
</form>
<%
if(request.getParameter("EmployeeID")!=null){
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
	PreparedStatement stmt = conn.prepareStatement("Select * from employees e left outer join department d on e.DepartmentID = d.DepartmentID where EmployeeID = ?");
	stmt.setInt(1, Integer.parseInt(request.getParameter("EmployeeID")));
	ResultSet resultSet = stmt.executeQuery();
	if(resultSet.next()){
%>
<form action="updemp.jsp" method="POST">
<table align="center" cellpadding = "10">
<tr> <td> <h1>Update Employee Information</h1> </td> </tr>
<tr>
<td>Employee ID</td>
<td><input type="text" name="EmployeeID" maxlength="100" readonly  value="<%=resultSet.getInt("EmployeeID")%>"/></td>
</tr>
<tr>
<td>First Name</td>
<td><input type="text" name="FirstName" maxlength="100" value="<%=resultSet.getString("FirstName")%>"/></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="LastName" maxlength="100" value="<%=resultSet.getString("LastName")%>"/></td>
</tr>
<tr>
<td>Department Name</td>
<td><select name="DepartmentID">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn1=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
PreparedStatement stmt1 = conn1.prepareStatement("Select * from department");
ResultSet resultSet1 = stmt1.executeQuery();
%>
<% 
while(resultSet1.next()){
	if(resultSet1.getString("DepartmentID").equals(resultSet.getString("DepartmentID")))
	{
		%>
		<option selected="selected" value="<%=resultSet1.getInt("DepartmentID")%>"><%=resultSet1.getString("DepartmentName")%></option>		
		<%
	}else{
%>
<option value="<%=resultSet1.getInt("DepartmentID")%>"><%=resultSet1.getString("DepartmentName")%></option>
<%
}
}
%>
</select></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="text" name="Gender" maxlength="100" value="<%=resultSet.getString("Gender")%>"/></td>
</tr>
<tr>
<td>Salary</td>
<td><input type="text" name="SalaryPackage" maxlength="100" value="<%=resultSet.getString("SalaryPackage")%>"/></td>
</tr>

<tr>
<td>Email Address</td>
<td><input type="text" name="EmailAddress" maxlength="100" value="<%=resultSet.getString("EmailAddress")%>"/></td>
</tr>
<tr>
<td>Contact Number</td>
<td><input type="text" name="ContactNumber" maxlength="100" value="<%=resultSet.getString("ContactNumber")%>"/></td>
</tr>
<tr>
<td>Address</td>
<td><input type="text" name="Address" maxlength="100" value="<%=resultSet.getString("Address")%>"/></td>
</tr>
<tr>
<td>Designation</td>
<td><input type="text" name="Designation" maxlength="100" value="<%=resultSet.getString("Designation")%>" /></td>
</tr>
<tr>
<td>Date of Join</td>
<td><input type="date" name="WorkingSince" value="<%=resultSet.getDate("WorkingSince")%>" /></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="button" onclick="back()" value="Back">
</td>
</tr>
</table>
</form>
<%
	}
}
%>
</body>
</html>