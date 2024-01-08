<%-- 
    Document   : about
    Created on : Sep 4, 2023, 2:49:59 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>about</title>
          <link rel="stylesheet" href="../CSS/styles.css" />
    </head>
    <body>
        <div class="container">
    <div class="logo">
        <img src="../pictures/logo.PNG" width="100px" alt="our logo">
         <li><a href="signUp.jsp" id="reg"><h2>Sign up</h2></a><a href="signIn.jsp" id="log"><h2>Log in</h2></a></li>
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
                                <li><a href="vendor.jsp">VENDORS</a></li>
                             <!--   <li><a href="owner.jsp">OWNER</a></li>-->
                             <li><a href="#" style="color:black" >ABOUT US</a></li>
                                <li><a href="contacts.jsp">CONTACT US</a></li>
                            </div>
                        </ul>
    </div>
    </div>
        <br> <br> <br> <br> <br> <br>
    <div class="whole" >
      <div class="founder">
        <p>
          <img
            src="../pictures/WhatsApp Image 2023-04-11 at 09.09.08.jpg"
            alt=""
          />
        </p>
        <p style="font-size: 23px">Eng.Einstein</p>
        <p style="font-size: 15px">
          C.E.O and Founder of <br><a style="color: chocolate;" href="../index.jsp"> The Liqour Store</a>
        </p>
      </div> 
      <div class="b_text" >
        <h2 class="titles" style="color:chocolate">Overview</h2>
        <p class="para">
          <a style="color:chocolate;" href="../index.jsp"> The Liqour Store</a> is a project designed to
          create an online presence for liquor stores worldwide. <br />
          It lets customers order liquor products online and have them shipped to
          their address of preference. <br />
          Our project falls under the category of e-commerce.<br />
          <br />
        </p>
        <h2 class="titles" style="color:chocolate">Our Goals</h2>
        <p class="para">
          1. The project should give an option for customers around the world to
          order liquor products. <br /> 
          2.The project should allow shop owners to manage their products and
          receive customer payments. <br />
        </p> <br>
        <h2 class="titles" style="color:chocolate">Mission</h2>
        <p class="para">
            Providing transparency and integrity to our stakeholders.<br>
            Maintaining a high standard of professionalism, fairness, and total customer contentment in all deals.<br>
            Delighting our clients through commitment and sincerity.<br> 
            Working towards keeping our environment clean and promoting responsible imbibing<br>
        </p> <br>
        <h2 class="titles" style="color:chocolate">Vision</h2>
        <p class="para">
          To be a leading player in the alcohol industry by providing high-quality- <br>products and services that exceed customer expectations.
        </p> <br>
        <br> <br> <br>
      </div>
    </div>
        <div class="footer">
        <br>
        <div class="foot">
            <div class="addresses">
                <h4 style="text-decoration: underline;padding-bottom: 1px;text-align: center">Address</h4>
                <p>Rwanda, Kigali;</p>
                <p>Gasabo, Gishushu;</p>
                <p>KG 217 Street.</p>
            </div>
            <div class="contacts">
                <h4 style="text-decoration: underline;padding-bottom: 1px;text-align: center">Contacts</h4>
                <p>Tel numbers: +250780146235</h5>
                <p style="padding-left: 116px">+250725689109</p>
                <p>Email: ishimweinstein@gmail.com</p>
                <p>LinkedIn: ishimwe7 </p>
            </div>
            <div class="qlinks">
                 <h4 style="text-decoration: underline;padding-bottom: 1px;text-align: center">Quick Links</h4>
                 <p> <a href="Links/about.jsp">About Us</a></h5> 
                 <p><a href="Links/registerVendor.jsp" target="_parent">Vendors registration</a></p>
                 <p><a href="Links/loginVendor.jsp" target="_parent">Vendors login</a> </p>
                 <p><a href="Links/signUp.jsp" target="_parent">Clients registration</a></p>
                 <p><a href="Links/signIn.jsp" target="_parent">Clients login</a></p> 
                 <p>Go Back <a style="color: chocolate;" href="../index.jsp">Home</a></p>
            </div>
        </div>
        <p style="padding-bottom: 5px">All rights reserved  &#169TheLiquorStore~2023</p>
    </div>
    </body>
</html>
