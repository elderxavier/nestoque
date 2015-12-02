<%-- 
    Document   : testaconexao
    Created on : 02/09/2015, 00:27:10
    Author     : x-e
--%>

<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.Conexao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="model.Estoque"%>
<%@page import="dao.EstoqueDAO"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.FileHandler"%>
<%@page import="db.ConexaoDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste Banco de dados</title>
    </head>
    <body>
        <p><% //out.println(ConexaoDB.statusConection());%> </p>
        <% //ConexaoDB.getConexaoMySQL();%>
        <p><%//out.println(ConexaoDB.statusConection()); %> </p>
        <% //ConexaoDB.FecharConexao();%>
        <p><%//out.println(ConexaoDB.statusConection()); %> </p>
        <p><%//out.println("teste finalizado"); %> </p>
        <% 
          
          
        EstoqueDAO dao = new EstoqueDAO();
        //String cria = dao.Criar();
        
        //out.println(dao.Criar());
        
        Estoque estoque = new Estoque();
        estoque.setDescricao("descricao");
        estoque.setFabricante("fabricante 2");
        estoque.setNome("uM NOME LEGAL");
        estoque.setPreco(200.0);
        estoque.setPreco_compra(201.00);
        estoque.setQuantidade(10);
        estoque.setTipo("tipo");
        estoque.setTipo_uni("tipo_uni");
        estoque.setId(1);
        
        
        /*for(int i = 0; i < 10; i ++){
            out.println(dao.Inserir(estoque));
        }*/
        out.println(dao.Editar(estoque));
        //out.println(dao.Excluir("id", "=", "9"));
        
        /*
        List<Estoque> mylist = new ArrayList();        
        mylist =  dao.Pesquisa("id", ">", "0");         
        for (Estoque name: mylist) {
            out.println(name.getId());
        }
                    */
        %>
    </body>
</html>