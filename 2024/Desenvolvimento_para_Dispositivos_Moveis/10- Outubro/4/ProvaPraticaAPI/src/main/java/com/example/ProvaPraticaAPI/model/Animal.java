package com.example.ProvaPraticaAPI.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name = "Animal")
public class Animal {

    @Id
    private String nomeCientifico;

    @Column
    private String nomePopular;

    @Column
    private String riscoExtincao;

    @Column
    private String habito;

    public String getNomeCientifico() {
        return nomeCientifico;
    }

    public void setNomeCientifico(String nomeCientifico) {
        this.nomeCientifico = nomeCientifico;
    }

    public String getNomePopular() {
        return nomePopular;
    }

    public void setNomePopular(String nomePopular) {
        this.nomePopular = nomePopular;
    }

    public String getRiscoExtincao() {
        return riscoExtincao;
    }

    public void setRiscoExtincao(String riscoExtincao) {
        this.riscoExtincao = riscoExtincao;
    }

    public String getHabito() {
        return habito;
    }

    public void setHabito(String habito) {
        this.habito = habito;
    }
}
