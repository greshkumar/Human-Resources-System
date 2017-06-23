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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Records</title>
</head>
<body BACKGROUND="2578.jpg">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
PreparedStatement stmt = conn.prepareStatement("Select * from employees e left outer join department d on e.DepartmentID = d.DepartmentID");
ResultSet resultSet = stmt.executeQuery();
%>
<table border="1">
<tr>
<th>Employee ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Department Name</th>
<th>Gender</th>
<th>Salary</th>
<th>Email</th>
<th>Contact</th>
<th>Address</th>
<th>Designation</th>
<th>Joining Date</th>
</tr>
<% 
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("EmployeeID")%></td>
<td><%=resultSet.getString("FirstName")%></td>
<td><%=resultSet.getString("LastName")%></td>
<td><%=resultSet.getString("DepartmentName")%></td>
<td><%=resultSet.getString("Gender")%></td>
<td><%=resultSet.getString("SalaryPackage")%></td>
<td><%=resultSet.getString("EmailAddress")%></td>
<td><%=resultSet.getString("ContactNumber")%></td>
<td><%=resultSet.getString("Address")%></td>
<td><%=resultSet.getString("Designation")%></td>
<td><%=resultSet.getString("WorkingSince")%></td>
</tr>
<%
}
%>
</table>
<form action="home.jsp">
<input type="submit" value="Back">
</form>
</body>
</html>