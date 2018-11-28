<%-- 
    Document   : db
    Created on : Nov 27, 2018, 11:08:38 AM
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
        String price= request.getParameter("sd");
        
        ResultSet rs = db.executeQuery("SELECT price from menu where price="+price);
        while (rs.next()) {
           
            db.execute(update menu set="price" where price="?");
                rs.getString("price");
                
            }
           
    }
        
    catch (ClassNotFoundException e) {
        System.out.println(e);
    }
    
 %>
<!DOCTYPE html>