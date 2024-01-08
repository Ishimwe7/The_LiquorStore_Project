<%-- 
    Document   : registerVendor
    Created on : Aug 31, 2023, 12:58:57 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Vendor Registration</title>
         <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/styles.css" />
    </head>
    <body>
        <div class="form">
            <h1 style="color: chocolate" > Register here</h1>
      <form action="<%= request.getContextPath() %>/register" method="POST" enctype="multipart/form-data">
        <div>
          <label for="shop_name">Shop name:</label>
          <input
            style="font-size: large"
            type="text"
            autofocus
            placeholder="Enter Shop name"
            name="shop_name"
            required
          />
        </div>
        <br />
        <div>
          <label for="shop_owner">Shop Owner:</label>
          <input
            style="font-size: large"
            type="text"
            placeholder="Enter Shop Owner's names"
            name="shop_owner"
            required
          />
        </div>
        <br />
        <div>
          <label for="country">Country:</label>
          <select style="font-size: large" name="country" id="country">
            <optgroup label="Africa">
              <option selected>Rwanda</option>
              <option>Uganda</option>
              <option>Kenya</option>
              <option>Tanzania</option>
              <option>Burundi</option>
              <option>DR Congo</option>
              <option>Congo</option>
              <option >Sudan</option>
            </optgroup>
            <optgroup label="Others">
              <option>United States</option>
              <option>United Kingdom</option>
              <option>Italy</option>
              <option>Australia</option>
              <option>New Zealand</option>
              <option>Japan</option>
              <option>China</option>
              <option> India</option>
            </optgroup>
          </select>
        </div>
        <br />
        <div>
          <label for="city">City:</label>
          <input
            style="font-size: large"
            type="text"
            placeholder="Enter your Residental City"
            name="city"
            required
          />
        </div>
        <br />
        <div>
          <label for="address">Address:</label>
          <input
            style="font-size: large"
            type="text"
            placeholder="Enter your Address"
            name="address"
            required
          />
        </div>
        <br />
               <div>
          <label for="email">Email:</label>
          <input
            style="font-size: large"
            type="text"
            placeholder="Enter communication email"
            name="email"
            required
          />
        </div>
        <br />
        <div>
          <label for="password">Password:</label>
          <input
            style="font-size: large"
            type="password"
            minlength="8"
            maxlength="10"
            placeholder="Please don't exceed 10 characters"
            name="password"
            required
          />
        </div>
        <br />
        <div>
          <label for="pass_confirm">Re-enter password:</label>
          <input
            style="font-size: large"
            type="password"
            minlength="8"
            maxlength="10"
            placeholder="Confirm your password"
            name="pass_confirm"
            required
          /><h3 style="color: red;text-align: center">${error}</h3> <h3 style="color: green;text-align: center">${success}</h3><br />
        </div>
        <p class="buttons">
          <div>
            <button style="font-size: x-large" name="register" type="submit">Register</button>
            <button style="font-size: x-large" type="reset">Reset</button>
          </div>
        </p>
      </form>
      <p style="font-size: x-large">
        Already have an Account?
        <a href="<%= request.getContextPath() %>/Links/loginVendor.jsp"> Login Here</a>
      </p>
      <h3 style="font-size: x-large;" class="home">
        Go Back <a href="<%= request.getContextPath() %>/index.jsp">Home</a>
      </h3>
    </div>
    </body>
</html>
