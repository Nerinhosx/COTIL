/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.ArrayList;
import model.Aluno;

/**
 *
 * @author aluno
 */
public class AlunoControl {
    
    ArrayList <Aluno> listaAluno;
    
    public AlunoControl()
    {
        listaAluno  = new ArrayList <>();
    }

    public void cadastrar(int raTela, String nomeTela)
    {
        Aluno a = new Aluno(raTela, nomeTela);
        listaAluno.add(a);
        
        for(Aluno al:listaAluno)
        {
            System.out.println(al.getRa());
            System.out.println(al.getNome());
            System.out.println("----------------------------------");
        }
    }
    
    public String mostrar()
    {
        String result="";
        for(Aluno al: listaAluno)
        {
            result = result.concat(al.getRa() + "\n" + al.getNome() + "\n-----------------------------------------\n");
        }
        return result;
    }
    
    public void excluir(int raTela)
    {
        for(Aluno al: listaAluno)
        {
            if(al.getRa()==raTela)
            {
                listaAluno.remove(al);
                break;
            }
        }
    }
}