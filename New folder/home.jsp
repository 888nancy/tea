<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<p id="demo"></p>
<div id='time'></div>
<script>
var date = new Date();
var n = date.toDateString();
var time = date.toLocaleTimeString();
document.getElementById('time').innerHTML = n + ' ' + time;
</script>
<style>
body{background-image: url("pic/r6.jpg"); background-repeat: no-repeat;
background-size: cover;}
h1{
colowhite; font: 3em;
font-family: sans-serif;
}
/* Add a black background color to the top navigation bar */
.topnav {
overflow: hidden;
background-color:
#e9e9e9;
}
/* Style the links inside the navigation bar */
53
.topna{
float:left;
display:block;
color:black;text-align:center;
padding: 14px 16px;
textdecoration: none; font-size: 17px;
}
/* Change the color of links on hover */
.topnav a:hover {
backgroud-color:#ddd;
color: black;
}
/* Style the "active" element to highlight the current page */
.topnav a.active {
background-color: #2196F3;
color: white;
}
/* Style the search box inside the navigation bar */
.topnavinput[type=text]
float: right;padding: 6px; border: none;
margin-top: 8px;
margin-right: 16px;
font-size: 17px;
}
/* When the screen is less than 600px wide, stack the links and the search field vertically instead of
horizontally */
@media screen and (max-width: 600px) {
.topnav a, .topnav
input[type=text] {
float: none;
display: block;
text-align: left; width: 100%;
margin: 0; padding: 14px;
54
}
.topnav input[type=text] { border: 1px solid #ccc;
}
}
#x{
height:400px; width:1500px;
}
#t{
font-size:30px;
}
#aa{
height:100px; width:300px; font-size:1em;
background-color:buttonshadow; border-radius:25px;
margin-left:0px;
margin-bottom: 0px; line-height: 100px;
}
aa:hover{
background-color:red;
}
#b{
height:100px; width:320px; font-size:1em;
background-color:buttonshadow; margin-left:320px;
border-radius:25px; margin-top:-120px; line-height: 100px;
}
#c{
height:100px; width:320px; font-size:1em;
background-color:buttonshadow; border-radius:25px;
margin-left:650px;
margin-top:-120px;
line-height:100px;
}
#d{
height:100px; width:320px;
55
font-size:1em;
background-color:buttonshadow;
border-radius:25px;
margin-left:1000px;
margin-top: -120px;
line-height: 100px;
}
#bd{
height:200px; width:300px;
}
a:link {
background-color: transparent blink; color: black;
padding: 14px 20px;
text-align: center;
text-decoration: none;
display: inline-block;
text-decoration: none;
}
a:visited {
text-decoration: none;
color:purple;
}
a:hover {
text-decoration: none;
color:blue;
}
a:active {
text-decoration: none;
color:brown;
}
a:hover, a:active {
background-color: none;
56
}
</style>
</head>
<divclass="topnav">
<aclass="active"href="college.html">Home</a>
<ahref="gallery.jsp">Gallery</a>
<a href="feedback.jsp">Feedback</a>
</div>
<%
String un=(String)session.getAttribute("un"); out.println("<h1>Hello "+un+"<h1/>");%>
</table>
<%
Stringu=(String)session.getAttribute("un");
String pww=(String)session.getAttribute("pw");
Class.forName("oracle.jdbc.driver.OracleDriver");
"hr");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr
<div id="aa"><h2><a href="headlinefetch.jsp">TOP HEADLINES </a></div>
</body>
</html>