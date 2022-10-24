
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="uheader.jsp"%>

	                  <%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("s1"))
                                                       {
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("s2"))
                                                       {
                                                       }

			    %>


</script>

<h2>Welcome <%=session.getAttribute("uname")%>...</h1>

	<center><img src="images/Welcome-Banner_v2.png" width="1000" height="174" border="0" alt=""></center>



<%@ include file="footer.jsp"%>