<?php

/* Geração de arquivo CSV */

include("conexaoBD.php");

try {
    $stmt = $pdo->prepare("select * from alunos order by curso, nome");
    $stmt->execute();

    $fp = fopen('arquivoAlunos.csv', 'w');
    
    $colunasTitulo = array("ra", "nome", "curso");

    fputcsv($fp, $colunasTitulo);

    while ($row = $stmt->fetch()) {
        $ra = $row["ra"];
        $nome = $row["nome"];
        $curso = $row["curso"];

        $lista = array (
            array($ra, $nome, $curso)
        );
        
        foreach ($lista as $linha) {
            fputcsv($fp, $linha);
        }        
    }

    $msg = "Arquivo gerado: arquivoAlunos.csv";
    fclose($fp);

} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Listagem de Alunos em CSV</title>
</head>

<body>
    <h1>Listagem de Alunos em CSV</h1>
    <?= $msg ?>
</body>
</html>