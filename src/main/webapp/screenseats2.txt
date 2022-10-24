
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="CT.*"  import="javax.swing.JOptionPane"%>


<%@ include file="mheader.jsp"%>

	                  <%	String tid=request.getParameter("1");
                                String tname=request.getParameter("2");
                                String screen=request.getParameter("3");    
					  %>

<br><br><br>
<table width="80%" cellspacing="20">
<tr bgcolor="#75c7e6"><td><h2>Theater Id<td><h2>Theater Name<td><h2>Screen<td><h2>Show Time<td><h2>Show Name

<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from shows_tab where tid_ct='"+tid+"' and  tname_ct='"+tname+"' and  screen_ct='"+screen+"' ");
Statement st2=con.createStatement();
ResultSet rs2=null;
while(rs.next()){
%>
<tr  bgcolor="#ffff99"><td ><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString(3)%><td><%=rs.getString(4)%><td><%=rs.getString(5)%>

<%

}
%>
<form method="post" action="screendata3.jsp">
	<tr  bgcolor="#ffff99"><td><h4><input type="text" name="tid"  readonly value="<%=tid%>"><td><h4><input type="text"  readonly value="<%=tname%>" name="tname"><td><h4><input type="text" name="screen"  readonly value="<%=screen%>"><td><h4><input type="time" required name="time" placeholder="Enter Show time"><td><h4><input type="text" required name="sname" placeholder="Enter Show name">
	<tr><td><td><td><td><td align="right"><h2><input type="submit" value="Add">
</form><%

}
catch(Exception e){
	System.out.println("Exception Occured............"+e);
}

%>
</table>
<br><br><br><br><br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp"%>