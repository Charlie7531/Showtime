
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,intr;
	int i=0;
%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/showtime","root","");  

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from register_tab");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");


tele=request.getParameter("tele");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");
intr=request.getParameter("int");
//System.out.println(pwd);
%>
<%
try{

	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/showtime","root","");  
Statement st=con.createStatement();
un="user"+i;

int q= st.executeUpdate("insert into register_tab values('"+i+"','"+name+"','"+lname+"','"+addr+"','"+tele+"','"+email+"', '"+pwd+"')");


if(q>0)
{
response.sendRedirect("register.jsp?id="+email+"");


}
else
	response.sendRedirect("signup.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
