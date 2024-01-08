package com.nyanja.liquorstore;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/register")
@MultipartConfig

public class VendorServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String shop_name = req.getParameter("shop_name");
        String shop_owner = req.getParameter("shop_owner");
        String country = req.getParameter("country");
        String city = req.getParameter("city");
        String address = req.getParameter("address");
        String email = req.getParameter("email");
        String pass = req.getParameter("password");
        String pass_confirm = req.getParameter("pass_confirm");

        Vendor vendor = new Vendor();
        Validation val = new Validation();

        vendor.setShop_name(shop_name);
        vendor.setShop_owner(shop_owner);
        vendor.setCountry(country);
        vendor.setCity(city);
        vendor.setAddress(address);
        vendor.setEmail(email);
        vendor.setPassword(pass);

        String url = "jdbc:mysql://localhost:3306/liquorstore";
        String username = "root";
        String password = "";
        try {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(VendorServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Connection con = DriverManager.getConnection(url, username, password);
           // PreparedStatement ps = con.prepareStatement("select email from customers;");
            if (pass_confirm.equals(pass)) {
                if (val.valueExists(shop_name)) {
                    req.setAttribute("error", "Shop Already Registered!!!");
                    RequestDispatcher dispatch = req.getRequestDispatcher("/Links/registerVendor.jsp");
                    dispatch.forward(req, res);
                } else {
                    PreparedStatement pstmt = con.prepareStatement(
                            "insert into vendors(shop_name,shop_owner,country,city,address,email,password) values(?,?,?,?,?,?,?)");
                    pstmt.setString(1, vendor.getShop_name());
                    pstmt.setString(2, vendor.getShop_owner());
                    pstmt.setString(3, vendor.getCountry());
                    pstmt.setString(4, vendor.getCity());
                    pstmt.setString(5, vendor.getAddress());
                    pstmt.setString(6, vendor.getEmail());
                    pstmt.setString(7, vendor.getPassword());
                    int row = pstmt.executeUpdate();
                    if (row > 0) {
                        req.setAttribute("success", "Registerd successfully. You can now login. !!!");
                        RequestDispatcher dispatch = req.getRequestDispatcher("/Links/registerVendor.jsp");
                        dispatch.forward(req, res);
                    } else {
                        req.setAttribute("error", "An expected error occurred !!!");
                        RequestDispatcher dispatch = req.getRequestDispatcher("/Links/registerVendor.jsp");
                        dispatch.forward(req, res);
                    }
                    con.close();
                    pstmt.close();
                }
            } else {
                req.setAttribute("error", "Password Mismatches !!!");
                RequestDispatcher dispatch = req.getRequestDispatcher("/Links/registerVendor.jsp");
                dispatch.forward(req, res);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VendorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
