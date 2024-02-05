/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.DAO;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Produto;

/**
 *
 * @author aluno
 */
public class ProdDAO {
    Connection con = null;
    
    public void inserirProd(Produto p) throws SQLException, ClassNotFoundException
    {
        con = new Conexao().getConnection();
        String sql = ("Insert into produtoJava (Codigo, Preco, Descricao) values (?,?,?)");
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setInt(1, p.getCod());
        stmt.setDouble(2, p.getPrc());
        stmt.setString(3, p.getDesc());
        stmt.execute();
        stmt.close();
    }
    
    public ArrayList<Produto> buscarProd() throws SQLException, ClassNotFoundException
    {
        ResultSet rs;
        ArrayList<Produto> lista = new <Produto>ArrayList();
        con = new Conexao().getConnection();
        String sql = "Select * from produtoJava";
        PreparedStatement stmt = con.prepareStatement(sql);
        rs = stmt.executeQuery();
        while(rs.next())
        {
            int cod  = rs.getInt("Codigo");
            Double prc = rs.getDouble("Preco");
            String desc = rs.getString("Descricao");
            Produto p1 = new Produto(cod, prc, desc);
            lista.add(p1);
        }
        stmt.close();
        con.close();
        return lista;
    }
    
    public void excluirProd(int cod) throws SQLException, ClassNotFoundException
    {
        con = new Conexao().getConnection();
        String sql = ("Delete from produtoJava where Codigo = '"+ cod +"'");
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.execute();
        stmt.close();
    }
}
