package com.nyanja.liquorstore;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/addProduct")
@MultipartConfig

public class NewProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        RequestDispatcher dispatch = req.getRequestDispatcher("Links/addProduct.jsp");
        dispatch.forward(req, res);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // loginVendorServlet ven = new loginVendorServlet();
        String product_name = req.getParameter("product_name");
        String price = req.getParameter("price");
        String category = req.getParameter("category");
        String quantity = req.getParameter("quantity");
        String desc = req.getParameter("description");
        Part image = req.getPart("image");
        String image_name = image.getSubmittedFileName();
        String uploadPath = "D:/TUTORIALS/JAVA_RELATED/Projects/LiquorStore/src/main/webapp/pictures/" + image_name;

        try {
            FileOutputStream fos = new FileOutputStream(uploadPath);
            InputStream ins = image.getInputStream();
            byte[] data = new byte[ins.available()];
            ins.read(data);
            fos.write(data);
            fos.close();
        } catch (IOException e) {
            System.out.println(e);
        }
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
            PreparedStatement pstmt = con.prepareStatement(
                    "insert into products( name,description,price,category,quantity,image_name,vendor) values(?,?,?,?,?,?,?)");
            pstmt.setString(1, product_name);
            pstmt.setString(2, desc);
            pstmt.setString(3, price);
            pstmt.setString(4, category);
            pstmt.setString(5, quantity);
            pstmt.setString(6, image_name);
            // pstmt.setString(7, );
            // pstmt.setString(2, vendor);
            int row = pstmt.executeUpdate();
            if (row > 0) {
                req.setAttribute("success", "New product added successfully!!!");
                RequestDispatcher dispatch = req
                        .getRequestDispatcher("<%= request.getContextPath() %>/Links/addProduct.jsp");
                dispatch.forward(req, res);
            } else {
                res.getWriter().println("An expected error occurred");
            }
            con.close();
            pstmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(VendorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
