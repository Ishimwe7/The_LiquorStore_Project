<%-- 
    Document   : stockLevel
    Created on : Sep 11, 2023, 11:21:48 AM
    Author     : hp
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
             response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
             if(session.getAttribute("shop_nameSession")==null){
                 response.sendRedirect("loginVendor.jsp");
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
