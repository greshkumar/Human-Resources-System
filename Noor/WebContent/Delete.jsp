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
<title>Delete Record</title>
</head>
<body BACKGROUND="842.jpg">
<form method="post" action="Validate.jsp">
<div style="padding: 100px 0 0 250px;">
</div>
</form>
<form action="delemp.jsp" method="POST">
<table align="center" cellpadding = "10">
<tr> <td> <h1>Delete Record</h1> </td> </tr>
<tr>
<td>Delete By Employee Id: </td>
<td><input type="text" name="empid" maxlength="100" /></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Delete">
<input type="button" onclick="back()" value="Back">
</td>
</tr>
</table>
</form>
</body>
</html>