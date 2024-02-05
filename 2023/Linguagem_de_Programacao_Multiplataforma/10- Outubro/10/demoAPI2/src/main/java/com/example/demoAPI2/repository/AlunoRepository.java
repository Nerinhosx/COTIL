package com.example.demoAPI2.repository;

import com.example.demoAPI2.model.Aluno;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlunoRepository extends JpaRepository <Aluno, Integer> {

}
