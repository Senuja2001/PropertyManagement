<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %>
<%@ page import="com.customer.Customer" %>
<%@ page import="com.customer.CustomerDBUtil" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1 {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
            margin: 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 10px 0 rgba(0,0,0,0.1);
            border-radius: 5px;
            overflow: hidden;
            margin: 20px auto;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        form {
            margin: 0;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 8px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .add-button {
            display: block;
            width: 150px;
            margin: 20px auto;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px 0;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .add-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>All Customers</h1>

    <a href="Create.jsp" class="add-button">Add Customer</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Phone</th>
            <th>Location</th>
            <th>Actions</th>
            <th></th>
        </tr>

        <%
            List<Customer> customers = CustomerDBUtil.getAllCustomer();
            if(customers != null && !customers.isEmpty()){
                for(Customer customer: customers){  
        %>

        <tr>
            <td><%= customer.getId() %></td>
            <td><%= customer.getName() %></td>
            <td><%= customer.getEmail() %></td>
            <td><%= customer.getGender() %></td>
            <td><%= customer.getPhone() %></td>
            <td><%= customer.getLocation() %></td>

            <td>
                <form action="update.jsp" method="get"> 
                    <input type="hidden" name="id" value="<%=customer.getId() %>">
                    <input type="submit" value="Update">
                </form>
            </td>
            <td>
                <form action="CustomerDelete" method="post"> 
                    <input type="hidden" name="id" value="<%=customer.getId() %>">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>

        <%
                }
            }
        %>
    </table> 
</body>
</html>
