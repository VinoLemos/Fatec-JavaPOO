<%-- 
    Document   : listaFuncionarios
    Created on : 9 de mai. de 2022, 21:52:27
    Author     : Fatec
--%>
<%@page import="model.Employee"%>
<%@page import="java.util.ArrayList"%>

<%
    Exception requestEx = null;
    ArrayList<Employee> list = new ArrayList<>();
    int count = 0;
    try{
        count = Employee.getCount();
        list = Employee.getList();
    }catch (Exception ex){
        requestEx = ex;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de funcionários</title>
    </head>
    <body>       
        <a href="index.jsp">Início</a>
        <h2>Funcionários ( <%= count %> registros )</h2>
        
        <% if(requestEx != null){%>        
            <h2 style="color:red"><%= requestEx.getMessage() %></h2>
        <%}%>
        
        <table border="1">
            <tr><th>Id</th><th>Nome</th></tr>
                <% for (Employee emp : Employee.getList()) {%>
                    <tr>
                    <td><%= emp.getId() %></td>
                    <td><%= emp.getFullName() %></td>
                    </tr>
                <%}%>
        </table>
    </body>
</html>
