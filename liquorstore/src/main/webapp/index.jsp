<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>the liquor store</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/styles.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
                
<div class="container">
    <div class="logo">
        <img src="pictures/logo.PNG"  alt="logo">
        <li><a href="Links/signUp.jsp" id="reg"><h2>Sign up</h2></a><a href="Links/signIn.jsp" id="log"><h2>Log in</h2></a></li>
    </div> 
    <div class="menu">
        
                        <ul>
                                <li><a class="un_drop" href="#" style="color:black">HOME</a></li>                             
                                <li> <a id="products" >OUR PRODUCTS</a>
                                    <ul class="drop_list" id="drop_list">
                                            <li><a href="Links/water.jsp">Water</a></li>
                                            <li><a href="Links/milk.jsp">Milk</a></li>
                                            <li><a href="Links/carbonatedDrinks.jsp">Carbonated Drinks</a></li>
                                            <li><a href="Links/juices.jsp">Juice and plenty drinks</a></li>
                                            <li><a href="Links/beers.jsp">Beers</a></li>
                                            <li><a href="Links/ciders.jsp">Ciders</a></li>
                                            <li><a href="Links/wines.jsp">Wines</a></li>
                                            <li><a href="Links/spirits.jsp">Spirits</a></li>
                                    </ul>
                                </li>                       
                                <li><a href="Links/vendor.jsp">VENDORS</a></li>
                             <!--   <li><a href="Links/owner.jsp">OWNER</a></li>-->
                                <li><a href="Links/about.jsp">ABOUT US</a></li>
                                <li><a href="Links/contacts.jsp">CONTACT US</a></li>
                                <!-- <li><a href=""><h2>Login</h2></a></li>t --> 
                            
                        </ul>
    </div>
    </div>
    <div class="contain">
    <div class="card">
        <img class="image" src="pictures/L3.jpeg" alt="Photo">
        <div class="title">Liqours</div>
        <div class="description">This is a description of the photo.</div>
        <div class="price">$9.99</div>
        <a class="order-link" href="#">Add Cart</a>
    </div>
    <div class="card">
        <img class="image" src="pictures/water.jpeg" alt="Photo">
        <div class="title">Water</div>
        <div class="description">This is a description of the photo.</div>
        <div class="price">$9.99</div>
        <a class="order-link" href="#">Add Cart</a>
    </div>
    <div class="card">
        <img class="image" src="pictures/W1.jpeg" alt="Photo">
        <div class="title">Whisky</div>
        <div class="description">This is a description of the photo.</div>
        <div class="price">$9.99</div>
        <a class="order-link" href="#">Add Cart</a>
    </div>
    <div class="card">
        <img class="image" src="pictures/G1.jpeg" alt="Photo">
        <div class="title">Gin</div>
        <div class="description">This is a description of the photo.</div>
        <div class="price">$9.99</div>
        <a class="order-link" href="#">Add Cart</a>
    </div>
    <div class="card">
        <img class="image" src="pictures/milk.jpeg" alt="Photo">
        <div class="title">Milk</div>
        <div class="description">This is a description of the photo.</div>
        <div class="price">$9.99</div>
        <a class="order-link" href="#">Add Cart</a>
    </div>
    <div class="card">
        <img class="image" src="pictures/S2.jpeg" alt="Photo">
        <div class="title">Spirits</div>
        <div class="description">This is a description of the photo.</div>
        <div class="price">$9.99</div>
        <a class="order-link" href="#">Add Cart</a>
    </div>
    <div class="card">
        <img class="image" src="pictures/F2.jpeg" alt="Photo">
        <div class="title">Soft Drinks</div>
        <div class="description">This is a description of the photo.</div>
        <div class="price">$9.99</div>
        <a class="order-link" href="#">Add Cart</a>
    </div>
    <div class="card">
        <img class="image" src="pictures/Liquors.jpeg" alt="Photo">
        <div class="title">Ciders</div>
        <div class="description">This is a description of the photo.</div>
        <div class="price">$9.99</div>
        <a class="order-link" href="#">Add Cart</a>
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
            </div>
        </div>
        <p style="padding-bottom: 5px">All rights reserved  &#169TheLiquorStore~2023</p>
    </div>
</body>

</html>
