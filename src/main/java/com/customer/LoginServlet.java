package com.customer;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");

        try {
            ArrayList<Customer> cusDetails = CustomerDBUtil.validate(username, password);
            response.setContentType("text/html");

            if (!cusDetails.isEmpty()) {
                // Since login is successful, forward to the page displaying all customer details
                RequestDispatcher dis = request.getRequestDispatcher("AllCustomers.jsp");
                dis.forward(request, response);
            } else {
                // If login is unsuccessful, show an alert and redirect back to the login page
                response.getWriter().write("<script>alert('Login unsuccessful! Please try again.'); window.location='login.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    
}