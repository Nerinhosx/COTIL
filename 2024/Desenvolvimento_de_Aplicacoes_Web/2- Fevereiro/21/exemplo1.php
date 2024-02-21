<?php
    //http://localhost/pasta/arquivo
    //define cria uma variavel constante
    //isset verifica se a variavel foi inicializada


    echo "Hello World!<br>";
    echo "Meu primeiro código em <b>PHP</b><br>";
    echo "Jedson🤓<br><br><hr>";

    //variaveis

    $nome = "COTIL";
    echo $nome;
    echo "<br><br>";

    var_dump($nome); //exive o tipo de dado, tamanho usado e valor
    echo "<br><br>";

    $outroNome = "UNICAMP";

    echo $nome . "" . $outroNome;
    echo "<br><br>";

    echo "<hr>";

    $nota1 = 8;
    $nota2 = 7;

    if (isset($nota1) && isset($nota2)){
        $media = ($nota1 + $nota2)/2;
        echo "Média =" . $media;
    } else{
        echo "Informe as duas notas!";
    }

    echo "<br><br>";
    define("PI", 3.14);
    $media2 = 4.5 * PI;
    echo $media2;
    
?>