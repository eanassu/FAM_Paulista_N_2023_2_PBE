<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="fam" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<title>Formulário</title>
</head>
<body>
<form action="Controller" method="post">
código:<input type="text" name="codigo"/><br/>
descrição:<input type="text" name="descricao"/><br/>
quantidade:<input type="text" name="quantidade"/><br/>
preço:<input type="text" name="preco"/><br/>
Data da Compra:<fam:campoData id="dataCompra"/>
<input type="hidden" name="op" value="Cadastro"/>
<input type="submit" value="enviar"/>
</form>
<a href="/Projeto">voltar</a>
</body>
</html>