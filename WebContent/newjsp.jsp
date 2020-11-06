<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Order Confirmation</h3>
        <p> Thank you for your order of <%= request.getParameter("number") %> widgets!,<%= request.getParameter("name") %> <p>
        <% 
            String sum = request.getParameter("number");
            int num_1 = Integer.parseInt(sum);
        %>
        <p>At $9.95, your bill will be 
        <% 
            double price = 9.95;
            double value = price * num_1;
        %>
         <%= value %>
        </p>
        <p>You will shortly receive an email confirmation at <%= request.getParameter("email") %></p>
    </body>
</html>