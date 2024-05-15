<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Outra página</title>

    <style>
        body{
            text-align: center;
            font-size: 46px;
        }
    </style>
</head>
<body>
    Login: <?=$_SESSION["login"]?>
    <br><br>
    Senha: <?=$_SESSION["password"]?>
    <br><br>
    Deu bom 👌
</body>
</html>