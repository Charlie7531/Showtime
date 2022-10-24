
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



	                  <%	String tid=request.getParameter("tid");
                                String tname=request.getParameter("tname");
                                String screen=request.getParameter("screen");    
                                String cat=request.getParameter("cat");    
                                String cost=request.getParameter("cost");    
								int tot=Integer.parseInt(request.getParameter("tot"));
								int avail=Math.round(tot/2);

					  %>
<%
try{

	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/showtime","root","");  
Statement st=con.createStatement();

int q= st.executeUpdate("insert into avail_tab values('"+tid+"','"+tname+"','"+screen+"','"+cat+"','"+cost+"','"+tot+"','"+avail+"')");


if(q>0)
{
response.sendRedirect("screenseats2.jsp?1="+tid+"&&2="+tname+"&&3="+screen);
}

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
