package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetAllCustomer")
public class GetAllCustomer extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public GetAllCustomer() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            List<Customer> customers = CustomerDBUtil.getAllCustomer();
            request.setAttribute("customers", customers); 
            RequestDispatcher dispatcher = request.getRequestDispatcher("AllCustomer.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An Error occurred : " + e.getMessage());
        }

    }

}
