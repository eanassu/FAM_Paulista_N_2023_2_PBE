package br.vemprafam.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.vemprafam.dao.DaoProduto;
import br.vemprafam.pojo.Produto;

public class LogicaExclusao implements Logica {

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		int codigo = Integer.parseInt(request.getParameter("codigo"));
		DaoProduto dao = new DaoProduto();
		Produto produto = new Produto(codigo,"",0,0,null);
		dao.delete(produto);
		return "excluido.jsp";
	}

}
