<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.vemprafam.pojo.Produto"%>
<%@page import="br.vemprafam.dao.DaoProduto"%>
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
<title>Busca</title>
</head>
<body>
<form action="atualizar">
<%
int codigo = Integer.parseInt(request.getParameter("codigo"));
DaoProduto dao = new DaoProduto();
Produto p = dao.buscarPeloCodigo(codigo);
SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
String dataCompra = dateFormat.format(p.getDataCompra());
%>
código:<input type="text" name="codigo" value="<%=p.getCodigo()%>"/><br/>
descrição:<input type="text" name="descricao" value="<%=p.getDescricao()%>"/><br/>
quantidade:<input type="text" name="quantidade" value="<%=p.getQuantidade()%>"/><br/>
preço:<input type="text" name="preco" value="<%=p.getPreco()%>"/><br/>
Data da Compra:<fam:campoData id="dataCompra" value="<%=dataCompra%>"/><br/>
<input type="submit" value="enviar"/>
</form>
<a href="/Projeto">voltar</a>
</body>
</html>