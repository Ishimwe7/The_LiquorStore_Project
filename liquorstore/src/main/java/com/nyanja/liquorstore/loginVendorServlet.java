package com.nyanja.liquorstore;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/login")
public class loginVendorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(loginVendorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            PrintWriter out = response.getWriter();
            HttpSession session =request.getSession();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquorstore","root", "");
            String s_name = request.getParameter("shop_name");
            String s_owner = request.getParameter("shop_owner");
            String password = request.getParameter("password");
            PreparedStatement ps = con.prepareStatement("select shop_name from vendors where shop_name=? and shop_owner=? and password=?");
            ps.setString(1, s_name);
            ps.setString(2, s_owner);
            ps.setString(3, password);
            ResultSet rs= ps.executeQuery();
            if(rs.next()){
                out.println("Welcome again");
                session.setAttribute("shop_nameSession", s_name);
                 RequestDispatcher dispatch = request.getRequestDispatcher("/Links/vendorpanel.jsp");
                 dispatch.forward(request, response);
            }
            else{
                request.setAttribute("error", "Invalid Login! Try again");
                RequestDispatcher dispatch = request.getRequestDispatcher("/Links/loginVendor.jsp");
               dispatch.forward(request, response);
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(loginVendorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
}