/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
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
        pDAO.inserirProduto(p);
    }
}
