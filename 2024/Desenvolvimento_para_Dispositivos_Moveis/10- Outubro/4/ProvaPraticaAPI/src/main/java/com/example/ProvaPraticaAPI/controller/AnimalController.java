package com.example.ProvaPraticaAPI.controller;

import com.example.ProvaPraticaAPI.model.Animal;
import com.example.ProvaPraticaAPI.repository.AnimalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/apiAnimal")
public class AnimalController {

    @Autowired
    AnimalRepository animalRepo;

    @GetMapping("/todos")
    public List<Animal> buscarTodosAnimais(){
        return animalRepo.findAll();
    }
}
