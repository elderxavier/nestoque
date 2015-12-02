<%@page contentType="text/html" pageEncoding="UTF-8"%>         
<!DOCTYPE html>
<html lang="pt_BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
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
        <link rel="stylesheet" href="css/style.css" type="text/css">        
        <link rel="stylesheet" href="js/sweetalert-master/dist/sweetalert.css">        
        <script src="js/sweetalert-master/dist/sweetalert-dev.js"></script>    
        <script src="js/jquery.min.js"></script>
    </head> <body>
        <div id="loading"></div>
        <%
            String login = "admin"; // Login
            String senha = "admin"; // Senha
            String login_form = request.getParameter("login"); // Pega o Login vindo do formulário
            String senha_form = request.getParameter("senha"); //Pega a senha vinda do formulário
            if (login_form.equals(login) && senha_form.equals(senha)) { //Caso login e senha estejam corretos...                
                session.putValue("loginUsuario", login); //Grava a session com o Login
                session.putValue("senhaUsuario", senha); //Grava a session com a Senha
                
        %>
        <script type="text/javascript" >
            $('#loading').css('display', 'block');
            window.location.href = 'home.jsp';
        </script>
        <%
        } else {
        %>
        <script type="text/javascript" >
            $('#loading').css('display', 'block');
            swal("Erro: ", "Usuario e senha invalidos", "error");
            $(document).on('click', '.confirm', function () {
                location.go(-1);
            });
        </script>
        <%
            }
        %>

    </body>
</html>
