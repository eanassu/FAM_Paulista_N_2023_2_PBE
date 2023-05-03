package br.vemprafam.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.vemprafam.dao.DaoProduto;
import br.vemprafam.pojo.Produto;

public class LogicaLista implements Logica {

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		DaoProduto dao = new DaoProduto();
		List<Produto> produtos = dao.getLista();
		request.setAttribute("produtos", produtos);
		return "listaTaglib.jsp";
	}

}
