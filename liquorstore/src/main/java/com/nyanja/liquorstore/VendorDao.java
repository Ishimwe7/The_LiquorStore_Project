
package com.nyanja.liquorstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class VendorDao {
    public void register() throws ClassNotFoundException {

        Vendor vendor = new Vendor();
        String url = "jdbc:mysql://localhost:3306/liqourstore";
        String username = "root";
        String password = "";
        String shop_name = vendor.getShop_name();
        String shop_owner = vendor.getShop_owner();
        String country = vendor.getCountry();
        String city = vendor.getCity();
        String address = vendor.getAddress();
        String pass = vendor.getPassword();
        String query = "insert into vendors(shop_name,shop_owner,country,city,address,password) values(shop_owner ,shop_owner,country,city,address,pass)";

        Class.forName("com.cj.mysql.jdbc.Driver");
        try (Connection con = DriverManager.getConnection(url, username, password)) {
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, shop_name);
            pstmt.setString(2, shop_owner);
            pstmt.setString(3, country);
            pstmt.setString(4, city);
            pstmt.setString(5, address);
            pstmt.setString(6, pass);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new IllegalStateException("Cannot connect to the database!", e);
        }
    }
}
