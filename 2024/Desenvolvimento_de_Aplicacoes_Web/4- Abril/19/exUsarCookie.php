<?php
    //localhost/COTIL/2024/Desenvolvimento_de_Aplicacoes_Web/4- Abril/19/exUsarCookie.php

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
            else{
                $msg = "Olá". $nome .". Bem-vindo(a) ao nosso site!";
                $countV++;
                setcookie("InfoUser-contaVisitas", $countV, time()+3600, "/");
            }
        }
    }
?>

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
</head>
<body style="background-color: <?=$cor ?>">

    <?=$msg ?>

</body>
</html>