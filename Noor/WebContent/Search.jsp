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
<body BACKGROUND="8529.jpg">
<form method="post" action="Validate.jsp">
<div style="padding: 100px 0 0 250px;">
</div>
</form>
<form action="" method="POST">
<table align="center" cellpadding = "10">
<tr> <td> <h1>Search</h1> </td> </tr>
<tr>
<td>Search</td>
<td><input type="text" name="search" maxlength="100" /></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Search by Employee ID" name="submit">
<input type="submit" value="Search by Department ID" name="submit">
<input type="button" onclick="back()" value="Back">
</td>
</tr>
</table>
</form>
<% 
	String x=request.getParameter("submit");
	if(x != null){
		if(!request.getParameter("search").equals("")){
			if(x.equals("Search by Employee ID")){
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
				PreparedStatement stmt = conn.prepareStatement("Select * from employees e left outer join department d on e.DepartmentID = d.DepartmentID where e.EmployeeID = ?");
				stmt.setInt(1, Integer.parseInt(request.getParameter("search")));
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
				<%
			}if(x.equals("Search by Department ID")){
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
				PreparedStatement stmt = conn.prepareStatement("Select * from employees e left outer join department d on e.DepartmentID = d.DepartmentID where e.DepartmentID = ?");
				stmt.setInt(1, Integer.parseInt(request.getParameter("search")));
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
				<%	
			}
		}
	}
%>
</body>
</html>