<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professor</title>
</head>
<body>
    <?php
        if(!isset($_SESSION['login'])){
            $msg = "Para acessar essa página, você deve efetuar o <a href =\"indexLoginRedirect.php\">login</a>";
            header("Location: erroRedirect.php?msg=" . $msg);
        }
        else{
            include("contentProfessor.html");
        }
    ?>

    <!--
        <a href="">Controle de Frequência</a>
        <a href="">Controle de Notas</a>
        <hr>

        <h1>Professor - Login: </?=$_GET['login']?></h1>
        <p>Bem-vindo Professor(a)</p>
        <h2>Recados</h2>
        <p>Caros professores, favor lançar as datas e pesos das avaliações no sistema Sophia até 31/03/2024</p>
    -->
</body>
</html>