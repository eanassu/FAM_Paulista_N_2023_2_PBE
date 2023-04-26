<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista (taglib)</title>
</head>
<body>
<table border='1'>
<tr>
	<th>código</th>
	<th>descrição</th>
	<th>quantidade</th>
	<th>preço</th>
	<th>data da compra</th>
</tr>
<jsp:useBean id="dao" class="br.vemprafam.dao.DaoProduto"/>
<c:forEach var="p" items="${dao.lista}" varStatus="id">
<tr bgcolor="#${id.count%2==0?'aaee88':'ffffff'}">
	<td>${p.codigo}</td>
	<td>${p.descricao}</td>
	<td>${p.quantidade}</td>
	<td><fmt:formatNumber value="${p.preco}" type="currency"/></td>
	<td><fmt:formatDate value="${p.dataCompra}" pattern="dd/MM/yyyy"/></td>
</tr>
</c:forEach>
</table>
<a href="/Projeto">voltar</a>
</body>
</html>