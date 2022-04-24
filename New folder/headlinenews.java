<%--
Document : headlinefetch
Created on : Apr 16, 2018, 4:38:28 AM Author: nancy
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>
<%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");Connection 
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
//out.println("Connected,......"); Statement s=con.createStatement(); String q="select * from
adminheadline";
ResultSet rs=s.executeQuery(q); if(rs!=null)
{
while(rs.next())
{
%>
<html>
<head></head>
<body bgcolor=" gray" >
<h1 align="center">Top Latest Timeline<h1/><hr><h5><a href="welcome.jsp">Go to home
page</a></h5><hr>
<table border="5" color="red" height="100%" width="100%">
<tr>
<td><marquee><%=rs.getString("headline_1")%></marquee></td>
</tr>
61
<tr>
<td><marquee><%=rs.getString("headline_2")%></marquee></td>
</tr>
<tr>
<td><marquee><%=rs.getString("headline_3")%></marquee></td>
</tr>
<tr>
<td><marquee><%=rs.getString("headline_4")%></marquee></td>
</tr>
<tr>
<td><marquee><%=rs.getString("headline_5")%></marquee></td>
</tr>
<%
}
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</table>
</body>
</html>