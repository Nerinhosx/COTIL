<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Controle de Alunos</title>
</head>
<body>
    
    <?php
        session_start();
        if(isset($_SESSION["logado"]) && $_SESSION["logado"] == "ALUNO"){
            echo "<h2>Sistema Acadêmico</h2>
                <h3>Bem-Vindo a área do aluno!</h3>
                <br><br>
                <a href='logout.php'>Logout</a>
            ";
        }
        else{
            echo "Por favor, faça seu <a href='login.php'>login</a>";
        }
    ?>

</body>
</html>