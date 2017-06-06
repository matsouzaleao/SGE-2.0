<%-- 
    Document   : pesquisaAluno
    Created on : 20/09/2016, 09:25:00
    Author     : Math
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <!--Fontes e Ícones Materialize-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Css SGE-->
        <link type="text/css" rel="stylesheet" href="css/style.css"  media="screen,projection"/>
        <!--Informe o Browser sobre a compatibilidade-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGE - Eventos</title>          
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
            <h5 class="flow-text center">Eventos</h5>

            <table class="bordered">
                <tr>
                    <th>Codigo Evento</th>
                    <th>Nome Evento</th>
                    <th>Duração</th>
                    <th>Tema</th>
                    <th>Data Inicio do Evento</th>
                    <th>Data de Fim do Evento</th>
                    <th>Data Inicio da Inscricao</th>
                    <th>Data Final da Inscricao</th>
                    <th colspan=2>Ação</th>
                </tr>
                <c:forEach items="${eventos}" var="evento">
                    <tr>
                        <td><c:out value="${evento.idEvento}"/></td>
                        <td><c:out value="${evento.nomeEvento}"/></td>
                        <td><c:out value="${evento.duracao}"/></td>
                        <td><c:out value="${evento.tema}"/></td>
                        <td><c:out value="${evento.dataInicioEvento}"/></td>
                        <td><c:out value="${evento.dataFimEvento}"/></td>
                        <td><c:out value="${evento.dataInicioInscricao}"/></td>
                        <td><c:out value="${evento.dataFimInscricao}"/></td>
                        <td><c:out value="${evento.administradorcodAdministrador.nome}"/></td>
                        <td><a href="ManterEventoController?acao=prepararOperacao&operacao=editar<c:out value="${evento.idEvento}" />"><button class="btn waves-effect waves-light yellow accent-4"> Editar </button> </a></td>
                        <td><a href="ManterEventoController?acao=prepararOperacao&operacao=excluir&idEvento=<c:out value="${evento.idEvento}" />"><button class="btn waves-effect waves-light red accent-4"> Excluir </button> </a></td>
                    </tr>      
                </c:forEach>
            </table>
            <div class="container center">
                <form action="ManterEventoController?acao=prepararOperacao&operacao=incluir" method="post">
                    <input class="btn waves-effect waves-light center" type="submit" name="bntIncluir" value="Incluir">
                </form>
            </div>
            
            <div class="container center">
                    <a href="RelatorioEventoController"> <button class="btn waves-effect waves-light center" > Relatório </button></a>
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