<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.vemprafam.pojo.Produto"%>
<%@page import="br.vemprafam.dao.DaoProduto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
c�digo:<input type="text" name="codigo" value="<%=p.getCodigo()%>"/><br/>
descri��o:<input type="text" name="descricao" value="<%=p.getDescricao()%>"/><br/>
quantidade:<input type="text" name="quantidade" value="<%=p.getQuantidade()%>"/><br/>
pre�o:<input type="text" name="preco" value="<%=p.getPreco()%>"/><br/>
Data da Compra:<input type="text" name="dataCompra" value="<%=dataCompra%>"/><br/>
<input type="submit" value="enviar"/>
</form>
<a href="/Projeto">voltar</a>
</body>
</html>