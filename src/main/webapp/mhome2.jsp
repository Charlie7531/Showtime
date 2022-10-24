

<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" import="javax.swing.JOptionPane"%>
<%@ include file="mheader.jsp"%>



<%
String[] det=Details.main((String)session.getAttribute("remail"));

String lat=det[8];
String lon=det[9];
System.out.println(lat+"---"+lon);

String id=det[0];

%>
<input type="hidden" name="id" value="<%=id%>"> 
<input type="hidden" name="lat" value="<%=lat%>"> 
<input type="hidden" name="lon"   value="<%=lon%>"> 






											 




</head>
<body>
<br>

<h4>
<br><br>
<table width="100%"><tr><td>
<table width="50%">
<tr><td align="left"><h3>Name:&nbsp;&nbsp;<td><h3><%=det[1]%>
<tr><td align="left"><h3>Category:&nbsp;&nbsp;<td><h3><%=det[7]%>
<tr><td align="left"><h3>City:&nbsp;&nbsp;<td><h3><%=det[10]%>
<tr><td align="left"><h3>Zip:&nbsp;&nbsp;<td><h3><%=det[11]%>


<!-- -->

 </table>
<td>
<table align="right" width="50%">
<tr><td align="left"><h3>Manager:&nbsp;&nbsp;<td><h3><%=det[2]%>
<tr><td align="left"><h3>Email:&nbsp;&nbsp;<td><h3><%=det[3]%>
<tr><td align="left"><h3>Phone:&nbsp;&nbsp;<td><h3><%=det[4]%>
<tr><td align="left"><h3>Mobile:&nbsp;&nbsp;<td><h3><%=det[5]%>


<!-- -->

 </table>
</table>

<br><br>
<h2>
About: <%=det[6]%>

<br>User's Rating: <%=det[12]%>/10
</h2>
<br><br>


<br>
 

</form>
<%@ include file="footer.jsp"%>

