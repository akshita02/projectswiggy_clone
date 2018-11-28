<%-- 
    Document   : select
    Created on : Nov 22, 2018, 11:05:23 AM
    Author     : Spectre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String n=request.getParameter("xyzz");
            out.println("<script>setTimeout(function(){window.location='"+n+"'},1*1000)</script>");
         %>
    </body>
</html>
