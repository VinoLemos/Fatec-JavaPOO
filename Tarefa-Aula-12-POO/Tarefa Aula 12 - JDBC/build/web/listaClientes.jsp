<%-- 
    Document   : listaFuncionarios
    Created on : 9 de mai. de 2022, 21:52:27
    Author     : Fatec
--%>
<%@page import="model.Customer"%>
<%@page import="java.util.ArrayList"%>

<%
    Exception requestEx = null;
    ArrayList<Customer> list = new ArrayList<>();
    int count = 0;
    try{
        count = Customer.getCount();
        list = Customer.getList();
    }catch (Exception ex){
        requestEx = ex;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de clientes</title>
    </head>
    <body> 
        <a href="index.jsp">Início</a>
        <h2>Clientes ( <%= count %> registros )</h2>
        
        <% if(requestEx != null){%>        
            <h2 style="color:red"><%= requestEx.getMessage() %></h2>
        <%}%>
        
        <table border="1">
            <tr><th>Id</th><th>Nome</th></tr>
                <% for (Customer cus : Customer.getList()) {%>
                    <tr>
                    <td><%= cus.getId() %></td>
                    <td><%= cus.getFullName() %></td>
                    </tr>
                <%}%>
        </table>
    </body>
</html>
