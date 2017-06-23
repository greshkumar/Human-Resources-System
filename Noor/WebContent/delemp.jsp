<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
PreparedStatement stmt = conn.prepareStatement("delete from  employees where EmployeeID = ?");
stmt.setInt(1,  Integer.parseInt(request.getParameter("empid")));
stmt.executeUpdate();
response.sendRedirect("view.jsp");
%>