<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@page import="Customer" %>
<%@ page import="com.nyanja.liquorstore.CustomerServlet"  %>
<%@ page import="com.nyanja.liquorstore.Customer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers</title>
</head>
<body>
      <% 
             response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
             if(session.getAttribute("shop_nameSession")==null){
                 response.sendRedirect("loginVendor.jsp");
            }
        %>
<h1>List of All Customers</h1>
<table>
  <tr>
    <th>Name</th>
    <th>Country</th>
    <th>City</th>
    <th>Address</th>
    <th>Email</th>
  </tr>
  <%--<% List<Customer> customers = (List<Customer>) request.getAttribute("customers"); %> --%>
  <% for (Customer customer : (ArrayList<Customer>)request.getAttribute("customers")) { %>
  <tr>
    <td><%= customer.getName() %></td>
    <td><%= customer.getCountry() %></td>
    <td><%= customer.getCity() %></td>
    <td><%= customer.getAddress() %></td>
    <td><%= customer.getEmail() %></td>
  </tr>
  <% } %>
</table>
</body>
</html>