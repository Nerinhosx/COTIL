<?php
        $nota1 = 8;
        $nota2 = 6;
        $media = ($nota1 + $nota2)/2;

        if ($media >=6){
            $situacao = "Aprovado";
            $formatacao = "ap";
        }else if(($media < 6) && ($media >3)){
            $situacao = "Dependencia";
            $formatacao = "dp";
        } else{
            $situacao = "Reprovado";
            $formatacao = "rep";
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
    <?= $media ?>

    <hr>

    <span class="<?= $formatacao ?>">
        <?= $situacao ?>
    </span>
</body>
</html>