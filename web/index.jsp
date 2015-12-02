<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt_BR">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="img/estoqueico.jpg"> 
    <title>Controle de Estoque</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/starter-template.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script><style type="text/css"></style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="">Projeto Profissional Interdiciprinar</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="http://localhost:8080/PPI.5/#">Home</a></li>
            <li><a href="http://localhost:8080/PPI.5/#about">Sobre</a></li>
            <li><a href="./PPI.5_files/PPI.5.html">Contato</a></li>
          </ul>    
          <form name="form1" method="post" action="logar.jsp" class="navbar-form navbar-right" role="form">
            <div class="form-group">
              <input name="login" type="text" id="login" placeholder="usuario" class="form-control">
            </div>
            <div class="form-group">
              <input name="senha" type="password" id="senha" placeholder="Senha" class="form-control">
            </div>
            <button type="submit" name="Submit" value="Logar"class="btn btn-success">Login</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
<!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Sistema de controle de estoque.</h1>
        <p class="lead"></p><p></p>
      </div>
    </div>
    <!-- /.container -->
 <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>PPI</h2>
          <p>Agradecimentos:</p>
          <p>Prof. Victor</p>
          <p>&nbsp;</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Rede sociais          </h2>
          <p>Facebook          </p>
          <p>GitHub </p>
          <p>&nbsp;</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <h2>&nbsp;</h2>
          <p><img src="http://www.sumare.edu.br/wp-content/uploads/2015/02/logo-home.png" width="207" height="55"></p>
          <p>&nbsp;</p>
          <p><a class="btn btn-default" href="#" role="button">Ver detanhes&raquo;</a></p>
        </div>
      </div>
      <hr>
      <footer>
        <p>&copy; Queijo Company 2015</p>
      </footer>
    </div> <!-- /container --> 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>