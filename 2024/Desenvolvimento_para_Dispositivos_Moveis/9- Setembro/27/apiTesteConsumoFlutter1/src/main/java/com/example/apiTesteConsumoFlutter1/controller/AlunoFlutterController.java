package com.example.apiTesteConsumoFlutter1.controller;

import com.example.apiTesteConsumoFlutter1.model.AlunoFlutter;
import com.example.apiTesteConsumoFlutter1.repository.AlunoFlutterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping ("/apiAlunoFlutter")
public class AlunoFlutterController {

    @Autowired
    AlunoFlutterRepository alFlRepo;

    @GetMapping("/todos")
    public List<AlunoFlutter> buscarTodosAlunos(){
        return alFlRepo.findAll();
    }
}
