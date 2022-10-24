

<%@include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@page import="Mail.*"%>
<%@page import="CT.*"%>
	                  <%	
					  String tid=request.getParameter("tid");
                                String tname=request.getParameter("tname");
                                String mname=request.getParameter("mname");
                                String screen=request.getParameter("screen");    
                                String image=request.getParameter("image");    
       String start=request.getParameter("start");    
       String end=request.getParameter("end");    

%>

<%! String[] shows; %>
<% 
  shows = request.getParameterValues("show");
int q=0;
try{

	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/showtime","root","");  
Statement st=con.createStatement();
Statement st1=con.createStatement();
String[] tmp=new String[2];

for(String s:shows){
System.out.println(s);
tmp=s.split("@");
 
 q= st.executeUpdate("insert into movies_tab values('"+tid+"','"+tname+"','"+screen+"','"+mname+"','"+tmp[0]+"','"+tmp[1]+"','"+start+"','"+end+"','"+image+"')");

String sss1 = "select * from subscribe_tab ";

	ResultSet rs1=st1.executeQuery(sss1);
	while(rs1.next())
	{



String sub="ShowTime Updates";
String body="<h3><font color=#ff6633>Hello "+request.getParameter("name_ct")+"<br><br> <h3>Greetings from ShowTime </h3></font>";

body=body+mname+" release on "+start+" at "+ tname+" "+screen;


body=body+"<b><font color=#ff6633>Good Day..";

/* mail.mailsend(request.getParameter("email_ct"),sub,body);
 */	}

}
//movieadd
response.sendRedirect("movieadd.jsp?id=succ");

}
catch(Exception e)
{
e.printStackTrace();
	}


%>





<%@ include file="footer.jsp"%>