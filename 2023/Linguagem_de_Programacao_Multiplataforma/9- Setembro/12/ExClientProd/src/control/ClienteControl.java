/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import model.Cliente;
import model.DAO.ClienteDAO;

/**
 *
 * @author aluno
 */
public class ClienteControl {
    public void inserir(String cpf, String nome, String tel) throws SQLException, ClassNotFoundException
    {
        Cliente c = new Cliente(cpf, nome, tel);
        ClienteDAO cDAO = new ClienteDAO();
        cDAO.inserirCliente(c);
    }
}
