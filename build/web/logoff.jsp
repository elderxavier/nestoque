<%-- 
    Document   : logoff
    Created on : 16/11/2015, 19:56:01
    Author     : Ricardo.inacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Sistema de Login :: JSP</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style>
body, td, a:link, a:visited {
font-family: Verdana;
font-size: 10px;
color: #000000;
text-decoration: none;
}
a:hover{
color: #FF0000;
}
input {
font-family: Verdana, Arial, Helvetica, sans-serif;
font-size: 10px;
background-color: #FFFFFF;
border: 1px solid #000000;
}
</style>
</head>

<body>
<%
//Destroi as sessions
session.invalidate();

out.println("Você saiu com sucesso do sistema. Tente ver agora a página dos \"<a href='logado.jsp'>logados</a>\" ou efetue novamente <a href='index.jsp'>login</a>");
%>
</body>
</html>