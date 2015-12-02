<%@page import="dao.EstoqueDAO"%>

<%
    String id = request.getParameter("id");
    try {
        EstoqueDAO dao = new EstoqueDAO();        
        out.print("{\"title\":\"Mensagem: \",\"type\":\"success\",\"messsage\":\"" +dao.Excluir("id", "=", id) +"\"}");
    } catch (Exception ex) {
        out.print("{\"title\":\"Erro: \",\"type\":\"error\",\"messsage\":\"Erro ao incluir registro - " + ex + "\"}");
    }


%>