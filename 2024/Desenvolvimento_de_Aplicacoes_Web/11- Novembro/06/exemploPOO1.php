<?php

    class Pessoa{
        //Atributo
        public $nome;

        //Método
        public function falar(){
            //Por algum motivo não precisa do '$' no nome
            return "O meu nome é: " . $this->nome;
        }
    }

    //Instanciando a classe
    $pessoa = new Pessoa();

    //Definindo um atributo
    $pessoa->nome = "Nerson";

    //Chamando um método da classe
    echo $pessoa->falar();
?>