package br.vemprafam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.vemprafam.dao.DaoProduto;
import br.vemprafam.pojo.Produto;

/**
 * Servlet implementation class ServletLista
 */
@WebServlet("/Lista")
public class ServletLista extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "<meta charset=\"ISO-8859-1\"/>\r\n"
				+ "<title>Lista</title>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "<table border='1'>"
	            + "<tr>\r\n"
	   		    + "	<th>código</th>\r\n"
	   		    + "	<th>descrição</th>\r\n"
	   		    + "	<th>quantidade</th>\r\n"
	   		    + "	<th>preço</th>\r\n"
	   		    + "	<th>data da compra</th>\r\n"
	   		    + "</tr>");
		DaoProduto dao = new DaoProduto();
		List<Produto> lista = dao.getLista();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		NumberFormat moedaFormat = NumberFormat.getCurrencyInstance(); 
		for( Produto p: lista ) {
			out.println("<tr>" +
			"<td>" + p.getCodigo() + "</td>" +
			"<td>" + p.getDescricao() + "</td>" +
			"<td>" + p.getQuantidade() + "</td>" +
			"<td>" + moedaFormat.format(p.getPreco()) + "</td>" +
			"<td>" + dateFormat.format(p.getDataCompra()) +"</td></tr>" 
		   ); 
		}
		out.println("</table>"
				+ "</body>\r\n"
				+ "</html>");
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
