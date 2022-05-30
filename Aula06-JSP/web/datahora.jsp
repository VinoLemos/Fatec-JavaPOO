<%-- 
    Document   : datahora
    Created on : 21 de mar. de 2022, 19:44:36
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Date agora = new Date(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>JavaEE</h1>
        <h2>JSP</h2>
        <h3>Início</h3>
        <h3>Data/hora do servidor com scriptlet</h3>
        <%
            out.print(agora);
        %>
        <h3>Data/hora do servidor com expression</h3>
        <%= agora %>
    </body>
</html>
