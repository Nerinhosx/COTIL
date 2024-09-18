<!DOCTYPE html>
<html lang="pt-br">
<head>

    <link rel="stylesheet" type="text/css" href="Style_fundo_e_texto.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exclusão de Alunos</title>
</head>
<body>
    <nav>
        <a href="index.html">HOME</a> |
        <a href="consultaPorLink.php">Consulta</a>
    </nav>
    <hr>
    
    <h1>Exclusão de Alunos</h1>
    <?php
        $ra = $_REQUEST["raAl"];

        include('conexaoBD.php');
        if((isset($ra)) && ($ra!="")){
            $stmt = $pdo->prepare("delete from alunos where ra = :ra");
            $stmt->bindParam(":ra", $ra);

            try{
                $stmt->execute();
            }
            catch(PDOException $e){
                echo "Erro:" . $e->getMessage();
            }
        }
        $pdo = null;
    ?>
</body>
</html>