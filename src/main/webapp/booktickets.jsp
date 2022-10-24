
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="uheader.jsp"%>

<form method="post" action="search1.jsp">
	<center><font size="+3" color="#2db6e3">Movie Search</font><br><br>
    <table>
<tr>
	<td><input type="text" name="search" class="form-control"  placeholder="Enter Movie"  size="40"required />
</td>
</tr>
</table>
</form>



<%@ include file="footer.jsp"%>