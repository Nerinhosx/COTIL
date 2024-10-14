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
            try{
                //Pegando o caminho local em que o arquivo está salvo
                $stmt = $pdo->prepare("select arquivoFoto from alunos where ra = :ra");
                $stmt->bindParam(":ra", $ra);
                $stmt->execute();
                $row = $stmt->fetch();
                $arquivoFoto = $row['arquivoFoto'];

                //Removendo o aluno do BD
                $stmt = $pdo->prepare("delete from alunos where ra = :ra");
                $stmt->bindParam(":ra", $ra);
                $stmt->execute();

                //Removendo o arquivo da pasta local
                if($arquivoFoto != null){
                    unlink($arquivoFoto);
                }

                echo "<h3>Aluno excluído com sucesso!</h3>";
            }
            catch(PDOException $e){
                echo "Erro:" . $e->getMessage();
            }
        }
        $pdo = null;
    ?>
</body>
</html>