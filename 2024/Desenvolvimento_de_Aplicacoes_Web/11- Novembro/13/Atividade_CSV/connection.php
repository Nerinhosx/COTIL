<?php
    /*conexaoBD.php*/

    try {        
        // conexão PDO    // IP, nomeBD, usuario, senha    
        $db =  'mysql:host=143.106.241.3;dbname=cl202079;charset=utf8';
        $user = 'cl202079';
        $passwd = 'cl*27072006';
        $pdo = new PDO($db, $user, $passwd);
        
        // ativar o depurador de erros
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);        
    } catch (PDOException $e) {
        $output = 'Impossível conectar BD : ' . $e . '<br>';
        echo $output;
    }    
?>