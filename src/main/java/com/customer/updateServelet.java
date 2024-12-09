package com.customer;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateServelet")
public class updateServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String location = request.getParameter("location");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean isTrue = CustomerDBUtil.updateCustomer(id, name, email, gender, phone, location, username, password);
        response.setContentType("text/html");

        if (isTrue) {
            response.getWriter().write("<script>alert('Operation was successful!'); window.location='AllCustomers.jsp';</script>");
        } else {
            response.getWriter().write("<script>alert('Operation was unsuccessful!'); window.location='AddCustomer.jsp';</script>");
        }
    }
}
