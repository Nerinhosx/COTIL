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

<?php
        //$op = $_REQUEST["op"];

        if((trim($_REQUEST["nota1"])) != "" && (trim($_REQUEST["nota2"]) != ""))
        {
            $nota1 = $_REQUEST["nota1"];
            $nota2 = $_REQUEST["nota2"];
            $media = ($nota1 + $nota2)/2;
        }

        echo "Média = " . $media;
        echo "<hr>";

        if ($media >=6){
            echo "<span class='ap'>Aprovado!</span>";
        }else if(($media < 6) && ($media >3)){
            echo "<span class='dp'>Dependência!</span>";
        } else{
            echo "<span class='rep'>Reprovado!</span>";
        }
?>