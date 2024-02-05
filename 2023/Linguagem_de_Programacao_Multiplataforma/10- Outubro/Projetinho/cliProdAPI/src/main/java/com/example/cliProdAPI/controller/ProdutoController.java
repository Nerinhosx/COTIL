package com.example.cliProdAPI.controller;

import com.example.cliProdAPI.model.Cliente;
import com.example.cliProdAPI.repository.ProdutoRepository;
import com.example.cliProdAPI.model.Produto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping ("/apiProduto")
public class ProdutoController {

    @Autowired
    ProdutoRepository prodrepo;

    @PostMapping ("/inserir")
    public void cadastrarProduto(@RequestBody Produto prd)
    {
        prodrepo.save(prd);
    }

    @GetMapping ("/todos")
    public List<Produto> buscarTodosProdutos()
    {
        return prodrepo.findAll();
    }

    @GetMapping ("/todos/cod/{cod}")
    public Optional<Produto> buscarPorCod(@PathVariable("cod") int cod)
    {
        return prodrepo.findById(cod);
    }

    @GetMapping ("/todos/descricao/{descricao}")
    public List<Produto> buscarPorParteDaDescricao(@PathVariable("descricao") String desc)
    {
        return prodrepo.findByParteDesc(desc);
    }

    @GetMapping ("/todos/prcMenorQue/{preco}")
    public List<Produto> buscarPrecoMenor(@PathVariable("preco") double prc)
    {
        return prodrepo.findByPrcMenor(prc);
    }

    @GetMapping ("/todos/marca/{marca}")
    public List<Produto> buscarPorMarca(@PathVariable("marca") String marca)
    {
        return prodrepo.findByMarca(marca);
    }

    @GetMapping ("/todos/marcaPreco/{marca}/{preco}")
    public List<Produto> buscarPorMarcaEPreco(@PathVariable("marca") String marca, @PathVariable("preco") double prc)
    {
        return prodrepo.findByMarcaPrc(marca, prc);
    }

    @DeleteMapping ("/excluir")
    public void excluirProduto(@RequestBody Produto p)
    {
        prodrepo.delete(p);
    }

    @DeleteMapping ("/excluir/cod/{cod}")
    public void excluirPorCod(@PathVariable("cod") int cod)
    {
        prodrepo.deleteById(cod);
    }

    @PutMapping ("/atualizar")
    public void atualizarProduto(@RequestBody Produto p)
    {
        prodrepo.save(p);
    }
}
