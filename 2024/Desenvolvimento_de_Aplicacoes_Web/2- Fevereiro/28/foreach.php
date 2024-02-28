<?php

$cores=array("Branco", "Verde", "Laranja");

foreach($cores as $cor){
    echo $cor . "<br>";
}

$produtos = array("18.9", "199.99", "50.00");
$total = 0;

foreach ($produtos as $valor){
    $total = $total + $valor;
}

echo $total;

?>