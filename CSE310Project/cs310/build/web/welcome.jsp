<%-- 
    Document   : welcome.jsp
    Created on : Sep 10, 2020, 5:14:03 PM
    Author     : Asus
--%>
<%@page import="server.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
 Welcome, <%= user.getName() %></h1>
<h3>
Your Account ID: <%= user.getId() %> </h3>
<h3>
Your Email: <%= user.getEmail() %> </h3>
<h3>
Your Password: <%= user.getPassword() %></h3>
<button><a href="/cs310/signup/signin.jsp">Log Out</a></button>
    </body>
</html>
