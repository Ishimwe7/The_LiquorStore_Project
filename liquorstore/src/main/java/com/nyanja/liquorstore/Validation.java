
package com.nyanja.liquorstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.nyanja.liquorstore.Validation;

public class Validation {
      String url = "jdbc:mysql://localhost:3306/liquorstore";
        String username = "root";
        String password= "";
    
    
    public  boolean isValueExists(String value) {
    boolean status = false;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try  {
        Connection con = DriverManager.getConnection(url,username, password);  
        pst = con.prepareStatement("SELECT * FROM customers WHERE email = ?");
        pst.setString(1, value);
        rs = pst.executeQuery();
        status = rs.next();
        con.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return status;
}
    
        public  boolean valueExists(String value) {
    boolean status = false;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try  {
        Connection con = DriverManager.getConnection(url,username, password);  
        pst = con.prepareStatement("SELECT * FROM vendors WHERE shop_name = ?");
        pst.setString(1, value);
        rs = pst.executeQuery();
        status = rs.next();
        con.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return status;
}
}
