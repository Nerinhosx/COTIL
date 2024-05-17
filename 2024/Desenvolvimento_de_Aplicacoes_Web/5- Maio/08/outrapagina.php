<!--localhost/COTIL/2024/Desenvolvimento_de_Aplicacoes_Web/5- Maio/08/outrapagina.php-->
<?php
    session_start();
    if(!isset($_SESSION["login"])){
        include_once("erro.html");
    }else{
        include_once("outrapagina.html");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Outra página</title>

</head>
<body>
</body>
</html>