<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%
String a = request.getParameter("h1");
String b = request.getParameter("h2");
String c = request.getParameter("h3");
String d = request.getParameter("h4");
String e = request.getParameter("h5");
try{
Class.forName("oracle.jdbc.OracleDriver");
Connectioncon=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE
","hr","hr");
out.println("connected....");
Statement s=con.createStatement();
String q="insert into adminheadline(headline_1,headline_2,headline_3,headline_4,headline_5)
values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')";
s.execute(q);
//out.println("<br><h1><font color=yellow><center>data have been update in
database</center></font></h1></br>");
con.close();
}
catch(Exception ex)
{
outprintln("could not connected...");
}
%>
<html>
<head>
<script type="text/javaScript"> function valid()
</script>
<style>
58
body{background-image: url("img/16.jpg"); background-size: cover;
}
input[type=button], input[type=submit], input[type=reset] {
background-color: red;
border: none; color: white;
padding: 16px 32px;
text-decoration: none;
margin: 4px 2px; cursor: pointer;
}
h1{
font-size:3em; font-color:aqua;
text-shadow:4px 2px blue;
}
h1:hover{
color:red;
}
input, textarea {
background-color :pink;
}
</style>
</head>
<body>
<h1 align="center">ADMIN HEADLINE FORM</h1><hr>
</div>
<div id="form"><form action="news.jsp" method="post" align="centre" >
<div id="a">
<table border="1" width="600" height="220" align="center" background="img/35.jpg" >
<tr>
<th><h2>headline_1</h2></th>
<td><textarearows="5" cols="55" name="h1"></textarea></td>
59
</tr>
<tr>
<th><h2>headline_2</h2></th>
<td><textarearows="5" cols="55" name="h2"></textarea></td>
</tr>
<tr><th><h2>headline_3</h2></th>
<td><textarearows="5" cols="55" name="h3"></textarea></td>
</tr>
<tr><th><h2>headline_4</h2></th>
<td><textarearows="5" cols="55" name="h4"></textarea></td>
</tr>
<tr>
<th><h2>headline_5</h2></th>
<td><textarearows="5" cols="55" name="h5"></textarea></td>
</tr>
<tr>
<th>
<h2>
<input type="submit" value="submit" onclick="return valid();"></h2></th><th></th></tr>
</table>
</div>
</form>
</div>
</body>
</html>
