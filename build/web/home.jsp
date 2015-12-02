<%@page contentType="text/html" pageEncoding="UTF-8"%>         
<!DOCTYPE html>
<html lang="pt_BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <meta name="description" content="">
        <meta name="author" content="">   
        <link rel="shortcut icon" href="img/estoqueico.jpg"> 
        <title>Controle de Estoque</title>    
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link href="css/starter-template.css" rel="stylesheet">        
        <link rel="stylesheet" href="js/sweetalert-master/dist/sweetalert.css">        
        <script type="text/javascript" src="js/sweetalert-master/dist/sweetalert-dev.js"></script>    
        <script type="text/javascript" src="js/min.js"></script>        
        <!-- Bootstrap core CSS -->                
        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="js/ie-emulation-modes-warning.js"></script>        
    </head>
    <body class="modal-open">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%
            if (session.getValue("loginUsuario") != null || session.getValue("senhaUsuario") != null) {
                out.println("Bem vindo: " + session.getValue("loginUsuario"));
            } else {                
                out.println("<script type='text/javascript'>window.location.href='index.jsp';</script> ");
            }
        %>
        <jsp:include page="barra_superior_menu.jspf"/>        
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="jumbotron">
                        <div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
                            <ul id="myTabs" class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active">
                                    <a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="false"><font>Cadastro de Produto</font></a></li>
                                <li role="presentation" class=""><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false"><font><font>Consulta Estoque</font></font></a></li>
                                <li role="presentation" class="dropdown">
                                    <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents" aria-expanded="false"><font>Financeiro</font><span class="caret"></span></a>
                                    <ul class="dropdown-menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                                        <li class="">
                                            <a href="#dropdown1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1" aria-expanded="false"><font>Conta a pagar</font></a></li>
                                        <li class="active"><a href="#dropdown2" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2" aria-expanded="true"><font><font>Conta a Receber</font></font></a></li>
                                    </ul>
                                </li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                                    <script src="js/jquery.min.js"></script>
                                    <script src="js/bootstrap.min.js"></script>
                                    <jsp:include page="cadastro_estoque.jspf"/> 
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
                                    <jsp:include page="consulta_estoque.jspf"/> 
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab">
                                    Clique Aqui  </div>
                                <div role="tabpanel" class="tab-pane fade " id="dropdown2" aria-labelledby="dropdown2-tab">
                                    Clique aqui</div>
                            </div>
                        </div>
                        <div class="container-fluid">
                        </div>        
                    </div>
                </div>
            </div>
        </div>
       <div id="loading"></div>
        <!-- /.container -->
        <footer>
            <p>© Queijo Company 2015</p>
        </footer>
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="js/ie10-viewport-bug-workaround.js"></script>
        <script type="text/javascript" src="js/resorce.js"></script>
    </body>
</html>