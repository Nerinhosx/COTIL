/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.ArrayList;
import model.Usuario;

/**
 *
 * @author aluno
 */
public class UsuarioControl {
    
    ArrayList<Usuario> listaUsuarios = new ArrayList<>();
    
    public UsuarioControl()
    {
        Usuario u1 = new Usuario("José", "123");
        Usuario u2 = new Usuario("Marcos", "987");
        Usuario u3 = new Usuario("Carlos", "456");
        listaUsuarios.add(u1);
        listaUsuarios.add(u2);
        listaUsuarios.add(u3);
    }
    
    public boolean verificaLogin(String telaNome, String telaSenha)
    {
        boolean achou = false;
        for(Usuario u: listaUsuarios)
        {
            if((u.getNome().equals(telaNome)) && (u.getSenha().equals(telaSenha)))
            {
                achou=true;
            }
        }
        return achou;
    }
    
    public String exibeMensagem()
    {
        return "Tá limpo!";
    }
}
