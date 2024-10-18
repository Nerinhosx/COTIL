package com.example.apiTesteConsumoFlutter1.controller;

import com.example.apiTesteConsumoFlutter1.model.AlunoFlutter;
import com.example.apiTesteConsumoFlutter1.repository.AlunoFlutterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping ("/apiAlunoFlutter")
public class AlunoFlutterController {

    @Autowired
    AlunoFlutterRepository alFlRepo;

    @GetMapping("/todos")
    public List<AlunoFlutter> buscarTodosAlunos(){
        return alFlRepo.findAll();
    }

    @PostMapping("/cadastro")
    public void saveAluno(@RequestBody AlunoFlutter alunoF){
        alFlRepo.save(alunoF);
    }
}
