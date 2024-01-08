<%-- 
    Document   : logout
    Created on : Sep 16, 2023, 2:17:10 AM
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
             if(session.getAttribute("shop_nameSession")==null){
                 response.sendRedirect("loginVendor.jsp");
            }
            session.removeAttribute("shop_nameSession");
            session.invalidate();
            response.sendRedirect("loginVendor.jsp");
        %>
    </body>
</html>
