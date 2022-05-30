<%-- 
    Document   : index
    Created on : 2 de mai. de 2022, 21:13:31
    Author     : Fatec
--%>
<%@page import="model.Disciplina" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.ArrayList" %>
<%           
    Disciplina Poo = new Disciplina("Programação Orientada a Objetos", "ILP007", "Conceitos de programação orientada a objetos", "Segunda-Feira", "19:00");
    Disciplina So = new Disciplina("Sistemas Operacionais", "ISO200", "Conceitos básicos de Sistemas Operacionais", "Terça-Feira", "19:00");
    Disciplina ProgPHP = new Disciplina("Linguagem de programação 4: Internet", "ILP512", "Conceitos de programação orientada a internet", "Quarta-Feira", "19:00");
    Disciplina EIII = new Disciplina("Engenharia de Software 3", "IES300", "Conceitos, evolução e importância de arquitetura de software", "Quinta-Feira", "19:00");
    Disciplina Metodologia = new Disciplina("Metodologia de pesquisa científica-tecnológica", "TTG001", "Papel da ciência e da tecnologia", "Sexta-Feira", "19:00");
    Disciplina Ing = new Disciplina("Inglês IV", "LIN400", "Ingês", "Sexta-Feira", "20:50");
    Disciplina Banco = new Disciplina("Banco de dados", "IBD002", "Conceitos de banco de dados", "Sábado", "08:00");
    
    Date atual = new Date();
    String horarioAtual = atual.getHours() + ":" + atual.getMinutes();
    
    ArrayList<Disciplina> lista = new ArrayList<Disciplina>();
    lista.add(Poo); lista.add(So); lista.add(ProgPHP); lista.add(EIII); lista.add(Metodologia); lista.add(Ing); lista.add(Banco);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas</title>
    </head>
    <body>
        <h1><%= horarioAtual%></h1>
        <h2>Vinícius Lemos de Oliveira</h2>
        <h2>Talita da Silva Santos</h2>
        <hr/>
        <table border="1">
            <tr>
                <th>Disciplina</th>
                <th>Sigla</th>
                <th>Ementa</th>
                <th>Dia da semana</th>
                <th>Horário</th>
            </tr>
            <%for(Disciplina p: lista){%>
            <tr>
                <td><%= p.getNome() %></td>
                <td><%= p.getSigla() %></td>
                <td><%= p.getEmenta() %></td>
                <td><%= p.getDiaSemana() %></td>
                <td><%= p.getHorarioAula() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
