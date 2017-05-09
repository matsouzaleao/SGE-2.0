package model;
// Generated 09/05/2017 07:49:21 by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Noticia generated by hbm2java
 */
@Entity
@Table(name="noticia"
    ,catalog="sge"
)
public class Noticia  implements java.io.Serializable {


     private int idNoticia;
     private Evento evento;
     private String data;
     private String descricao;

    public Noticia() {
    }

	
    public Noticia(int idNoticia, Evento evento) {
        this.idNoticia = idNoticia;
        this.evento = evento;
    }
    public Noticia(int idNoticia, Evento evento, String data, String descricao) {
       this.idNoticia = idNoticia;
       this.evento = evento;
       this.data = data;
       this.descricao = descricao;
    }
   
     @Id 

    
    @Column(name="idNoticia", unique=true, nullable=false)
    public int getIdNoticia() {
        return this.idNoticia;
    }
    
    public void setIdNoticia(int idNoticia) {
        this.idNoticia = idNoticia;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="Evento_idEvento", nullable=false)
    public Evento getEvento() {
        return this.evento;
    }
    
    public void setEvento(Evento evento) {
        this.evento = evento;
    }

    
    @Column(name="data", length=45)
    public String getData() {
        return this.data;
    }
    
    public void setData(String data) {
        this.data = data;
    }

    
    @Column(name="descricao", length=60)
    public String getDescricao() {
        return this.descricao;
    }
    
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }




}


