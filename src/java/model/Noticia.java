/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Math
 */
@Entity
@Table(name = "noticia")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Noticia.findAll", query = "SELECT n FROM Noticia n"),
    @NamedQuery(name = "Noticia.findByIdNoticia", query = "SELECT n FROM Noticia n WHERE n.idNoticia = :idNoticia"),
    @NamedQuery(name = "Noticia.findByData", query = "SELECT n FROM Noticia n WHERE n.data = :data"),
    @NamedQuery(name = "Noticia.findByDescricao", query = "SELECT n FROM Noticia n WHERE n.descricao = :descricao")})
public class Noticia implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idNoticia")
    private Integer idNoticia;
    @Size(max = 45)
    @Column(name = "data")
    private String data;
    @Size(max = 60)
    @Column(name = "descricao")
    private String descricao;
    @JoinColumn(name = "Evento_idEvento", referencedColumnName = "idEvento")
    @ManyToOne(optional = false)
    private Evento eventoidEvento;

    public Noticia() {
    }

    public Noticia(Integer idNoticia, String data, String descricao, Evento eventoidEvento) {
        this.idNoticia = idNoticia;
        this.data = data;
        this.descricao = descricao;
        this.eventoidEvento = eventoidEvento;
    }

    
    
    public Noticia(Integer idNoticia) {
        this.idNoticia = idNoticia;
    }

    public Integer getIdNoticia() {
        return idNoticia;
    }

    public void setIdNoticia(Integer idNoticia) {
        this.idNoticia = idNoticia;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Evento getEventoidEvento() {
        return eventoidEvento;
    }

    public void setEventoidEvento(Evento eventoidEvento) {
        this.eventoidEvento = eventoidEvento;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idNoticia != null ? idNoticia.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Noticia)) {
            return false;
        }
        Noticia other = (Noticia) object;
        if ((this.idNoticia == null && other.idNoticia != null) || (this.idNoticia != null && !this.idNoticia.equals(other.idNoticia))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Noticia[ idNoticia=" + idNoticia + " ]";
    }
    
}