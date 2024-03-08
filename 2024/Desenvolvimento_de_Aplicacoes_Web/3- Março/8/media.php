<?php
        $op = $_REQUEST["op"];
        $nota1 = $_REQUEST["nota1"];
        $nota2 = $_REQUEST["nota2"];
        $media = ($nota1 + $nota2)/2;

        echo "Média = " . $media;
        echo "<hr>";

        if ($media >=6){
            echo "<span class='ap'>Aprovado!</span>";
        }else if(($media < 6) && ($media >3)){
            echo "<span class='dp'>Dependencia!</span>";
        } else{
            echo "<span class='rep'>Reprovado!</span>";
        }
?>