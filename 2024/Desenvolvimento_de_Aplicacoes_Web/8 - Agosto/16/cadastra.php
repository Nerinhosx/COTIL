<!DOCTYPE html>
<html lang="pt-br">
<head>

    <link rel="stylesheet" type="text/css" href="Style_fundo_e_texto.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Alunos</title>

    <style>
        #sucess{
            color: rgb(139, 232, 44);
            font-weight: bold;
        }

        #error{
            color: red;
            font-weight: bold;
        }

        #warning{
            color: yellow;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <a href="index.html">HOME</a>
    <hr>

    <h2>Cadastro de Alunos</h2>
    <form method="POST">
        RA:<br>
        <input type="text" size="30" name="ra"><br><br>

        Nome:<br>
        <input type="text" size="30" name="nome"><br><br>
        
        Curso:<br>
        <select name="curso">
            <option></option>
            <option value="Edificações">Edificações</option>
            <option value="Enfermagem">Enfermagem</option>
            <option value="GeoCart">Geodésia e Cartografia</option>
            <option value="Informática">Informática</option>
            <option value="Mecânica">Mecânica</option>
            <option value="Qualidade">Qualidade</option>
        </select><br><br>

        <input type="submit" value="Cadastrar">
        <hr>
    </form>
</body>
</html>
<?php
    if($_SERVER["REQUEST_METHOD"] === "POST"){
        $ra = $_POST["ra"];
        trim($ra);
        $nome = $_POST["nome"];
        trim($nome);
        $curso = $_POST["curso"];
        trim($curso);

        if($ra!="" && $nome!=""){
            try{
                include("conexaoBD.php");

                $stmt = $pdo->prepare("select * from alunos where ra = :ra");
                $stmt->bindParam(":ra", $ra);
                $stmt->execute();

                $rows = $stmt->rowCount();
                if($rows<=0){
                    $stmt = $pdo->prepare("insert into alunos (ra, nome, curso) values (:ra, :nome, :curso)");
                    $stmt->bindParam(":ra", $ra);
                    $stmt->bindParam(":nome", $nome);
                    $stmt->bindParam(":curso", $curso);
                    $stmt->execute();
                    echo "<span id='sucess'>Aluno cadastrado com sucesso!</span>";
                }
                else{
                    echo "<span id='error'>Cadastro de aluno falho: RA já cadastrado.</span>";
                }
            }
            catch(PDOException $e){
                echo "Erro:" . $e->getMessage();
            }
            $pdo = null;
        }
        else{
            echo "<span id='warning'>Cadastro de aluno falho: RA e nome são obrigatórios.</span>";
        }
    }
?>