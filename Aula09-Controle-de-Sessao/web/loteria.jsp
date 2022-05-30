<%-- 
    Document   : loteria
    Created on : Apr 13, 2022, 3:20:35 AM
    Author     : vino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>

<%       
    int numero;
    int vetor[] = new int[6];
    Random r = new Random();

    for(int i=0; i<vetor.length; i++){
        numero = r.nextInt(60);
        for(int j=0; j<vetor.length; j++){
           if(numero == vetor[j] && j != i){
                 numero = r.nextInt(60);
           }else{
                vetor[i] = numero;
           }
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dicas de loteria</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>

        <table border=5px widht="10px">
            <tr>
            <td><%= vetor[0]%></td>
            <td><%= vetor[1]%></td>
            <td><%= vetor[2]%></td>
            <td><%= vetor[3]%></td>
            <td><%= vetor[4]%></td>
            <td><%= vetor[5]%></td>
            </tr>
        </table>
    </body>
</html>
