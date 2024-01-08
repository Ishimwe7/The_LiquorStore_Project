package com.nyanja.liquorstore;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@WebServlet("/customer")
public class CustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Customer> customers;
        customers = new ArrayList<>();

        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquorstore", "root", "");

            // Execute the query
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT f_name,country,city,address,email FROM customers");

            // Process the results
            while (rs.next()) {
                String name = rs.getString("f_name");
                String country = rs.getString("country");
                String city = rs.getString("city");
                String address = rs.getString("address");
                String email = rs.getString("email");

                // Customer customer = new Customer(name, country, city, address, email);
                // customers.add(customer);
                // System.out.println("Name:"+rs.getString(1));
            }
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        /*
         * finally {
         * // Close the resources
         * if (rs != null) {
         * try {
         * rs.close();
         * } catch (SQLException e) {
         * }
         * }
         * if (stmt != null) {
         * try {
         * stmt.close();
         * } catch (SQLException e) {
         * }
         * }
         * if (conn != null) {
         * try {
         * conn.close();
         * } catch (SQLException e) {
         * }
         * }
         * }
         */

        // Forward the results to the JSP
        request.setAttribute("customers", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Links/customers.jsp");
        dispatcher.forward(request, response);
    }
}