/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author aluno
 */
public class Produto {
    private int cod;
    private double prc;
    private String desc;

    public Produto(int cod, double prc, String desc) {
        this.cod = cod;
        this.prc = prc;
        this.desc = desc;
    }

    public Produto(int cod) {
        this.cod = cod;
    }
    
    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public double getPrc() {
        return prc;
    }

    public void setPrc(float prc) {
        this.prc = prc;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
    
    
}
