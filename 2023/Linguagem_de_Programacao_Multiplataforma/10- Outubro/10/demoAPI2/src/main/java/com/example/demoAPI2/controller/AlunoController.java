package com.example.demoAPI2.controller;

import com.example.demoAPI2.model.Aluno;
import com.example.demoAPI2.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/apiAluno")
public class AlunoController {

    @Autowired
    AlunoRepository alrepo;

    @GetMapping ("/todos")
    public List<Aluno> buscarTodosAlunos()
    {
        return alrepo.findAll();
    }
}
