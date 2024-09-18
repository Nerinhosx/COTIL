<!DOCTYPE html>
<html lang="pt-br">
<head>

    <link rel="stylesheet" type="text/css" href="Style_fundo_e_texto.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualização de Alunos</title>
</head>
<body>
    <nav>
        <a href="index.html">HOME</a> |
        <a href="consultaPorLink.php">Consulta</a>
    </nav>
    <hr>

    <h1>Edição de Alunos</h1>
    <?php
        if($_SERVER["REQUEST_METHOD"] === "POST"){
            $ra = $_POST["ra"];
            $nome = $_POST["nome"];
            $curso = $_POST["curso"];

            try{
                include("conexaoBD.php");
                
                $stmt = $pdo->prepare("update alunos set nome = :nome, curso = :curso where ra = :ra");
                $stmt->bindParam(":nome", $nome);
                $stmt->bindParam(":curso", $curso);
                $stmt->bindParam(":ra", $ra);
                $stmt->execute();

                echo "Os dados do aluno de RA $ra foram alterados!";
            }catch(PDOException $e){
                echo "Error: " . $e->getMessage();
            }
            $pdo = null;
        }
    ?>
</body>
</html>