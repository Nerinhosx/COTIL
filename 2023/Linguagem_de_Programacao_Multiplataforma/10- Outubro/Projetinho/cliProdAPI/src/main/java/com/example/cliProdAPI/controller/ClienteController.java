package com.example.cliProdAPI.controller;

import com.example.cliProdAPI.model.Cliente;
import com.example.cliProdAPI.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping ("/apiCliente")
public class ClienteController {

    @Autowired
    ClienteRepository clrepo;

    @PostMapping ("/inserir")
    public void cadastrarCliente(@RequestBody Cliente cli)
    {
        clrepo.save(cli);
    }

    @GetMapping ("/todos")
    public List<Cliente> buscarTodosClientes()
    {
        return clrepo.findAll();
    }

    @GetMapping ("/todos/cod/{cod}")
    public Optional<Cliente> buscarPorCod(@PathVariable("cod") int cod)
    {
        return clrepo.findById(cod);
    }

    @GetMapping ("/todos/nome/{nome}")
    public List<Cliente> buscarPorParteDoNome(@PathVariable("nome") String nome)
    {
        return clrepo.findByParteNome(nome);
    }

    @GetMapping ("/todos/email/{email}")
    public List<Cliente> buscarPorEmail(@PathVariable("email") String email)
    {
        return clrepo.findByEmail(email);
    }

    @GetMapping ("/todos/nomeEmail/{nome}/{email}")
    public List<Cliente> buscarPorNomeEmail(@PathVariable("nome") String nome, @PathVariable("email") String email)
    {
        return clrepo.findByNomeEmail(nome, email);
    }

    @DeleteMapping ("/excluir")
    public void excluirCliente(@RequestBody Cliente cli)
    {
        clrepo.delete(cli);
    }

    @DeleteMapping ("/excluir/cod/{cod}")
    public void excluirPorCod(@PathVariable("cod") int cod)
    {
        clrepo.deleteById(cod);
    }

    @PutMapping ("/atualizar")
    public void atualizarCliente(@RequestBody Cliente cli)
    {
        clrepo.save(cli);
    }
}
