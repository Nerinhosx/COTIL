<!--localhost/COTIL/2024/Desenvolvimento_de_Aplicacoes_Web/5- Maio/08/form.php-->
<?php
    session_start();
    $msg = "";
    $loginDef = "Nerson";
    $passwDef = crypt("12345678", "nerson");
    if($_SERVER["REQUEST_METHOD"] === "POST"){
        $login = $_POST["login"];
        $passw = $_POST["passw"];

        if((strlen(trim($login))==0) || (strlen(trim($passw))==0)){
            $msg = "Login e/ou senha não informado(s).";
        }
        else if(strlen($login)<5){
            $msg = "O login precisa ter 5 ou mais caracteres.";   
        }
        else if(strlen($passw)<8){
            $msg = "A senha precisa ter 8 ou mais caracteres.";
        }
        else if($login==$loginDef && crypt($passw, "nerson")==$passwDef){
            $_SESSION["login"] = $login;
            $_SESSION["password"] = $passw;
            $msg = "";
            header("Location: outrapagina.php");
        }
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login do Sistema</title>

    <style>
        section{
            width: 100%;
            height: 50vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        form{
            font-size: 30px;
        }

        #btn{
            width: 176px;
            height: 30px;
        }
    </style>
</head>
<body>
    <header>
        <h1 style="text-align: center; font-size: 54px;">Informe suas credenciais</h1>
        <hr>
    </header>

    <section>
        <form method="POST">
            <label for="login">Login:</label><br>
            <input type="text" name="login">

            <br><br>

            <label for="passw">Senha:</label><br>
            <input type="password" name="passw">

            <br><br>

            <input type="submit" id="btn" value="Logar">
        </form>

        <br><br>
        <?=$msg?>
    </section>
</body>
</html>