/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import DAO.ExternoDAO;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import model.Externo;

/**
 *
 * @author Aluno
 */
@ManagedBean
@RequestScoped
public class ExternoBean extends CrudBean<Externo, ExternoDAO> {

    private ExternoDAO externoDAO;

    @Override
    public ExternoDAO getDao() {
        if (externoDAO == null) {
            externoDAO = new ExternoDAO();
        }
        return externoDAO;
    }

    @Override
    public Externo criarNovaEntidade() {
        return new Externo();
    }
}
