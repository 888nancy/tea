//pic loginserv.java

/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
*
* @author nancy
*/
public class piclogserv extends HttpServlet
{

protected void processRequest(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
try (PrintWriter out = response.getWriter()) {

String user_id=request.getParameter("n");
String password=request.getParameter("p");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=

DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");

Statement st=con.createStatement();

String q="Select *from picform where user_id='"+user_id+"' and password='"+password+"'";
ResultSet rs = st.executeQuery(q);
if(rs.next())
{
HttpSession ses=request.getSession(false);
ses.setAttribute("un",user_id);
ses.setAttribute("pw",password);

RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
rd.forward(request, response);
}

else
{
out.print("ERROR");
RequestDispatcher rd=request.getRequestDispatcher("piclogin.jsp");
rd.include(request, response);
}
}
catch(Exception e)
{

}}

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to
edit the code.">
/**
* Handles the HTTP <code>GET</code> method.
*
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
processRequest(request, response);
}

/**
* Handles the HTTP <code>POST</code> method.
*
* @param request servlet request
* @param response servlet response
* @throws ServletException if a servlet-specific error occurs
* @throws IOException if an I/O error occurs
*/
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
processRequest(request, response);
}

/**

* Returns a short description of the servlet.
*
* @return a String containing servlet description
*/
@Override
public String getServletInfo() {
return "Short description";
}// </editor-fold>

}