z<%-- 
    Document   : vendorpanel
    Created on : Aug 31, 2023, 1:01:27 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Vendor's Panel</title>
    <style>
      body {
        font-family: Arial, Helvetica, sans-serif;
      }
      .header {
        background-color: grey;
        color: white;
        padding: 15px;
        text-align: center;
        font-size: x-large;
        height: 100px;
        border-radius: 18px;
      }
      .menu ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
      }
      .menu  li {
        padding: 12px;
        margin-bottom: 7px;
        background-color: #f1f1f1;
        color: black;
        font-weight: bold;
        font-size: larger;
        border-radius: 12px;
      }
      .menu li:hover {
        background-color: grey;
        color: white;
      }
      a{
          text-decoration: none;
              color: black
      }
      .main {
        margin-left: 25%;
        padding: 15px 10px;
      }
      button{
          color: black;
         background-color: chocolate;
          border-radius: 7px;
      }
    </style>
    </head>
    <body>
        <% 
             response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
             if(session.getAttribute("shop_nameSession")==null){
                 response.sendRedirect("loginVendor.jsp");
            }
        %>
        <div>
            <h2 style="text-align: right; color: chocolate">${shop_nameSession}</h2>
        </div>
        <div class="header">
      <h1>Vendor's Panel</h1>
    </div>
    <div class="main">
      <h2>Welcome to the Liquor-Store  Vendor's Panel</h2>
    </div>
    <div class="row">
      <div class="menu">
        <ul>
            <li><a href="Links/Store.jsp">My Store</a></li>
            <li><a href="Links/addProduct.jsp" >Add product in the Store</a></li>
            <li><a href="Links/stockLevel.jsp">Stock level</a></li>
            <li><a href="Links/salesReport.jsp">Sales Report</a></li>
            <li><a href="Links/customers.jsp">Customers List</a></li>
        </ul>
      </div>
    </div>
        <div class="logout">
            <form action="<%= request.getContextPath() %>/Links/logout.jsp">
                <button type="submit" name="logout">Logout</button>
            </form>
        </div>
    </body>
</html>
