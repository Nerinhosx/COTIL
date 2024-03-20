<?php
    if($_SERVER["REQUEST_METHOD"] === 'GET'){
        $media = "";
        $situacao = "";
    }
    else if($_SERVER["REQUEST_METHOD"] === "POST"){
        if((trim($_REQUEST["nota1"])) != "" && (trim($_REQUEST["nota2"]) != ""))
        {
            $nota1 = $_REQUEST["nota1"];
            $nota2 = $_REQUEST["nota2"];

            $media = ($nota1 + $nota2)/2;

            if ($media >= 6){
                $situacao = "<span class='ap'>Aprovado!</span>";
            }else if(($media < 6) && ($media > 3)){
                $situacao = "<span class='dp'>Dependência!</span>";
            } else{
                $situacao = "<span class='rep'>Reprovado!</span>";
            }
        }
        else{
            echo "<span>Informe as duas notas!</span>";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Média</title>

    <style type="text/css">
        .ap{
            color: white;
            background-color: green;
        }

        .dp{
            color: black;
            background-color: yellow;
        }

        .rep{
            color: white;
            background-color: red;
        }
    </style>

</head>
<body>

    <form method="POST">
        <label>Nota 1:</label>
        <input type="text" name="nota1" required>

        <br><br>

        <label>Nota 2:</label>
        <input type="text" name="nota2" required>

        <br><br>

        <input type="submit" value="Calcular">
    </form>

    <hr>
    Média: <?= $media?>
    <br>
    <?= $situacao?>
</body>
</html>