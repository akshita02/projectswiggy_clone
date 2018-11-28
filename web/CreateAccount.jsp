<%-- 
    Document   : login
    Created on : Nov 14, 2018, 5:08:28 PM
    Author     : Spectre
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost", "root", "");
        Statement db = con.createStatement();
        db.execute("use test");
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        PreparedStatement ps = con.prepareStatement("INSERT INTO signup values (?, ?, ?, ?);");
        ps.setString(1, mobile);
        ps.setString(2, name);
        ps.setString(3, email);
        ps.setString(4, password);
        ps.execute();
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
        <h1>SignIn Successful!</h1>
        <p>Login to your account to check</p>
        <%
            response.sendRedirect("1st.jsp");
            out.println("<script>setTimeout(function(){window.location='"+n+"'},1*1000)</script>");
         %>
    </body>
</html>
