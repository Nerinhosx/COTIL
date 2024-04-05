<?php
    if($_SERVER["REQUEST_METHOD"] === "POST"){

        $login = $_POST["login"];
        $password = $_POST["password"];

        if((trim($login) != "") && (trim($password) != "")){
            if(($login == "professor") && ($password == '1234')){
                session_start(); //Inicia a sessão
                $_SESSION["login"] = $login; //Adiciona a variável "login" no espaço "login" da sessão
                header("Location: professorRedirect.php");
            }
            else if(($login == "aluno") && ($password == '5678')){
                session_start(); //Inicia a sessão
                $_SESSION["login"] = $login; //Adiciona a variável "login" no espaço "login" da sessão
                header("Location: alunoRedirect.php");
            }
            else{
                //header("Location: erroRedirect.html");
                header("Location: erroRedirect.php?msg=". $msg = 'Login e/ou senha inválido(s)');
            }
        }
        else{
            echo "Informe seu login e senha.";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <form method="POST">
        <label for="login">Login:</label><br>
        <input type="text" name="login" required>

        <br><br>

        <label for="password">Senha:</label><br>
        <input type="password" name="password" required>
        <input type="submit" value="OK">
        <hr>

    </form>
</body>
</html>