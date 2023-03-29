<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Primeira página JSP</title>
</head>
<body>
<p>Hello JSP!</p>
<%--Comentário em JSP --%>
<% String mensagem = "Teste JSP";
   out.println(mensagem);
   System.out.println("esta vai para o console");
%>

<%=mensagem %>
</body>
</html>