<%-- 
    Document   : owner
    Created on : Sep 11, 2023, 11:24:23 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
       <link rel="stylesheet" href="../CSS/styles.css" />
    </head>
    <body>
         <div class="form">
             <h1 style="color: black">WELCOME AGAIN!</h1>
      <h2 style="color: chocolate">Please Login Here</h2>
      <br />
      <form action="" method="post">
        <label for="email">Email:</label>
        <input
          style="font-size: larger"
          type="email"
          placeholder="Enter email here"
          name="email"
        /><br />
        <br />
        <label for="password">Password:</label>
        <input
          style="font-size: larger"
          type="text"
          placeholder="Please enter password"
          name="password"
        /><br />
        <br />
        <div class="buttons">
          <p class="buttons">
          <button style="font-size: x-large" type="submit" name="login">Login</button>
          <button style="font-size: x-large" type="reset">Reset</button>
        </p>
         <br />
        </div>
      </form>
      <br>
      <h3 class="home" style="text-align: center">Go to <a href="../index.html">Home</a></h3>
    </div>
    </body>
</html>
