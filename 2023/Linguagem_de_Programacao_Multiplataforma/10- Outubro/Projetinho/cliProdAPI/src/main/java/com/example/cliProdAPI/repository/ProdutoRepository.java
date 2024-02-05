package com.example.cliProdAPI.repository;


import com.example.cliProdAPI.model.Produto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProdutoRepository extends JpaRepository <Produto, Integer> {

    @Query ("select p from Produto p where p.descricao like %?1%")
    List<Produto> findByParteDesc(String desc);

    @Query ("select p from Produto p where p.preco < ?1")
    List<Produto> findByPrcMenor(double prc);

    @Query ("select p from Produto p where p.marca like ?1")
    List<Produto> findByMarca(String marca);

    @Query ("select p from Produto p where p.marca like %?1% and p.preco < ?2")
    List<Produto> findByMarcaPrc(String marca, double prc);
}
