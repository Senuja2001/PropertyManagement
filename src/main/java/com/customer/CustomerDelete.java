package com.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerDelete")
public class CustomerDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CustomerDelete() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean isTrue = CustomerDBUtil.deleteCustomer(id);
        response.setContentType("text/html");

        if (isTrue) {
            response.getWriter().write("<script>alert('Operation was successful!'); window.location='AllCustomers.jsp';</script>");
        } else {
            response.getWriter().write("<script>alert('Operation was unsuccessful!'); window.location='AllCustomers.jsp';</script>");
        }
    }
}