<%-- 
    Document   : addProduct
    Created on : Sep 6, 2023, 11:13:58 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add product</title>
        <link rel="stylesheet" href="../CSS/styles.css" />
    </head>
    <body>
          <% 
             if(session.getAttribute("shop_nameSession")==null){
                 response.sendRedirect("loginVendor.jsp");
            }
        %>
        <div class="form">
            <h1 style="color: chocolate; text-decoration: underline" >Add a new product here</h1>
          <form action="<%= request.getContextPath() %>/addProduct" method="POST" enctype="multipart/form-data">
              <br>
              <br>
        <div>
          <label for="product_name">Product name:</label>
          <input
            style="font-size: large"
            type="text"
            maxlength='30'
            autofocus
            placeholder="Enter product name"
            name="product_name"
            required
          />
        </div>
        <br />
        <div>
          <label for="price">Price:</label>
          <input
            style="font-size: large"
            type="number"
            placeholder="Price in US Dollars"
            name="price"
            required
          />
        </div>
        <br />
        <div>
          <label for="category">Category:</label>
          <select style="font-size: large" name="category" id="category">
            <optgroup label="Non-Alcoholic Drinks">
              <option selected>Water</option>
              <option>Milk</option>
              <option>Carbonated Drinks</option>
              <option>Juices and Plenty Drinks</option>
            </optgroup>
            <optgroup label="Alcoholic Drink">
              <option>Liquors</option>
              <option>Wines</option>
              <option>Spirits</option>
              <option>Beers</option>
            </optgroup>
          </select>
        </div>
        <br />
        <div>
          <label for="image">Image:</label>
          <input type="file" 
            style="font-size: large"
            type="file"
            accept="image/*"
            name="image"
            required
          />
        </div>
        <br>
          <div>
          <label for="quantity">Quantity:</label>
          <input
            style="font-size: large"
            type="number"
            placeholder="Qnty in number"
            name="quantity"
            required
          />
        </div>
        <br>
        <div>
          <label for="description">Description:</label>
            <textarea style="font-size: large; border-radius: 5px;text-align: left" name="description" rows="3" cols="30">
              Enter product's short description here  </textarea>
        </div>
        <h3 style="color: red;text-align: center">${success}</h3>
        <br />
        <p class="buttons">
        <div style="text-align: center; padding: 3px ">
               <button style="font-size: x-large; padding-left: 5px " type="reset">Reset</button>
            <button style="font-size: x-large" name="addProduct" type="submit">Add product</button>
          </div>
        </p>
      </form>
       </div>
    </body>
</html>
