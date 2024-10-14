<?php
$filename = fopen("log.txt", 'a+');

$user = "Nerson";
$func = "comerManga.php";
$op = "comer";

fwrite($filename, $user . " - " . $func . " - " . $op . " - " . date("Y-m-d H:i:s") . "\n");

echo "Tamanho do arquivo: " . filesize("log.txt") . "<br>";

fclose($filename);

echo "Arquivo criado com sucesso";
