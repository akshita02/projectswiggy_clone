<%-- 
    Document   : login
    Created on : Nov 14, 2018, 5:08:28 PM
    Author     : Spectre
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        PrintWriter pw = response.getWriter();
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost", "root", "");
        Statement db = con.createStatement();
        db.execute("use test");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");
        ResultSet rs = db.executeQuery("SELECT password from signup where Mobile_no="+mobile);
        while (rs.next()) {
            if (rs.getString(1).equals(password)) {
                pw.println("Logged in !");
                response.sendRedirect("2nd.jsp");
            }
            else
                response.sendRedirect("1st.jsp");
        }
        con.close();
    } catch (ClassNotFoundException e) {
        System.out.println(e);
    }
    
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <background-color="black">
        <h1>The entered details are incorrect.</h1>
        <%
            
            out.println("<script>setTimeout(1*1000)</script>");
         %>
    </body>
</html>
