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
import org.hibernate.query.Query;

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

        //cria os professores
        Professor pf1 = new Professor(7, "Xandão", 32750);
        Professor pf2 = new Professor(3, "Tânia", 45635);
        Professor pf3 = new Professor(9, "Fernanda", 28345);
        List<Disciplina> listaDiscTan = new ArrayList<Disciplina>();
        listaDiscTan.add(disc1);
        listaDiscTan.add(disc2);
        pf2.setListaDisciplinas(listaDiscTan);
        List<Disciplina> listaDiscXand = new ArrayList<Disciplina>();
        listaDiscXand.add(disc3);
        pf1.setListaDisciplinas(listaDiscXand);

        //cria os departamentos
        Departamento dp1 = new Departamento(123, "Infraestrutura e Tecnologia");
        Departamento dp2 = new Departamento(456, "Saúde");
        Departamento dp3 = new Departamento(789, "Processos Industriais");

        //cria os funcionários
        Funcionario fu1 = new Funcionario(1, "Weverton", 4750.50);
        Funcionario fu2 = new Funcionario(2, "Marielza", 6845.70);
        Funcionario fu3 = new Funcionario(3, "Judite", 5365.25);

        //salva alunos
        session.save(al1);
        session.save(al2);
        session.save(al3);

        //salva disciplinas
        session.save(disc1);
        session.save(disc2);
        session.save(disc3);

        //salva professores
        session.save(pf1);
        session.save(pf2);
        session.save(pf3);

        //salva os departamentos
        session.save(dp1);
        session.save(dp2);
        session.save(dp3);

        //salva os funcionários
        session.save(fu1);
        session.save(fu2);
        session.save(fu3);

        session.getTransaction().commit();

        //Printa dados dos professores
        String hql = "from Professor";
        Query query = session.createQuery(hql);
        List<Professor> result = query.list();
        for(Professor p : result)
        {
            System.out.println("Nome: "+ p.getNome() +"\nCódigo: "+ p.getCodigo() +"\nSalário: "+ p.getSalario() +"\n-------------------------------------------------");
        }

        //Printa dados dos funcionários
        String fql = "from Funcionario";
        Query fquery = session.createQuery(fql);
        List<Funcionario> fresult = fquery.list();
        for(Funcionario f : fresult){
            System.out.println("Nome: "+ f.getNome() +"\nCódigo: "+ f.getId() +"\nSalário: "+ f.getSalario() +"\n-------------------------------------------------");
        }

        //Printa dados dos departamentos
        String dql = "from Departamento";
        Query dquery = session.createQuery(dql);
        List<Departamento> dresult = dquery.list();
        for(Departamento d : dresult){
            System.out.println("Nome: "+ d.getNome() +"\nCódigo: "+ d.getCod() +"\n-------------------------------------------------");
        }

        session.close();
        HibernateUtil.shutdown();
    }
}
