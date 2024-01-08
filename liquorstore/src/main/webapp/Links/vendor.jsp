<%-- 
    Document   : vendor
    Created on : Aug 31, 2023, 2:12:53 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vendor</title>
        <link rel="stylesheet" href="../CSS/styles.css" />
    </head>
    <body>
     <div class="container">
    <div class="logo">
        <img src="../pictures/logo.PNG" width="100px" alt="">
    </div>
    <div class="menu">
                        <ul>
                                <li><a class="un_drop" href="../index.jsp">HOME</a></li>
                                <div class="drop" >
                                <li> <a id="products" >OUR PRODUCTS</a>
                                    <ul id="drop_list">
                                            <li><a href="#">Water</a></li>
                                            <li><a href="#">Milk</a></li>
                                            <li><a href="#">Carbonated Drinks</a></li>
                                            <li><a href="#">Juice and plent drinks</a></li>
                                            <li><a href="#">Beers</a></li>
                                            <li><a href="#">Ciders</a></li>
                                            <li><a href="#">Wines</a></li>
                                            <li><a href="#">Spirits</a></li>
                                    </ul>
                                </li>
                            </div>
                            <!--<a href="/Links/clients.html">CLIENTS</a> -->
                            <div class="un_drop">
                                <li><a href="vendor.jsp" style="color: black" >VENDORS</a></li>
                              <!--  <li><a href="owner.jsp">OWNER</a></li> -->
                                <li><a href="about.jsp">ABOUT US</a></li>
                                <li><a href="contacts.jsp">CONTACT US</a></li>
                            </div>
                        </ul>
    </div>
    </div>
            <br><!-- comment -->
            <br><!-- comment -->
    </div>
      <div class="body">
          <br>
              <br>
              <br> <br> <br> <br>
            <p>
        Are you new here? Please click
        <a href="registerVendor.jsp" target="_parent">here</a>
        to register
            </p>
            <br />
            <br>
            <br><!-- comment -->
            <p>
        Already have an Account?
        <a href="loginVendor.jsp" target="_parent">Login here</a>
            </p>
            <br >
            <br >
            <br>
            <h3 class="home">Go Back <a href="../index.html"> Home</a></h3>
            <style>
        p {
          font-size:xx-large ;
          text-align: center;
          font-weight:bolder
        }
        h3{
            text-align: center;
        }
        a{
            color: chocolate
        }
        a:hover{
            color: darkgoldenrod
        }
            </style>
      </div>
    </body>
</html>
