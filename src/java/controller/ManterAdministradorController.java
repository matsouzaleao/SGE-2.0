/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AdministradorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Administrador;
/**
 *
 * @author Math
 */
@WebServlet(name = "ManterAdministradorController", urlPatterns = {"/ManterAdministradorController"})
public class ManterAdministradorController extends HttpServlet {

   
    private Administrador administrador;
    
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acao = request.getParameter("acao");
        if (acao.equals("prepararOperacao")) {
            prepararOperacao(request, response);
        }
        if (acao.equals("confirmarOperacao")) {
            confirmarOperacao(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void prepararOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException {
         try {
            String operacao = request.getParameter("operacao");
            request.setAttribute("operacao", operacao);
            request.setAttribute("administradores", AdministradorDAO.getAllAdministradores());
            if (!operacao.equals("incluir")) {
                int codAdministrador = Integer.parseInt(request.getParameter("codAdministrador"));
                administrador = AdministradorDAO.getInstance().getAdministrador(codAdministrador);
                request.setAttribute("administrador", administrador);
            }
            RequestDispatcher view = request.getRequestDispatcher("/manterAdministrador.jsp");
            view.forward(request, response);
        } catch (ServletException e) {
            throw e;
        } catch (IOException e) {
            throw new ServletException(e);
        }
        }

    private void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
        String operacao = request.getParameter("operacao");
        int codAdministrador = Integer.parseInt(request.getParameter("txtCodAdministrador"));
        String nome = request.getParameter("txtNomeAdministrador");
        String email = request.getParameter("txtEmailAdministrador");
        String senha = request.getParameter("txtSenhaAdministrador");
        String dataNascimento = request.getParameter("txtDataNascimentoAdministrador");
        
        if(operacao.equals("incluir")){
            administrador = new Administrador(codAdministrador, nome, email, senha, dataNascimento);
            AdministradorDAO.getInstance().salvar(administrador);
        }else if(operacao.equals("editar")){
            administrador.setNome(nome);
            administrador.setEmail(email);
            administrador.setSenha(senha);
            administrador.setDataNascimento(dataNascimento);
            AdministradorDAO.getInstance().salvar(administrador);
        }else if(operacao.equals("excluir")){
            AdministradorDAO.getInstance().excluir(administrador);
        }
            RequestDispatcher view = request.getRequestDispatcher("PesquisaAdministradorController");
            view.forward(request, response);
        } catch (ServletException e) {
            throw e;
        } catch (IOException e) {
            throw new ServletException(e);
        }
    }
}


