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

?>