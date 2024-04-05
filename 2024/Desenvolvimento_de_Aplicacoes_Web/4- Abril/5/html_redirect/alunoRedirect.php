<?php
    session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aluno</title>
</head>
<body>
    <?php
        if(!isset($_SESSION["login"])){
            $msg = "Para acessar essa página, você deve efetuar o <a href =\"indexLoginRedirect.php\">login</a>";
            header('Location: erroRedirect.php?msg='. $msg);
        } else{
            include("contentAluno.html");
        }
    ?>
    <!--
    <a href="">Controle de faltas</a>
    <a href="">Boletim</a>
    <hr>

    <h1>Aluno - login: </?=$_GET['login']?></h1>
    <p>Bem-vindo </?=$_GET['login']?></p>
    <h2>Recados</h2>
    <p>Caros alunos, favor inscrever-se na Oficina de Artes até 28/03/2024</p>
    -->
</body>
</html>