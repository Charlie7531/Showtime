
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



	                  <%	String tid=request.getParameter("tid");
                                String tname=request.getParameter("tname");
                                String screen=request.getParameter("screen");    
                                String time=request.getParameter("time");    
                                String sname=request.getParameter("sname");    
					  %>
<%
try{

	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/showtime","root","");  
Statement st=con.createStatement();

int q= st.executeUpdate("insert into shows_tab values('"+tid+"','"+tname+"','"+screen+"','"+time+"','"+sname+"')");


if(q>0)
{
response.sendRedirect("screendata2.jsp?1="+tid+"&&2="+tname+"&&3="+screen);
}

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
