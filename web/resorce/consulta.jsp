<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.EstoqueDAO;"%>
<%@page import="model.Estoque;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<tbody>
<%
    EstoqueDAO dao = new EstoqueDAO();
    //Estoque estoque = new Estoque();
    List<Estoque> mylist = new ArrayList();
    mylist = dao.Pesquisa("id", ">", "0");
    for (Estoque name : mylist) {%>

    <tr>
        <td class="id"><%out.println(name.getId());%></td>
        <td class="nome"><%out.println(name.getNome());%></td>
        <td class="tipo"><%out.println(name.getTipo());%></td>
        <td class="descricao"><%out.println(name.getDescricao());%></td>
        <td class="fabricante"><%out.println(name.getFabricante());%></td>
        <td class="quantidade"><%out.println(name.getQuantidade());%></td>
        <td class="tipo_uni"><%out.println(name.getTipo_uni());%></td>
        <td class="preco"><%out.println(name.getPreco());%></td>
        <td class="preco_compra"><%out.println(name.getPreco_compra());%></td>
        <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs edit" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
        <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs delete" data-title="Delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>


<% } %>

</tbody>
