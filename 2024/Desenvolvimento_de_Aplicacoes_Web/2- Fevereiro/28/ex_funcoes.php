<?php
    function calcMedia($n1, $n2){
        $media = ($n1 + $n2)/2;
        return $media;
    }

    $media = calcMedia(7.0, 9.0);

    $msg = "Média = " . $media . "<br>";

    if($media>=6){
        $msg = $msg . "<br><span id='aprovado'>APROVADO!</span>";
    } else{
        $msg = $msg . "<br><span id='reprovado'>REPROVADO</span>";
    }
?>

<html>
    <head>
        <title>Média</title>
        
        <style>
            #reprovado{
                background-color: red;
                color: white;
                font-weight: bold;
            }

            #aprovado{
                background-color: green;
                color: white;
                font-weight: bold;
            }
        </style>
    </head>

    <body>
        <?= $msg ?> <!-- Esse jeito de "abrir" o php serve apenas para mostrar variável -->
    </body>
</html>