package modelo;

import DAO.AlunoDAO;
import java.sql.SQLException;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Leonardo
 */
public class Aluno extends Usuario {

    private int idAluno;

    public Aluno(int idAluno, String nome, String email, String senha, String dataNascimento) {
        super(nome, email, senha, dataNascimento);
        this.idAluno = idAluno;
    }

    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }
    
    public static List<Aluno> obterAlunos() throws ClassNotFoundException{
        return AlunoDAO.obterAlunos();
    }
    
    public static Aluno obterAluno(int idAluno) throws ClassNotFoundException{
        return AlunoDAO.obterAluno(idAluno);
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        AlunoDAO.gravar(this);
    }
    
    public void alterar() throws SQLException, ClassNotFoundException {
        AlunoDAO.alterar(this);
   }

    public void excluir() throws SQLException, ClassNotFoundException {
        AlunoDAO.excluir(this);
   }

}
