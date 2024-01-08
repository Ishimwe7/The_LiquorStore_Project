
package com.nyanja.liquorstore;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Test extends HttpServlet {
    @Override
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
        res.getWriter().println("Hello Einstein");
        System.out.println("Hello Einstein");
    }
}
