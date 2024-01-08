package com.nyanja.liquorstore;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
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

@WebServlet("/registerCustomer")
public class RegisterCustomer extends HttpServlet {

  String url = "jdbc:mysql://localhost:3306/liquorstore";
  String username = "root";
  String password = "";
  Validation val = new Validation();

  @Override
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    PrintWriter out = res.getWriter();
    String gender = req.getParameter("gender");
    String f_name = req.getParameter("f_name");
    String s_name = req.getParameter("s_name");
    String phone_number = req.getParameter("phone_number");
    String email = req.getParameter("email");
    String address = req.getParameter("address");
    String pass = req.getParameter("password");
    String pass_confirm = req.getParameter("pass_confirm");
    String country = req.getParameter("country");
    String city = req.getParameter("city");

    Customer cust = new Customer();
    cust.setGender(gender);
    cust.setF_ame(f_name);
    cust.setS_name(s_name);
    cust.setPhone_numer(phone_number);
    cust.setEmail(email);
    cust.setAddress(address);
    cust.setPassword(pass);
    cust.setCountry(country);
    cust.setCity(city);
    try {
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
      } catch (ClassNotFoundException ex) {
        Logger.getLogger(VendorServlet.class.getName()).log(Level.SEVERE, null, ex);
      }
      Connection con = DriverManager.getConnection(url, username, password);
      // PreparedStatement ps = con.prepareStatement("select email from customers;");
      if (pass_confirm.equals(password)) {
        if (val.isValueExists(email)) {
          req.setAttribute("error", "User Already Exists!!!");
          RequestDispatcher dispatch = req.getRequestDispatcher("/Links/signUp.jsp");
          dispatch.forward(req, res);
        } else {
          PreparedStatement pstmt = con.prepareStatement(
              "insert into customers(gender,f_name,s_name,phone_number,email,address,password,country,city) values(?,?,?,?,?,?,?,?,?)");
          pstmt.setString(1, cust.getGender());
          pstmt.setString(2, cust.getF_name());
          pstmt.setString(3, cust.getS_name());
          pstmt.setString(4, cust.getPhone_number());
          pstmt.setString(5, cust.getEmail());
          pstmt.setString(6, cust.getAddress());
          pstmt.setString(7, cust.getPassword());
          pstmt.setString(8, cust.getCountry());
          pstmt.setString(9, cust.getCity());
          int row = pstmt.executeUpdate();
          if (row > 0) {
            req.setAttribute("success", "Registered Successfully!!  You can now login.");
            RequestDispatcher dispatch = req.getRequestDispatcher("/Links/signUp.jsp");
            dispatch.forward(req, res);
          } else {
            req.setAttribute("error", "An expected error occurred!!!");
            RequestDispatcher dispatch = req.getRequestDispatcher("/Links/signUp.jsp");
            dispatch.forward(req, res);
          }
          con.close();
          pstmt.close();
        }
      } else {
        req.setAttribute("error", "Password Mismatches !!!");
        RequestDispatcher dispatch = req.getRequestDispatcher("/Links/signUp.jsp");
        dispatch.forward(req, res);
      }
    } catch (SQLException ex) {
      out.println("You have an error in Sql Syntax");
      // Logger.getLogger(VendorServlet.class.getName()).log(Level.SEVERE, null, ex);
    }
  }
}
