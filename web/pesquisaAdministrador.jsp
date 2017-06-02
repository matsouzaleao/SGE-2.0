<%-- 
    Document   : pesquisaAluno
    Created on : 20/12/2016, 17:25:00
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>SGE - Administradores</title>     
        <!--Css Materialize-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <!--Fontes e Ícones Materialize-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Css SGE-->
        <link type="text/css" rel="stylesheet" href="css/style.css"  media="screen,projection"/>
        <!--Informe o Browser sobre a compatibilidade-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
    </head>
    <body>
        <header>
            <nav class="nav-extended light-green lighten-1">
                <div class="nav-wrapper">
                    <img class="responsive" src="img/if_icon.png">
                    <a href="#" class="brand-logo">Sistema de Gerenciamento de Eventos</a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="sass.html">Sass</a></li>
                        <li><a href="badges.html">Components</a></li>
                        <li><a href="collapsible.html">JavaScript</a></li>
                    </ul>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="sass.html">Sass</a></li>
                        <li><a href="badges.html">Components</a></li>
                        <li><a href="collapsible.html">JavaScript</a></li>
                    </ul>
                    <ul class="tabs tabs-transparent">
                        <li class="tab"><a href="VoltarInicioController">Início</a></li>
                        <li class="tab"><a href="PesquisaNoticiaController">Noticias</a></li>
                        <li class="tab"><a href="PesquisaPropostaController">Propostas</a></li>
                        <li class="tab"><a href="PesquisaAlunoController">Alunos</a></li>
                        <li class="tab"><a href="PesquisaAdministradorController">Administrador</a></li>
                        <li class="tab"><a href="PesquisaEventoController">Evento</a></li>
                        <li class="tab"><a href="PesquisaExternoController">Externo</a></li>
                        <li class="tab"><a href="PesquisaGerenteController">Gerente</a></li>
                        <li class="tab"><a href="PesquisaLocalController">Local</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <main>
            <h5 class="flow-text center">Administradores</h5>

            <table class="bordered">
                <tr>
                    <th>Codigo Administrador</th>
                    <th>Nome do Administrador</th>
                    <th>Data de Nascimento</th>
                    <th>Email</th>
                    <th colspan=2>Ação</th>
                </tr>
                <c:forEach items="${administradores}" var="administrador">
                    <tr>
                        <td><c:out value="${administrador.codAdministrador}"/></td>
                        <td><c:out value="${administrador.nome}"/></td>
                        <td><c:out value="${administrador.dataNascimento}"/></td>
                        <td><c:out value="${administrador.email}"/></td>
                        <td><a href="ManterAdministradorController?acao=preapararOperacao&operacao=editar<c:out value="${administrador.codAdministrador}" />"><button class="btn waves-effect waves-light yellow accent-4"> Editar </button></a></td>
                        <td><a href="ManterAdministradorController?acao=prepararOperacao&operacao=excluir&codAdministrador=<c:out value="${administrador.codAdministrador}" />"><button class="btn waves-effect waves-light red accent-4"> Excluir</button> </a></td>
                    </tr>      
                </c:forEach>
            </table>
            <div class="container center">
                <form action="ManterAdministradorController?acao=prepararOperacao&operacao=incluir" method="post">
                    
                    <input class="btn waves-effect waves-light center" type="submit" name="bntIncluir" value="Incluir">
                </form>
            </div>
            
            <div class="container center">
                    <a href="RelatorioAdministradorController?acao=prepararImprimir" method="post"> <button class="btn waves-effect waves-light center" >Relatorio </button></a>
                    
            </div>
            
        </main>
        <footer class="page-footer light-green lighten-1">
            <div class="footer-copyright grey-text text-lighten-4">
                <div class="container">© 2016 Copyright - Modelagem e Programação: Matheus Souza Leao | Luiz Filipy Damaceno | Leonardo Smoginski Fernandes</div>
            </div>
        </footer>

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <!-- JavaScript SGE-->
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
