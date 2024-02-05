/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.ArrayList;
import model.Produto;

/**
 *
 * @author aluno
 */
public class ProdutoControl {
    ArrayList<Produto> listaProd;
    
    public void Cadastrar(int cod, String desc, double prc){
        Produto p = new Produto(cod, desc, prc);
        listaProd.add(p);
    }
    
    public ProdutoControl(){
        listaProd = new ArrayList<>();
    }
    
    public void Mostra()
    {
        for(Produto p : listaProd)
        {
            System.out.println(p.getCod() + "\n" + p.getDesc() + "\n" + p.getPrc());
            System.out.println("-------------------------------------------------");
        }
    }
}
