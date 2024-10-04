package com.example.ProvaPraticaAPI.repository;

import com.example.ProvaPraticaAPI.model.Animal;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnimalRepository extends JpaRepository <Animal, String> {
}
