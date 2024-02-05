/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import java.util.ArrayList;
import model.DAO.ProdDAO;
import model.Produto;

/**
 *
 * @author aluno
 */
public class ProdControl {
    public void inserir(int cod, double prc, String desc) throws SQLException, ClassNotFoundException
    {
        Produto p = new Produto(cod, prc, desc);
        ProdDAO pDAO = new ProdDAO();
        pDAO.inserirProd(p);
    }
    
    public ArrayList<Produto> buscar() throws SQLException, ClassNotFoundException
    {
        ProdDAO pDAO = new ProdDAO();
        return pDAO.buscarProd();
    }
    
    public void excluir(int cod) throws SQLException, ClassNotFoundException
    {
        ProdDAO cDAO = new ProdDAO();
        cDAO.excluirProd(cod);
    }
}
