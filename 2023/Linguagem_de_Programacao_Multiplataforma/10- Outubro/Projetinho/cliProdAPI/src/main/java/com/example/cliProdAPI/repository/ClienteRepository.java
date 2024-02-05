package com.example.cliProdAPI.repository;

import com.example.cliProdAPI.model.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ClienteRepository extends JpaRepository <Cliente, Integer>{

    @Query ("select c from Cliente c where c.nome like %?1%")
    List<Cliente> findByParteNome(String nome);

    @Query ("select c from Cliente c where c.email like ?1")
    List<Cliente> findByEmail(String email);

    @Query ("select c from Cliente c where c.nome like %?1% and c.email like %?2%")
    List<Cliente> findByNomeEmail(String nome, String email);
}
