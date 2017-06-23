<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
PreparedStatement stmt = conn.prepareStatement("update employees set FirstName = ? ,LastName = ? ,DepartmentID =?,Gender=?,SalaryPackage=?,EmailAddress=?,ContactNumber=?,Address=?,Designation=?,WorkingSince=? where EmployeeID = ?");
stmt.setInt(11,  Integer.parseInt(request.getParameter("EmployeeID")));
stmt.setString(1, request.getParameter("FirstName"));
stmt.setString(2, request.getParameter("LastName"));
stmt.setString(3, request.getParameter("DepartmentID"));
stmt.setString(4, request.getParameter("Gender"));
stmt.setString(5, request.getParameter("SalaryPackage"));
stmt.setString(6, request.getParameter("EmailAddress"));
stmt.setString(7, request.getParameter("ContactNumber"));
stmt.setString(8, request.getParameter("Address"));
stmt.setString(9, request.getParameter("Designation"));
stmt.setString(10, request.getParameter("WorkingSince"));
stmt.executeUpdate();
response.sendRedirect("view.jsp");
%>