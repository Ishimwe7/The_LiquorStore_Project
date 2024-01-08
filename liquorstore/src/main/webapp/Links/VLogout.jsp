<%-- 
    Document   : VLogout
    Created on : Sep 23, 2023, 8:28:24 AM
    Author     : hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <% 
             response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
             if(session.getAttribute("emailSession")==null){
                 response.sendRedirect("signIn.jsp");
            }
            session.removeAttribute("emailSession");
            session.invalidate();
            response.sendRedirect("signIn.jsp");
        %>
    </body>
</html>
