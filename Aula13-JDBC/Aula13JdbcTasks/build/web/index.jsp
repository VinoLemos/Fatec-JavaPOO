<%-- 
    Document   : index
    Created on : 16 de mai. de 2022, 19:25:14
    Author     : Vinícius
--%>

<%@page import="Model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Exception indexException = null;
    int userListCount = -1;
    try{
        userListCount = User.getAllUsers().size();
    }catch(Exception ex)
    {
        indexException = ex;
    }

    Exception usersException = null;
    ArrayList<User> userList = new ArrayList<>();
    try{
        userList = User.getAllUsers();
    }catch(Exception ex){
        usersException = ex;
   }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - MyTasks</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h1>Início</h1>
        <%if(usersException != null){%>
        <div style="color:red"><%= usersException.getMessage()%></div>
        <%}%>
        <h3>Usuários</h3>
        <a href="users.jsp"> 
            <%= (userListCount == -1) ? '-' : userListCount%>
        </a>
    </body>
</html>
