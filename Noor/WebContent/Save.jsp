<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3311/awt","root","root");
PreparedStatement stmt = conn.prepareStatement("insert into users (UserID,Password,Email) values (?,?,?)");
stmt.setInt(1,  Integer.parseInt(request.getParameter("userid")));
stmt.setString(2, request.getParameter("password"));
stmt.setString(3, request.getParameter("email"));
stmt.executeUpdate();
response.sendRedirect("login.jsp");
%>