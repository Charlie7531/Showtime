<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.*" %>
<%@ page  import="java.sql.*" import="java.util.Random" import="databaseconnection.*"    %>


	                  <%	
String email = request.getParameter("email");

String sql="insert into subscribe_tab values('"+session.getAttribute("uname")+"','"+email+"' )";

					  
					  
					  
					  
					  
					  
					  
					  
					  %>


<%
	try{

		Class.forName("com.mysql.jdbc.Driver");  
		Connection con1=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/showtime","root","");  
	Statement st1 = con1.createStatement();
	System.out.println(sql);
	st1.executeUpdate(sql);
		response.sendRedirect("subscribe.jsp?id=succ");

}


catch(Exception e1)
{
		response.sendRedirect("subscribe.jsp?id=duplicate");

}

	%>