<?php
    if(!isset($_GET["raAl"])){
        echo "Selecione o aluno a ser editado";
    }
    else{
        $ra = $_GET["raAl"];

        try{
            include("conexaoBD.php");
            $stmt = $pdo->prepare("select * from alunos where ra = :ra");
            $stmt->bindParam(":ra", $ra);
            $stmt->execute();

            $edificacoes = "";
            $enfermagem = "";
            $geodesia = "";
            $informatica = "";
            $mecanica = "";
            $qualidade = "";

            while($row = $stmt->fetch()){
                $nome = $row['nome'];
                $curso = $row['curso'];
                $foto = $row['arquivoFoto'];

                //Setando o curso correto para a exibição no Select
                if($curso == "Edificações"){
                    $edificacoes = 'selected';
                }
                else if($curso == "Enfermagem"){
                    $enfermagem = 'selected';
                }
                else if($curso == "GeoCart"){
                    $geodesia = 'selected';
                }
                else if($curso == "Informática"){
                    $informatica = 'selected';
                }
                else if ($curso == "Mecânica"){
                    $mecanica = 'selected';
                }
                else if ($curso == "Qualidade"){
                    $qualidade = 'selected';
                }
            }
        }
        catch(PDOException $e){
            echo "Erro: " . $e->getMessage();
        }
        $pdo = null;
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>

    <link rel="stylesheet" type="text/css" href="Style_fundo_e_texto.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edição de Alunos</title>
</head>
<body>
    <nav>
        <a href="index.html">HOME</a> |
        <a href="consultaPorLink.php">Consulta</a>
    </nav>
    <hr>

    <h1>Edição de Alunos</h1>
    <form method="POST" action="atualizacao.php" enctype="multipart/form-data">
        RA:<br>
        <input readonly type="text" size="30" name="ra" value="<?=$ra?>"><br><br>

        Nome:<br>
        <input type="text" size="30" name="nome" value="<?=$nome?>"><br><br>
        
        Curso:<br>
        <select name="curso">
            <option></option>
            <option value="Edificações" <?=$edificacoes?>>Edificações</option>
            <option value="Enfermagem" <?=$enfermagem?>>Enfermagem</option>
            <option value="GeoCart" <?=$geodesia?>>Geodésia e Cartografia</option>
            <option value="Informática" <?=$informatica?>>Informática</option>
            <option value="Mecânica" <?=$mecanica?>>Mecânica</option>
            <option value="Qualidade" <?=$qualidade?>>Qualidade</option>
        </select><br><br>

        Foto:<br>
        <img src="<?= $foto?>" width="120px"><br><br>

        Nova foto:<br>
        <input type="file" name="foto" accept="image/*"><br><br>

        <input type="submit" value="Atualizar">
        <hr>
    </form>
</body>
</html>