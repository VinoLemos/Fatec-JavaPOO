<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 21:40:31
    Author     : Fatec
--%>
<%@page import="tarefa.Horario"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Horario horarioAtual = new Horario(21, 45, 00);
    Horario horarioIntervalo = new Horario(21, 10, 00);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa aula 10</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <br/>
        <h1>Horário atual: </h1>
        <div>
            <h4><%= horarioAtual.getHorario()%></h4>
        </div>
        
        <h1>Horário do intervalo: </h1>
        <div>
            <h4><%= horarioIntervalo.getHorario()%></h4>
        </div>
    </body>
</html>
