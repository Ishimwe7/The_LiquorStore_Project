<%-- 
    Document   : loginVendor
    Created on : Sep 2, 2023, 1:35:55 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login Page</title>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/styles.css" />
    </head>
    <body class="body">
        <div class="form">
            <h1 style="color: chocolate"> Login Here</h1>
      <br />
      <form action="<%= request.getContextPath() %>/CustomerLogin" method="POST">
        <label for="email">Email:</label>
        <input
          style="font-size: larger"
          type="text"
          autofocus
          placeholder="Enter email here"
          name="email"
        /><br />
        <br />
        <label for="password">Password:</label>
        <input
          style="font-size: larger"
          type="password"
          maxlength="10"
          placeholder="Enter your password"
          name="password"
        /><h3 style="color: red;text-align: center">${error}</h3><br />
        <p class="buttons">
          <button style="font-size: x-large" type="submit" name="CustomerLogin">Login</button>
          <button style="font-size: x-large" type="reset">Reset</button>
        </p>
      </form>
      <p style="font-size: x-large">
        You don't have an account?
        <a href="<%= request.getContextPath() %>/Links/signUp.jsp"> Register Here</a>
      </p>
      <h3 style="font-size: x-large" class="home">
        Go Back <a href="<%= request.getContextPath() %>/index.jsp">Home</a>
      </h3>
    </div>
    </body>
</html>