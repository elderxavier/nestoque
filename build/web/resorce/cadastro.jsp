<%@page import="dao.EstoqueDAO"%>
<%@page import="model.Estoque"%>
<%@page import="model.Helper"%>
<%
String fabricante = request.getParameter("fabricante");
String tipo_uni = request.getParameter("tipo_uni");
String preco_compra = request.getParameter("preco_compra");
String preco = request.getParameter("preco");
String quantidade = request.getParameter("quantidade");
String descricao = request.getParameter("descricao");
String tipo = request.getParameter("tipo");
String nome = request.getParameter("nome");

Helper helper = new Helper();
Estoque estoque = new Estoque();
estoque.setFabricante(fabricante);
estoque.setTipo_uni(tipo_uni);
double dpreco_compra = helper.convertDouble(preco_compra);
estoque.setPreco_compra(dpreco_compra);
double dpreco = helper.convertDouble(preco);
estoque.setPreco(dpreco);
int iquantidade = helper.convertInt(quantidade);
estoque.setQuantidade(iquantidade);
estoque.setDescricao(descricao);
estoque.setTipo(tipo);
estoque.setNome(nome);
String ret = "";
try{
    EstoqueDAO dao = new EstoqueDAO();
    dao.Inserir(estoque);    
               out.print("{\"title\":\"Mensagem: \",\"type\":\"success\",\"messsage\":\"Produto Salvo com sucesso!\"}");
}catch(Exception ex){
    out.print("{\"title\":\"Erro: \",\"type\":\"error\",\"messsage\":\"Erro ao incluir registro - "+ex+"\"}");
}



%>


