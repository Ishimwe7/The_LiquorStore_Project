package com.nyanja.liquorstore;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/CustomerLogin")
public class CustomerLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(loginVendorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            HttpSession session = request.getSession();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquorstore", "root", "");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            PreparedStatement ps = con
                    .prepareStatement("select f_name,s_name from customers where email=?  and password=?");
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String f_name = rs.getString("f_name");
                String s_name = rs.getString("s_name");
                request.setAttribute(f_name, f_name);
                request.setAttribute(s_name, s_name);
                session.setAttribute("emailSession", email);
                RequestDispatcher dispatch = request.getRequestDispatcher("/Links/index.jsp");
                dispatch.forward(request, response);
            } else {
                request.setAttribute("error", "Invalid Login! Try again");
                RequestDispatcher dispatch = request.getRequestDispatcher("/Links/signIn.jsp");
                dispatch.forward(request, response);
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(loginVendorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}