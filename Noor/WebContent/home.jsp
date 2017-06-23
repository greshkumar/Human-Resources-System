<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
</style>
</head>
<body BACKGROUND="1245.JPG">

<h1 align='center'>Welcome to the Human Managemet System</h1>

<ul>
  <li><a class="active" href=" ">Home</a></li>
  <li><a href="addteacher.jsp">Add Employee</a></li>
  <li><a href="view.jsp">View Record</a></li>
  <li><a href="Update.jsp">Update Record</a></li>
  <li><a href="Search.jsp">Search</a></li>
  <li><a href="Delete.jsp">Delete</a></li>
</ul>

</body>
</html>