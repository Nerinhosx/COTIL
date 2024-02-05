/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testehibernate;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

/**
 *
 * @author taniabasso
 */
@Entity
@Table
public class Disciplina implements Serializable {
    
    @Id
    @Column
    private int codigo;
    
    @Column (nullable=false, length=100, unique=true)
    private String descricao;
    
    @Column
    private int cargaHoraria;

    public Disciplina() {
    }

    public Disciplina(int codigo, String descricao, int cargaHoraria) {
        this.codigo = codigo;
        this.descricao = descricao;
        this.cargaHoraria = cargaHoraria;
    }
    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getCargaHoraria() {
        return cargaHoraria;
    }

    public void setCargaHoraria(int cargaHoraria) {
        this.cargaHoraria = cargaHoraria;
    }

}
