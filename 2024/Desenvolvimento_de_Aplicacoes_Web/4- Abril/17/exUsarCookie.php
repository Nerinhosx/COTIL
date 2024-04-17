<?php

    if(!isset($_COOKIE["InfoUser-Nome"])){

        $msg = "Você não é cadastrado em nosso site! Para ter acesso ao conteúdo exclusivo do assinante, <a href ='exCookieCadastro.php'>clique aqui!</a>";
    }
    else{
        $nome = $_COOKIE["InfoUser-Nome"];
        $idade = $_COOKIE["InfoUser-Idade"];
        $countV = $_COOKIE["InfoUser-contaVisitas"];

        if($idade<18){
            $msg = "<span style='color: red;'>Você não tem idade para acessar esse site!</span>";
        }
        else{
            $cor = $_COOKIE["InfoUser-Cor"];
            
            if($countV>0){
                $msg = "Olá". $nome . ". Bem-vindo(a) de volta ao nosso site!";
            }
        }
    }
?>