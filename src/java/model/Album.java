package model;
// Generated 09/05/2017 07:49:21 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Album generated by hbm2java
 */
@Entity
@Table(name="album"
    ,catalog="sge"
)
public class Album  implements java.io.Serializable {


     private int idAlbum;
     private Galeria galeria;
     private String desricao;
     private String titulo;
     private Set fotoses = new HashSet(0);

    public Album() {
    }

	
    public Album(int idAlbum, Galeria galeria) {
        this.idAlbum = idAlbum;
        this.galeria = galeria;
    }
    public Album(int idAlbum, Galeria galeria, String desricao, String titulo, Set fotoses) {
       this.idAlbum = idAlbum;
       this.galeria = galeria;
       this.desricao = desricao;
       this.titulo = titulo;
       this.fotoses = fotoses;
    }
   
     @Id 

    
    @Column(name="idAlbum", unique=true, nullable=false)
    public int getIdAlbum() {
        return this.idAlbum;
    }
    
    public void setIdAlbum(int idAlbum) {
        this.idAlbum = idAlbum;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="Galeria_id", nullable=false)
    public Galeria getGaleria() {
        return this.galeria;
    }
    
    public void setGaleria(Galeria galeria) {
        this.galeria = galeria;
    }

    
    @Column(name="desricao", length=45)
    public String getDesricao() {
        return this.desricao;
    }
    
    public void setDesricao(String desricao) {
        this.desricao = desricao;
    }

    
    @Column(name="titulo", length=45)
    public String getTitulo() {
        return this.titulo;
    }
    
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="album")
    public Set getFotoses() {
        return this.fotoses;
    }
    
    public void setFotoses(Set fotoses) {
        this.fotoses = fotoses;
    }




}

