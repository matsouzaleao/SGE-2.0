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
        <!--Css Materialize-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <!--Fontes e Ícones Materialize-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Css SGE-->
        <link type="text/css" rel="stylesheet" href="css/style.css"  media="screen,projection"/>
        <!--Informe o Browser sobre a compatibilidade-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGE - Propostas</title>          
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
        <h5 class="flow-text center">Propostas</h5>
        <div class="container">
            <table class="bordered">
                <tr>
                    <th>Codigo Proposta</th>
                    <th>Titulo da Atividade</th>
                    <th>Proponente</th>
                    <th>Tipo de Atividade</th>
                    <th>Vagas para Atividade</th>
                    <th>Informações Complementares</th>
                    <th>Estado</th>
                    <th>Data Inicio</th>
                    <th>Data Fim</th>
                    <th colspan=2>Ação</th>
                </tr>
                <c:forEach items="${propostas}" var="proposta">
                    <tr>
                        <td><c:out value="${proposta.idProposta}"/></td>
                        <td><c:out value="${proposta.tituloAtividade}"/></td>
                        <td><c:out value="${proposta.proponente}"/></td>
                        <td><c:out value="${proposta.tipoAtividade}"/></td>
                        <td><c:out value="${proposta.vagasAtividade}"/></td>
                        <td><c:out value="${proposta.informacoesComplementares}"/></td>
                        <td><c:out value="${proposta.estado}"/></td>
                        <td><c:out value="${proposta.dataInicio}"/></td>
                        <td><c:out value="${proposta.dataFim}"/></td>
                        <td><a href="ManterPropostaController?acao=prepararEditar&idProposta=<c:out value="${proposta.idProposta}" />"><button class="btn waves-effect waves-light yellow accent-4"> Editar </button> </a></td>
                        <td><a href="ManterPropostaController?acao=prepararExcluir&idProposta=<c:out value="${proposta.idProposta}" />"><button  class="btn waves-effect waves-light red accent-4"> Excluir </button> </a></td>
                    </tr>      
                </c:forEach>
            </table>
        </div>
        <div class="container center">
            <form action="ManterPropostaController?acao=prepararIncluir" method="post">
                <input class="btn waves-effect waves-light center" type="submit" name="bntIncluir" value="Incluir">
            </form>
        </div>

        <div class="container center">
            <a href="RelatorioPropostaController"> <button class="btn waves-effect waves-light center" > Relatório </button></a>
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