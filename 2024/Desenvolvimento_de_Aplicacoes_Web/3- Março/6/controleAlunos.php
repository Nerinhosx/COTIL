<?php

    $op = $_REQUEST["op"];
    echo "Operação: " . $op;
    echo "<hr>";

    $ra = $_REQUEST["ra"];

    if( $op == "save"){

        $nome = $_REQUEST["nome"];
        $curso = $_REQUEST["curso"];

        echo "Nome: " . $nome;
        echo "<br>";

        echo "Curso: " . $curso;
        echo "<br>";

        echo "salvando...";

    } else if($op == "delete"){

        $ra = $_REQUEST["ra"];

        echo "RA: " . $ra;

        echo "deletando...";

    } else if($op == "update"){

        $ra = $_REQUEST["ra"];
        $nome = $_REQUEST["nome"];
        $curso = $_REQUEST["curso"];

        echo "RA: " . $ra;
        echo "<br>";

        echo "Nome: " . $nome;
        echo "<br>";

        echo "Curso: " . $curso;
        echo "<br>";

        echo "alterando...";

    } else if($op == "search"){

        $ra = $_REQUEST["ra"];

        echo "RA: " . $ra;
        echo "<br>";

        echo "buscando...";
    }
?>