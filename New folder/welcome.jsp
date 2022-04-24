<%-- 
    Document   : welcome
    Created on : Jul 14, 2017, 10:59:26 AM
    Author     : nancy
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Hello World!</h1>
       
        
        
        <%
                String u=(String)session.getAttribute("un");
                String pww=(String)session.getAttribute("pw");
             
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
            PreparedStatement ps = con.prepareStatement("Select *from picform where user_id='"+u+"' and password='"+pww+"'");
         
            ResultSet rs = ps.executeQuery();
             out.println("<h1>welcome</h1>"+u);
           
            while ( rs.next())  
                {
                 // out.println("<h4>" + rs.getString("title") + "</h4>");
                  out.println("<img width='150' height='150' src=displayphoto?id=" +  rs.getString("user_id") + "></img><p/>");
                }
                   
               
            
               
            %> 
            
           
                <body>
            <p><a href="details">details</a></p>
           