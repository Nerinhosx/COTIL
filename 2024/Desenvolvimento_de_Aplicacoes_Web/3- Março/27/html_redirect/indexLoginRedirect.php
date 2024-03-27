<?php
    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $pagina = "";
    }
    else if($_SERVER["REQUEST_METHOD"] === "POST"){
        $pagina = "";

        $login = $_POST["login"];
        $password = $_POST["password"];

        if((trim($login) != "") && (trim($password) != "")){
            if(($login == "professor") && ($password == '1234')){
                //header("Location: professorRedirect.html");
                header("Location: professorRedirect.php?login=". $login);
            }
            else if(($login == "aluno") && ($password == '5678')){
                //header("Location: alunoRedirect.html");
                header("Location: alunoRedirect.php?login=". $login);
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