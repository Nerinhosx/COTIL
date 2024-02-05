/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.ArrayList;
import model.Atleta;

/**
 *
 * @author aluno
 */
public class AtletaControl {
    
    ArrayList<Atleta> lista;
    
    public AtletaControl(){
        lista = new <Atleta>ArrayList();
    }
    
    public void cadAtleta(int codTela, String nomeTela, double pesoTela, double altTela, int idadeTela){
        Atleta a = new Atleta(codTela, nomeTela, pesoTela, altTela, idadeTela);
        lista.add(a);
    }
    
    public double medP(){
        double medP=0;
        int cont=0;
        for(Atleta a : lista)
        {
            medP+=a.getPeso();
            cont++;
        }
        medP=medP/cont;
        return medP;
    }
    
    public String maisAlt(){
        String nm="Não há.";
        int cont=0;
        double maior=0;
        for(Atleta a: lista)
        {
            if(cont==0)
            {
                nm = a.getNome();
                maior = a.getAlt();
            }
            else{
                if(maior < a.getAlt())
                {
                    maior = a.getAlt();
                    nm = a.getNome();
                }
            }
            cont++;
        }
        return nm;
    }
    
    public int maiId()
    {
        int id=0;
        for(Atleta a : lista)
        {
            if(a.getIdade()>=18)
            {
                id++;
            }
        }
        return id;
    }
    
    public int menId()
    {
        int id=0;
        for(Atleta a : lista)
        {
            if(a.getIdade()<18)
            {
                id++;
            }
        }
        return id;        
    }
    
    public String mostra()
    {
        String m="";
        for(Atleta a : lista)
        {
            m = (m + "\n---------------------------------\nNome:" + a.getNome() + "\nCódigo:" + a.getCod());
        }
        return m;
    }
    
    public String buscaCod(int cod)
    {
        String inf="Nenhum atleta encontrado.";
        for(Atleta a : lista)
        {
            if(a.getCod() == cod)
            {
                inf = (a.getNome() + "\n" + a.getCod() + "\n" + a.getPeso() + "\n" + a.getAlt() + "\n" + a.getIdade());
            }
        }
        return inf;
    }
    
    public String buscaNome(String nome)
    {
        String inf="";
        for(Atleta a : lista)
        {
            if(a.getNome().equals(nome))
            {
                inf = (inf + a.getNome() + "\n" + a.getCod() + "\n" + a.getPeso() + "\n" + a.getAlt() + "\n" + a.getIdade() + "\n------------------------\n");
            }
        }
        return inf;
    }
    
    public String buscaPeso(double peso)
    {
        String inf="";
        for(Atleta a : lista)
        {
            if(a.getPeso() == peso)
            {
                inf = (inf + a.getNome() + "\n" + a.getCod() + "\n" + a.getPeso() + "\n" + a.getAlt() + "\n" + a.getIdade() + "\n------------------------\n");
            }
        }
        return inf;
    }
    
    public String buscaAlt(double alt)
    {
        String inf="";
        for(Atleta a : lista)
        {
            if(a.getAlt() == alt)
            {
                inf = (inf + a.getNome() + "\n" + a.getCod() + "\n" + a.getPeso() + "\n" + a.getAlt() + "\n" + a.getIdade() + "\n------------------------\n");
            }
        }
        return inf;
    }
    
    public String buscaIdade(int idade)
    {
        String inf="";
        for(Atleta a : lista)
        {
            if(a.getIdade() == idade)
            {
                inf = (inf + a.getNome() + "\n" + a.getCod() + "\n" + a.getPeso() + "\n" + a.getAlt() + "\n" + a.getIdade() + "\n------------------------\n");
            }
        }
        return inf;
    }
    
    public boolean excluir(int codEx)
    {
        boolean exc = false;
        for(Atleta a : lista)
        {
            if(a.getCod() == codEx)
            {
                lista.remove(a);
                exc = true;
            }
        }
        return exc;
    }
    
    public boolean verificaExiste(int codTela)
    {
        boolean ex = false;
        for(Atleta a : lista)
        {
            if(codTela == a.getCod())
            {
                ex = true;
            }
        }
        return ex;
    }
}
