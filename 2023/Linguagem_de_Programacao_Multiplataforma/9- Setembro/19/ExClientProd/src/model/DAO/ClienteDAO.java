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
import model.Cliente;

/**
 *
 * @author aluno
 */
public class ClienteDAO {
    Connection con = null;
    
    public void inserirCliente(Cliente c) throws SQLException, ClassNotFoundException
    {
        con = new Conexao().getConnection();
        String sql = ("Insert into clienteJava (CPF, Nome, Telefone) values (?,?,?)");
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, c.getCPF());
        stmt.setString(2, c.getNome());
        stmt.setString(3, c.getTel());
        stmt.execute();
        stmt.close();
    }
    
    public ArrayList<Cliente> buscarCliente() throws SQLException, ClassNotFoundException
    {
        ResultSet rs;
        ArrayList<Cliente> lista = new <Cliente>ArrayList();
        con = new Conexao().getConnection();
        String sql = "Select * from clienteJava";
        PreparedStatement stmt = con.prepareStatement(sql);
        rs = stmt.executeQuery();
        while(rs.next())
        {
            String CPF = rs.getString("CPF");
            String Nome = rs.getString("Nome");
            String Tel = rs.getString("Telefone");
            Cliente c1 = new Cliente(CPF, Nome, Tel);
            lista.add(c1);
        }
        stmt.close();
        con.close();
        return lista;
    }
    
    public void excluirCliente(String CPF) throws SQLException, ClassNotFoundException
    {
        con = new Conexao().getConnection();
        String sql = ("Delete from clienteJava where CPF = '"+ CPF +"'");
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.execute();
        stmt.close();
    }
}
