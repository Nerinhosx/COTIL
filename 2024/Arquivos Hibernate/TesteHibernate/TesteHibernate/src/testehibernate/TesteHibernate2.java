/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testehibernate;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author taniabasso
 */
public class TesteHibernate2 {
    public static void main(String[] args) {
        
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
     
            //primeiro cria as disciplinas
            Disciplina disc1 = new Disciplina (1,"java", 80);
            Disciplina disc2 = new Disciplina (2, "estrutura de dados", 40);
            Disciplina disc3 = new Disciplina (3, "banco de dados", 40);
        
            //cria os alunos
            Aluno al1 =new Aluno(1234,"Tania");
            Aluno al2 =new Aluno(5678,"Leandro");
            Aluno al3 =new Aluno(9012,"Maria");
           
           //salva alunos
           session.save(al1);
           session.save(al2);
           session.save(al3);

        session.save(disc1);
        session.save(disc2);
        session.save(disc3);
           
        session.getTransaction().commit();
        


        session.close();
        HibernateUtil.shutdown();
    }
}
