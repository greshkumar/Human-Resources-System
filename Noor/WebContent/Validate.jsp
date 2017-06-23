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
<title>Insert title here</title>
</head>
<body>
<%
int userId = request.getParameter("userId")!=null?Integer.parseInt(request.getParameter("userId")):0;
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
PreparedStatement stmt = conn.prepareStatement("Select * from users Where userID=? AND Password=?");
stmt.setInt(1,userId);
stmt.setString(2,password);
ResultSet resultSet = stmt.executeQuery();
if(resultSet.next())
{
	response.sendRedirect("home.jsp");
}
else
{
	response.sendRedirect("login.jsp");
	
}
%>
</body>
</html>