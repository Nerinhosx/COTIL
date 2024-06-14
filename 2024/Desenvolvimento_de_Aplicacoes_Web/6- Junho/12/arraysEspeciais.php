<?php
    $a = array(
        "ra"=>1234, 
        "serie"=>3,
        "aluno"=>array(
            "nome"=>"José A.",
            "sobrenome"=>"Matioli",
        ),
    );
    print_r($a); //Impressão de valores

    echo "<br><br>";

    echo $a["ra"] . "<br>";
    echo $a["serie"] . "<br>";
    echo $a["aluno"]["nome"] . "<br>";
    echo $a["aluno"]["sobrenome"] . "<br><br>";

    $b = array("Maçã", "Melão", "Uva");
    
    print_r($b);
    unset($b[1]);
    print_r($b);
    echo "<br>" . sizeof($b) . "<br>";//Tamanho do array (também há o count)
    $b[1] = "Melão";
    foreach($b as $fruits){
        echo $fruits . " - ";
    }

    $existe1 = array_key_exists("ra", $a); //Verifica se existe a chave (1º parâmetro) no array (2º parâmetro). Se existir, retorna true, se não, false
    $keys = array_keys($a); //Retorna as chaves do array informado
    $existe2 = array_search("ra", $a); //Busca se existe a chave (1º parâmetro) no array (2º parâmetro). Se existir, retorna a chave, se não, não retorna nada

    array_push($a, "(19) 99768-4572");
    print_r($a);

    array_pop($a);
    print_r($a);

    array_shift($a);
    print_r($a);

    array_unshift($a);
    print_r($a);

    function insereTexto($valor){
        return "Dado: " . $valor . "<br>";
    }

    $azinho = array_map("insereTexto", $a);
    print_r($a);

?>