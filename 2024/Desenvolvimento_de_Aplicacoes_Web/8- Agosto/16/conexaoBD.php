<?php

try{
    //conexão PDO  // IP, nomeBD, usuario, senha
    $db = "mysql:host=143.106.241.3;dbname=cl202227;charset=utf8";

    $user = 'cl202227';
    $password = 'cl*04042007';

    $pdo = new PDO($db,$user,$password);

    //ativar o depurador de erros
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

} catch(PDOException $e){
    $output = 'Impossível conectar BD : ' . $e . '<br>';
    echo $output;
}